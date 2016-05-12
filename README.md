# BAMS

## Build the paper

To generate a PDF, clone this repo and then:

```
cd bams-popper/paper
./build
```

## Experiments

To re-run an experiment, clone this repo and then

 1. `cd` into an experiment (e.g. 
    [this](experiments/performance_reproducibility)).

 2. Edit the `machines` file to add hosts where the experiment will 
    run.

 3. Execute `./run.sh`

### What an experiment does

To see what an experiment does, take a look at one of the playbooks, 
e.g. [this](experiments/numeric_reproducibility/playbook.yml)

## Requirements:

  * ansible 2.0+ on localhost
  * docker 1.7+ on remote machines
  * docker 1.7+ on localhost for generating the PDF
