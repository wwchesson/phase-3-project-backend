# Will's Phase 3 Project

## Summary
This is a mock application for managers and counselors of an imagined community for the unhoused that I built as my Phase 3 project for the Flatiron School's Software Engineering Program. It uses Ruby to write ActiveRecord and Sinatra code to build an API and the corresponding routes. The frontend is a React App whose various features allows users to perform full CRUD on residents of the community as well as create and read the activities in which they are involved.

The initial version of this application specifies a one-to-many relationship of resident-to-activities but could be expanded to include many-to-many relationships of counselor-to-residents or facility-to-activities. 

### Requirements
Ruby 2.7.4
React 18.1

### How to use
Fork & clone the github repository
For backend, run:
  bundle exec rake db:migrate
  bundle exec rake server
For frontend, run:
  npm install
  npm start

