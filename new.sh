#!/bin/sh


mongodump --db=test --collection=users --out=/var/backup
