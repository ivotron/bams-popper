FROM williamyeh/ansible:debian7-onbuild

ENV INVENTORY machines
RUN ansible-playbook-wrapper -b -u issdm
