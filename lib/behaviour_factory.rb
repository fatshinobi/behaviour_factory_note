require './lib/behaviour1'
require './lib/behaviour2'

class BehaviourFactory
  def self.build(behaviour, options)
    klass = behaviour.capitalize

    if Module.const_defined?(klass)
      Module.const_get(klass).new(options: options)
    else
      NullBehaviour.new(options: options)
    end
  end
end

class NullBehaviour
  def initialize(options); end

  def perform
    #no op
  end
end
