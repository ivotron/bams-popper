FROM williamyeh/ansible:debian7-onbuild

ADD ../compare_results /usr/local/bin/
ENV INVENTORY machines
RUN ansible-playbook-wrapper
