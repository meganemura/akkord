describe Akkord::Sound do
  describe '#hertz' do
    it 'returns 440.0 when note_number == 69' do
      expect(Akkord::Sound.new(69).hertz).to eq(440.0)
    end

    it 'returns 220.0 when note_number == 57' do
      expect(Akkord::Sound.new(57).hertz).to eq(220.0)
    end
  end

  describe '#name' do
    it 'returns :C when note_number == 0' do
      expect(Akkord::Sound.new(0).name).to eq(:C)
    end

    it 'returns :"C#" when note_number == 1' do
      expect(Akkord::Sound.new(1).name).to eq(:"C#")
    end
  end

  describe '#-, #interval' do
    it 'returns 1 when the other has same note_number to self' do
      expect(Akkord::Sound.new(0) - Akkord::Sound.new(0)).to eq(1)
    end

    it 'returns 2 when the other has one more than self note_number' do
      expect(Akkord::Sound.new(1) - Akkord::Sound.new(0)).to eq(2)
    end

    it 'returns -1 when the other has one less than self note_number' do
      expect(Akkord::Sound.new(0) - Akkord::Sound.new(1)).to eq(-2)
    end
  end
end
