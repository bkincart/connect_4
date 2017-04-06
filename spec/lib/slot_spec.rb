require_relative '../spec_helper'

RSpec.describe Slot do
  let(:slot) { Slot.new }

  describe '.new' do
    it 'creates a new Slot' do
      expect(slot).to be_a(Slot)
    end
  end

  describe '.contents' do
    it 'has a reader for the contents of the slot and defaults to nil' do
        expect(slot.contents).to eq(nil)
    end
  end

  describe '.fill' do
    it 'takes a string as an argument and changes the state of contents to that string' do
      slot.fill('x')
      expect(slot.contents).to eq('x')
    end
  end

  describe '.empty?' do
    it 'returns true when the slot is empty' do
      expect(slot.empty?).to eq true
    end

    it 'returns false if the slot has a piece in it' do
      slot.fill('x')
      expect(slot.empty?).to eq false
    end
  end
end
