Online Kitchen
==============

Setup
-----

 1. copy and setup config files:

      cp config/database.yml.example config/database.yml
      cp config/online_kitchen.yml.example config/online_kitchen.yml
      cp config/templates.yml.example config/templates.yml

 2. install all dependant libraries and init db:

      bundle install
      rake db:setup

Run background jobs
-------------------

     sidekiq -q lab_manager -r ./bin/Asidekiq_jobs.rb

Development
-----------

Example of curl with proper params:

     curl -i -X PUT curl -i -H 'UserName: franta.lopata' \
       -H 'AUTHENTICATIONTOKEN: secret' \
       -H "Accept: application/json" \
       -H "Content-Type: application/json" \
       -d '{ "nic": "neco" }' \
       http://localhost:4567/api/v1/configurations/123

FAQ
---
1. If you have problem with downloading vagrant box

     vagrant box add --insecure 'ubuntu/trusty64' https://atlas.hashicorp.com/ubuntu/boxes/trusty64/versions/14.04/providers/virtualbox.box

