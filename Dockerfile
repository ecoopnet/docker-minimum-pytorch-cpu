FROM python:3.12.4-bookworm
WORKDIR /code
# COPY . .
RUN pip3 install --upgrade pip
RUN pip3 install torch==2.3.1 torchvision==0.18.1 --index-url https://download.pytorch.org/whl/cpu
RUN pip3 install scikit-learn numpy pandas

