FROM opensuse:13.2
# the next two commands are just necessary, because of a bug in the opensuse 13:2 image (3/07/2015)
RUN zypper rr repo-oss
RUN zypper ar http://download.opensuse.org/distribution/13.2/repo/oss/ repo-oss
# installing the datascience stack - add new packages if necessary
RUN zypper -n ref && zypper -n up && zypper -n in  python python-devel python-pip ipython python-matplotlib python-numpy python-pandas python-Jinja2

VOLUME /notebooks
WORKDIR /notebooks

ADD notebook.sh /notebook.sh
RUN chmod a+x /notebook.sh

EXPOSE 8888

CMD ["/notebook.sh"]
