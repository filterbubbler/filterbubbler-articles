#!/bin/bash
libreoffice --convert-to "html:XHTML Writer File:UTF8" webdev-1.odt  
ssh clients.brainfood.com <<EOF
cd /job/filterbubbler.org/www
wp post list
EOF
