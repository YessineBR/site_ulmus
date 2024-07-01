**Setting Up a Website with Django, NGINX, and Gunicorn**

This guide outlines the steps to deploy a Django website using NGINX as a reverse proxy and Gunicorn as a WSGI server.

**Prerequisites:**

-   A server running a Linux distribution (e.g., Ubuntu, Debian)
-   SSH access to your server

**Steps:**

1. **Create a New User and Update System**

    ```bash
    sudo adduser <username>
    sudo usermod -aG sudo <username>
    su <username>
    sudo apt update
    ```

2. **Install Dependencies**

    ```bash
    sudo apt install python3-venv python3-dev nginx curl (optional)
    ```

3. **Create a Virtual Environment**

    ```bash
    python3 -m venv <venv_name>
    source <venv_name>/bin/activate
    ```

4. **Install Project Dependencies and Configure Environment (if applicable)**

    ```bash
    pip install -r requirements.txt  # If you have a requirements.txt file
    ```

    Create a YAML file (or other suitable format) to store sensitive environment variables like `SECRET_KEY`, database credentials, and file paths:

    ```yaml
    SECRET_KEY: your_secret_key
    DB_NAME: your_database_name
    DB_USER: your_database_user
    DB_PASSWORD: your_database_password
    DB_HOST: your_database_host
    STATIC_ROOT: /path/to/static/files
    STATIC_URL: /static/
    MEDIA_ROOT: /path/to/media/files
    MEDIA_URL: /media/
    # ...other relevant settings
    ```

5. **Collect Static Files**

    ```bash
    python3 manage.py collectstatic
    ```

6. **Modify Settings**

    - Update `ALLOWED_HOSTS` in `settings.py` to include your server's IP address:

        ```python
        ALLOWED_HOSTS = ['your_server_ip_address']
        ```

7. **Install Gunicorn**

    ```bash
    pip install gunicorn
    ```

8. **Configure Gunicorn Service Files (Socket and Service)**

    **A. Create the Socket File:**

    ```bash
    sudo nano /etc/systemd/system/gunicorn.socket
    ```

    **Content:**

    ```
    [Unit]
    Description=Your Website Name
    [Socket]
    ListenStream=/run/gunicorn.sock
    [Install]
    WantedBy=sockets.target
    ```

    **Save (Ctrl+O, Y).**

    **B. Create the Service File:**

    ```bash
    sudo nano /etc/systemd/system/gunicorn.service
    ```

    **Content:**

    ```
    [Unit]
    Description=Gunicorn Daemon
    Requires=gunicorn.socket
    After=network.target
    [Service]
    User=<username>
    Group=www-data  # Or another appropriate group
    WorkingDirectory=/path/to/your/project  # Where manage.py is located
    ExecStart=/<path_to_venv>/bin/gunicorn \
        --access-logfile - \
        --workers [(CoreCount * 2) + 1] \
        --bind unix:/run/gunicorn.sock \
        <your_project_folder>/wsgi.py:application
    [Install]
    WantedBy=multi-user.target
    ```

    **Replace placeholders with your actual values. Save (Ctrl+O, Y).**

9. **Start and Enable Gunicorn Socket Service**

    ```bash
    sudo systemctl start gunicorn.socket
    sudo systemctl enable gunicorn.socket
    sudo systemctl status gunicorn.service  # Verify the socket is running
    ```

10. **Test Gunicorn Connection (Optional)**

```bash
curl --unix-socket /run/gunicorn.sock localhost
```

This should return some HTML (if using Django for rendering) or a JSON response (if configured).

11. **Configure NGINX**

    **A. Create a Server Configuration File:**

```bash
sudo nano /etc/nginx/sites-available/<your_website_name>
```

**Content:**

```
server {
    listen 80;
    server_name your_server_ip_address;  # Replace with your server's IP address or domain name

    # Serve static files directly
    location /static/ {
        root <STATIC_ROOT>;  # Replace with your STATIC_ROOT path
    }

    # Serve media files directly
    location /media/ {
        root <MEDIA_ROOT>;  # Replace with your MEDIA_ROOT path
    }

    # Proxy requests to Gunicorn
    location / {
        include proxy_params;
        proxy_pass http://unix:/run/gunicorn.sock;
    }
}
```

**Replace placeholders with your actual values. Save (Ctrl+O, Y).**

**B. Enable the Configuration**

```bash
sudo ln -s /etc/nginx/sites-available/<your_website_name> /etc/nginx/sites-enabled/<your_website_name>
```

**C. Test NGINX Configuration**

```bash
sudo systemctl restart nginx
sudo nginx -t
```

Ensure the test passes.

12. **Finalize Configuration**

-   **Set `DEBUG` to `False` in `settings.py`.**
-   **Restart NGINX:**

    ```bash
    sudo systemctl restart nginx
    ```

-   **Permissions for Static and Media Files (if necessary):**

    If your site isn't serving static or media files, adjust ownership or permissions:

    **A. Change Ownership Recursively:**

    ```bash
    sudo chown -R <specific_user_or_group>:<specific_user_or_group> <STATIC_ROOT>
    sudo chown -R <specific_user_or_group>:<specific_user_or_group> <MEDIA_ROOT>
    ```

    **B. Change Permissions Recursively:**

    ```bash
    sudo chmod -R 755 <STATIC_ROOT>
    sudo chmod -R 755 <MEDIA_ROOT>
    ```

    **Replace placeholders and restart NGINX:**

    ```bash
    sudo systemctl restart nginx
    ```

13. **HTTPS (Optional)**

-   Install SSL certificates (e.g., using Certbot).
-   Modify your NGINX configuration to use HTTPS.
-   Update `CSRF_COOKIE_SECURE` and `SESSION_COOKIE_SECURE` in `settings.py` to `True`.

**Additional Notes:**

-   Adjust file paths, user/group names, and server addresses according to your specific setup.
-   Consider using a process manager like Supervisor for more advanced management of Gunicorn.
-   Secure your website further by following best practices for web server configuration and user permissions.

I hope this comprehensive guide assists you in deploying your Django website!
