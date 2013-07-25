require 'rubygems'
require 'bundler/setup'
require 'resque'

require './multiplier'

Resque.enqueue(Multiplier, 2, 3)

