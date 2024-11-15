#!/bin/bash
ip addr | grep 'inet ' | grep '10.0.17.36' | awk '{print $2}' | cut -d'/' -f1
