class Task
  attr_reader :name

  def initialize(name)
    # STATE
    @name = name
    @completed = false
  end

  # BEHAVIOR
  def mark_as_complete!
    @completed = true
  end

  def completed?
    return @completed
  end
end
