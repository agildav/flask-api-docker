FROM python:3.8.1-alpine3.10
LABEL mantainer="Alberto Gil <agildav@gmail.com>"
LABEL version="1.0"

ARG FLASK_ROOT="/flask"
ARG REQUIREMENTS="requirements.txt"

WORKDIR ${FLASK_ROOT}

COPY ${REQUIREMENTS} ./
RUN pip install --no-cache-dir -r ${REQUIREMENTS}

COPY ./ ./

CMD [ "python", "./app/main.py" ]
