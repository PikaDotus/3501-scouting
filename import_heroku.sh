#!/bin/bash
heroku pgbackups:capture
curl -o ~/RubyOnRails/dumps/latest.dump `heroku pgbackups:url`
pg_restore --verbose --clean --no-acl --no-owner -h localhost -U logan -d scouting_development ~/RubyOnRails/dumps/latest.dump
