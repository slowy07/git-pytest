FROM python:3.8-alpine

LABEL "com.github.actions.name"="Github action pytest"
LABEL "com.github.actions.description"="Run pytest commands"
LABEL "com.github.actiions.icon"="upload-cloud"
LABEL "com.github.actions.color"="yellow"

RUN apk add --no-cache bash
RUN pip install --upgrade pip
RUN pip install pytest
RUN python --version ; pip --version ; pytest -- versiona

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
