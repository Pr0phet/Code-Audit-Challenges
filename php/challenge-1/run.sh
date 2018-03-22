#!/bin/bash

service apache2 start

source /root/.phpbrew/bashrc
phpbrew use 5.4.30

/bin/bash