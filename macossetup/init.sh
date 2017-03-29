#!/bin/bash

pip install ansible && \
	xcode-select --install && \
	ansible-galaxy install -r requirements.yml && \
	ansible-playbook main.yml -i inventory -K
