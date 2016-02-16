# Travis Deduplicator
----

Inspired by [grosser/travis_dedup](https://github.com/grosser/travis_dedup). Rails 5 Api that stop all builds on the same PR when a new job starts.

## Setup

`travis login --pro`

`travis token --pro`

Click on [![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/hadinishad/travis-deduplicator) and enter the access token there.
 
 Setup a github webhook `https://YOURAPP.herokuapp.com/repos/deduplicate?repo=ORGANIZATION/REPO` and set it to send push and pull request events.
 
## TODO

- Currently works with only travis-ci.com. Support for travis-ci.org
