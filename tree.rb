require 'pry'

class RootNode

  attr_accessor :parent, :left, :right

  def initialize()
    @parent = nil
    @left = nil
    @right = nil
  end

  def is_root?
    if @parent == nil
      return true
    else
      return false
    end
  end

end

class ChildNode < RootNode

  def initialize(parent)
    parent = self
    @parent = parent
    @left = nil
    @right = nil
  end

end

binding.pry
