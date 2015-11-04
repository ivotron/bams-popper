# bams96

  1. Clone this repo.

  2. Edit the `machines` file to add hosts where the tests will run.

  3. Build the image

     ```bash
     docker build -t bams96 .
     ```

  4. Execute the test

     ```bash
     docker run --rm bams96 > wrf_time.log
     ```

     or if other ansible-specific flags need to be passed:

     ```bash
     docker run \
       -v ~/.ssh/id_rsa:/root/.ssh/id_rsa \
       -v `pwd`/output:/tmp/wrf/wrfoutput \
       bams96
         -u $USER -b --extra-vars='{"threads": [1,2,4,8,16]}' > wrf_time.log
     ```

# What it does

See the [playbook](playbook.yml)

# Requirements:

  * docker 1.7+ on local host
  * ubuntu 12.04+ on remote machines
