FROM python

WORKDIR /flask_blog

COPY . .

RUN pip3 install flask flask_login flask_wtf flask_bcrypt flask_sqlalchemy Pillow email_validator && \
    apt-get purge -y curl wget python2.7 && apt-get clean && \
    useradd -m blog && \
    chown -R blog: /flask_blog

USER blog

EXPOSE 5000

CMD [ "python3", "run.py" ]
