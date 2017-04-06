class Slot
  attr_reader :contents

  def initialize
    @contents = nil
  end

  def fill(piece)
    @contents = piece
  end

  def empty?
    !@contents
  end
end
