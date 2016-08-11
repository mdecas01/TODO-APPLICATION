class TodoItem

  attr_reader :name

  def initialize(name)
    @name = name
    @complete = false
  end

  def to_s
    if complete?
      "#{@name}: DONE"
    else
      "#{@name}: TO COMPLETE"
    end
  end

  def complete?
    @complete
  end

  def mark_complete!
    @complete = true
  end

  def mark_imcomplete!
    @complete = false
  end
end