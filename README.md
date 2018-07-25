# README

Welcome on our board news. You can post links, comment the posts, comment the comments.

## Getting Started

If you want to participate and post links to any subject, picture, or whatever you like, you just can do it all here!

### Installation

In order to get the app running

Open your terminal and :

```sh
$ bundle install
```

### Tree

```
├── assets
│   ├── config
│   │   └── manifest.js
│   ├── images
│   ├── javascripts
│   │   ├── application.js
│   │   ├── cable.js
│   │   └── channels
│   └── stylesheets
│       └── application.css
├── channels
│   └── application_cable
│       ├── channel.rb
│       └── connection.rb
├── controllers
│   ├── application_controller.rb
│   └── concerns
├── helpers
│   └── application_helper.rb
├── jobs
│   └── application_job.rb
├── mailers
│   └── application_mailer.rb
├── models
│   ├── application_record.rb
│   ├── comment.rb
│   ├── concerns
│   ├── link.rb
│   └── user.rb
└── views
    └── layouts
        ├── application.html.erb
        ├── mailer.html.erb
        └── mailer.text.erb

```
In our *app* folder :
- views will be the visual part of our app
- controllers for the links between views and database
- [...]

The one that interests us is *models* we have here all our models that links our tables to ActiveRecord

```
├── migrate
│   ├── 20180725165759_create_users.rb
│   ├── 20180725165948_create_links.rb
│   ├── 20180725174039_create_comments.rb
│   ├── 20180725175617_add_parent_id_to_comments.rb
│   └── 20180725180815_create_comment_hierarchies.rb
├── schema.rb
└── seeds.rb

```
In the *migrate* folder are all our modifications, creations in our database.
The *seeds.rb* file will be used to populate our tables (we have used the Faker gem to randomly populate)
*add_parent_id_to_comment.rb* allows us to link a comment to the comment comment's and so on that creating hierarchies (and thanks to that we can ask a comment its place in the hierarchy).


### Contributing

Contributor of the project?
  - Laetitia69


# The End

Bye bye
