FROM python

WORKDIR /myapp

# COPY ./myapp1.py .

# CMD ["python", "myapp1.py"]

# for mount bind server
# COPY ./myapp.py .
# COPY ./servers.txt .

# CMD ["python", "myapp.py"]


# for API DEMO
# COPY ./api_demo.py .

# RUN pip install requests

# CMD ["python", "api_demo.py"]

# communication between Container and Local DataBsse

# COPY ./sql_demo.py .

# RUN pip install pymysql

# CMD ["python","sql_demo.py"]


# # communication between local Container and mysql comnatiner 

COPY ./sql_demo.py .

RUN pip install pymysql
RUN pip install cryptography

CMD ["python","sql_demo.py"]



