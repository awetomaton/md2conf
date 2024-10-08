ARG PYTHON_VERSION=3.9
FROM python:${PYTHON_VERSION}-alpine
RUN PIP_DISABLE_PIP_VERSION_CHECK=1 python3 -m pip install --upgrade pip
COPY dist/*.whl dist/
RUN python3 -m pip install `ls -1 dist/*.whl`
COPY sample/ sample/
COPY tests/*.py tests/
COPY tests/source/*.md tests/source/
COPY tests/target/*.xml tests/target/
