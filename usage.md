Idomaar Usage
===================

## Installation
* Install Vagrant from [https://www.vagrantup.com/](https://www.vagrantup.com/)
* Use git to clone the idomaar repository (e.g. git clone https://github.com/crowdrec/idomaar)
* Run `idomaar.sh -v` . This will instruct Vagrant to bring up the virtual machine included in idomaar, thus building it on your host.

## Demo
Run `idomaar-demo.sh` to launch a demo computing environment, launch the orchestrator, and feed some sample data to the computing environment

## Orchestrator usage
* Bring up your computing environment.
* Run `idomaar.sh --help` for parameters.

## Accelerated startup
If you launch the orchestrator several times, it's much faster to `vagrant ssh` into the datastreammanager VM and run orchestrator_cli.py directly.

## Note for Windows users
When checking out the Idomaar git repository, please make sure that your line-endings are in Unix format. The recommended way of doing this is to set Git's autocrlf to input (by running `git config --global core.autocrlf input`).
