# Travis Deduplicator
----

Inspired by [grosser/travis_dedup](https://github.com/grosser/travis_dedup). Rails 5 Api that stop all builds on the same PR when a new job starts.

## Setup

`git clone https://github.com/hadinishad/travis-deduplicator.git`

`travis login --pro`

`travis token --pro`

 Copy the generated travis token to application.yml (Don't worry, this is gitignored)

 Push your app to heroku and run `$ figaro heroku:set -e production`
 
 Setup a github webhook `https://peaceful-beyond-54048.herokuapp.com/repos/deduplicate?repo=ORGANIZATION/REPO` and set it     push and pull request events.
 
## TODO

- Currently works with only travis-ci.com. Support for travis-ci.org
