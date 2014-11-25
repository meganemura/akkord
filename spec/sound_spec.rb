describe Akkord::Sound do
  describe '#hertz' do
    it 'returns 440.0 when note_number == 69' do
      expect(Akkord::Sound.new(69).hertz).to eq(440.0)
    end

    it 'returns 220.0 when note_number == 57' do
      expect(Akkord::Sound.new(57).hertz).to eq(220.0)
    end
  end
end
