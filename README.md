# README

The Gossip Project

# Versions
* Ruby version 2.5.1
* Rails version 5.2.4

# Gem
* table_print: Use "tp" to visualize the information as tables
* faker: To create a fake database

This app helps manage a DB between doctors and patients.

# Before using 
Please run "rails db:seed" to refresh DB.

# DB content
* 10 users
* 20 gossips
* 10 tags
* 10 private messages (PMs)
* 10 cities

# Relation between tables
* User - Gossips :         1 - n
* Gossips - Tags :         n - n (creation of GossTag as join table)
* Users - City :           n - 1
* Users(sender) - PMs :    1 - n
* Users(receiver) - PMs :  1 - n  

# Run tests
* $ tp User.all
* $ tp Gossip.all
* $ tp PrivateMessage.all

* $ tp a = Gossip.find(7)
* $ tp a.tags
* $ tp a.user
