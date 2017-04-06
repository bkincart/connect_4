require_relative '../spec_helper'

RSpec.describe Column do
  let(:column) { Column.new }

  describe '.new' do
    it 'creates a new Column' do
      expect(column).to be_a(Column)
    end
  end

  describe '.slots' do
    it 'has a reader for slots, and slots is an array' do
      expect(column.slots).to be_a(Array)
    end

    it 'starts off with 6 slots' do
      expect(column.slots.length).to eq 6
    end
  end


  describe '.place_piece' do
    it 'finds the lowest open slot and fills it' do
      column.place_piece('x')
      column.place_piece('o')

      expect(column.slots[0].empty?).to eq false
      expect(column.slots[0].contents).to eq('x')
      expect(column.slots[1].contents).to eq('o')
    end
  end

  describe '.full?' do
    it 'returns false if there are open slots' do
      expect(column.full?).to eq(false)

      column.place_piece('x')
      column.place_piece('o')

      expect(column.full?).to eq(false)
    end

    it 'returns true if there are no open slots' do
      column.place_piece('x')
      column.place_piece('o')
      column.place_piece('x')
      column.place_piece('o')
      column.place_piece('x')
      column.place_piece('o')

      expect(column.full?).to eq(true)
    end
  end
end
