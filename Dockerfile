FROM python:3.10.0-alpine

WORKDIR /bittu

COPY ./requirements.txt ./requirements.txt

RUN pip install -r requirements.txt

COPY . /bittu

EXPOSE 8000

CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]