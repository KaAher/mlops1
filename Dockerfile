FROM python :3.11.9 as builder
WORKDIR /frontpage

COPY req_dev.txt .

RUN pip install -r req_dev.txt

COPY . .

RUN pip install

EXPOSE 8501
CMD [ "streamlit","run","webapp/frontpage", "--server.port=8501", "--server.address=0.0.0.0"]