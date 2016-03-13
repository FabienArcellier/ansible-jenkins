This playbook is an implementation of the role [geerlingguy.jenkins](https://github.com/geerlingguy/ansible-role-jenkins).

## Usage

First, install the ansible dependencies :

    make install_requirements

To install the playbook in local, use :

    make install

## Check playbook

    make tests

If it doesn't work due to missing ``ansible`` or ``ansible-galaxy roles`` on ubuntu, use :

    apt-get install -y python-pip
    pip install -U ansible
    make install_requirements

## License

    MIT (Expat) / BSD
