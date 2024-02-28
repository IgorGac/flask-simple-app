FROM python:3.12.2-bookworm

RUN mkdir -p /srv/simple_app

COPY ./app.py /srv/simple_app/app.py
COPY ./requirements.txt /srv/simple_app/requirements.txt
RUN pip3 install -r /srv/simple_app/requirements.txt

CMD ["python3", "/srv/simple_app/app.py"]