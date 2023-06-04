#!/usr/bin/env ruby

require './lib/engine'

engine = Engine.new()

engine.start()
engine.start(behaviour: :behaviour1)
engine.start(behaviour: :behaviour2)
engine.start(behaviour: :unknown_behaviour)
