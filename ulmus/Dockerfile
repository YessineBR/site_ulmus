FROM python:3-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV SECRET_KEY "django-insecure-rq&-hsne!!t#ice*&9g9$5b*#@dyv4r+w!i@7t@4g96901!$t6"
ENV DB_NAME "ulmus"
ENV DB_USER "admin"
ENV DB_PASSWORD "root"
ENV DB_HOST "localhost"
ENV DB_PORT "5433"

WORKDIR /ulmus

COPY requirements.txt /ulmus/

RUN pip install --upgrade pip \ pip install -r requirements.txt

COPY . /ulmus/

RUN python manage.py collectstatic --noinput

EXPOSE 8000

CMD ["py", "manage.py", "runserver", "0.0.0.0:8000"]