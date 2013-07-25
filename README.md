resque-standalone-sample
========================

This is a sample project that demonstrate how to use `Resque` outside of a `Rails` or `Rack` application (i.e. standalone).

Installation
------------

First install and run the `bundle` command to install dependencies (you may need `sudo`, depending on your setup):

    ~$ [sudo] gem install bundler
    ~$ bundle

Then check if `Resque`'s tasks are correctly loaded (you may need to prefix it with `bundle exec`, depending on your setup):

    ~$ [bundle exec] rake -T

You should see at least the `resque:work` task.

Usage
-----

### Create a Sample Job

To enqueue a sample job run:

    ~$ ruby sample_enqueue.rb

### Run Sample Worker

To run the worker and process queued jobs, execute (you may need to prefix it with `bundle exec`, depending on your setup):

    ~$ [bundle exec] rake resque:work QUEUE=* TERM_CHILD=1 VVERBOSE=1

You should see the processing log (along with many other log lines):

    Multiplier: multiplying 2 times 3 is: 6
