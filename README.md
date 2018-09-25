# README
## Project Abstract

This Repo is to create basic personal analysis app including features to record and analyse daily financial transactions and to provide features to analyse day to day activities like reading, exercise etc.. by entering relative marks ranging from 0-10 to the activities based on the self evaluation at the end of the day(**Here date is unique so you can enter only one entry per day**). The activities coded here is just for example. You can change the attributes based on your requirements(You should change the schema according to your requirements and reset the project)

### Requirements

Install ruby on rails(you can lookup the gemfile for dependent gems and rails version accordingly you can install)
If you prefer faster insatllation you can refer http://railsinstaller.org to get suitable version.

### Configuration

After installation of ruby on rails go to the root folder(BANK folder) and run "rails s" command to run the server
you can access the app in http://localhost:3000

some of the general solutions you can try if any problem occurs :
  - try "bundle exec rake db:reset" and again start server using "rails s" command
  - if the above solution did not work. You can delete development.sqlite3 and schema.rb file and
    execute "bundle exec rake:db"
    then execute "rake db:seed" => this seed command helps to prepopulate some values to the database
    and run "rails s" to start the command
    
 Note : I have used "xyz@abc.com" as username and "abc123" as creds for initial user you can change that in /db/seeds.rb file

I have used standard gems like devise gem for user authentication, chartkick for graphs and bootstrap gems. This project is a good start for learning ruby on rails as it is not too complex as well as not a hello world kinda project.
