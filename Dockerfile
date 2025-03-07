FROM python:3.7.3-stretch

# Working Directory
WORKDIR /app
# Copy source code to working directory
COPY . app.py /app/
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt
    
EXPOSE 8000
EXPOSE 80

CMD ["python","app.py"]