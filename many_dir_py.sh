#!/bin/bash

spell -no *.py > /tmp/t
spell -no */*.py >> /tmp/t
spell -no */*/*.py >> /tmp/t
spell -no */*/*/*.py >> /tmp/t
spell -no */*/*/*/*.py >> /tmp/t
spell -no */*/*/*/*/*.py >> /tmp/t
