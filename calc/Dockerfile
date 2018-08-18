# a very, very basic calculator
# build: docker build -t functions/addemup .
# example: docker run functions/addemup
# example: az acr build -t functions/addemup .
# example: docker run functions/addemup 1 2

FROM python:alpine
WORKDIR /bin
COPY ./addEmUp.sh .
ENTRYPOINT [ "/bin/sh" , "./addEmUp.sh"]
CMD ["1", "2"]