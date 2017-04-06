require_relative 'slot'

class Column
  attr_reader :slots

  def initialize
    @slots = []
    6.times do
      @slots << Slot.new
    end
  end

  def full?
    @slots.all? { |slot| !slot.empty? }
  end

  def place_piece(piece)
    @slots.each do |slot|
      if slot.empty?
        slot.fill(piece)
        break
      end
    end
  end

end

# great error class thought: throw error if column is full and you place a
# piece in it
