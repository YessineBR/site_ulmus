FROM python:3

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /ulmus

COPY requirements.txt /ulmus/

RUN pip install --upgrade pip \ && pip install -r requirements.txt

COPY . /app/

RUN py manage.py collectstatic --noinput

EXPOSE 8000

CMD ["py", "manage.py", "runserver", "0.0.0.0:8000"]