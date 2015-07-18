# opensuse-python-datascience

openSUSE 13.2 docker image with all python tools for data science. It's goal is to run locally, to avoid to install stuffs in your host. If you want to expose it as a service, there are better images on dockerhub (with TLS and password support). 

## Status: Maintained

The container has the following components installed:

* matplotlib 
* numpy 
* pandas 


The current directory will be mounted as /notebooks which you can use to exchange and persist files in the container

To build the image:

    docker build -rm=true -t opensuse-python-datascience  .

To run it (two examples):

background:

    docker run -d -v $PWD:/notebooks -p 80:8888 opensuse-python-datascience

foreground:

    docker run -v $PWD:/notebooks -p 80:8888 -ti datascience-python-opensuse
