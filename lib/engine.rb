require './lib/behaviour_factory'

class Engine
  def start(behaviour: :behaviour1, options: {})
    BehaviourFactory.build(behaviour, options).perform
    before_finish
  end

  def before_finish
    p 'Almost finished'
  end
end
