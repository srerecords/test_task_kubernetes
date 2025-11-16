FROM amazonlinux:2

RUN yum -y update && \
    yum install -y python3 python3-pip && \
    pip3 install boto3

COPY s3_copy.py /
CMD ["python3", "/s3_copy.py"]
