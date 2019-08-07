FROM murvudd/ubuntu-python:latest
# Install zip
RUN apt update && apt upgrade -y && apt install -y zip
# Install AWS CLI
RUN pip3 install awscli --upgrade

# Print zip version
RUN bash -c 'zip --version'

# Print python version
RUN bash -c 'python3 -V'

# Print AWS CLI version
RUN bash -c 'aws --version'

# CMD ["zip"]