.PHONY: tests
tests:
	ansible-playbook --syntax-check -i "localhost," jenkins.yml
	ansible-playbook --list-tasks -i "localhost," jenkins.yml

.PHONY: install_requirements
install_requirements:
	ansible-galaxy install ${args} -r requirements.yml -p roles
