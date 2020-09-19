FROM  python:3.7.4-alpine3.10

RUN pip install plantuml==0.3.0

ENTRYPOINT for f in **/*.plantuml; do echo $f; python -m plantuml $f; done
