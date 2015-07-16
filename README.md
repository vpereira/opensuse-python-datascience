# opensuse-python-datascience

openSUSE 13.2 container with all python tools for data science.

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
