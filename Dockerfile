FROM python:3.11

#install py2wasm and deps
WORKDIR /py2wasm
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
#download wasi sdk
RUN py2wasm -h

#install python project deps
COPY project-requirements.txt project-requirements.txt
RUN pip install --no-cache-dir -r project-requirements.txt

CMD ["bash"]