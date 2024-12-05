# Blocks Layout plugin
Redmine plugin to manage presence of boxes on Home & Project Overview

Change Log
---
= v1.0.0 * Updated for Remine 5.1


Code contributors
---
* @kabhinav25 (Kumar Abhinav)
* @Saylrman64 (Manuel Palachuk)


Compatibility
---
Tested only on Redmine 5.1.3.stable.23143.1


Getting the plugin
---
This is a proprietary plugin that is not licensed for distribution.


Installation and Setup
---
Installing the redmine_blocks_layout plugin for Redmine

1) cd redmine/plugins
2) gh repo clone Saylrman64/redmine_blocks_layout
3) cd ..
4) bundle config set --local without 'development test'
5) bundle install
6) bundle exec rake redmine:plugins:migrate RAILS_ENV=production
7) restart apache2