module Akkord
  class Sound
    attr_reader :note_number  # MIDI note number

    def initialize(note_number)
      if !note_number.is_a?(Integer) || !(0...0x80).include?(note_number)
        raise ArgumentError
      end
      @note_number = note_number
    end

    def hertz
      440 * 2 ** ((@note_number - 69) / 12.0)
    end
  end
end
