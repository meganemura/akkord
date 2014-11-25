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

    def name
      case note_number % 12
      when  0 then :C
      when  1 then :"C#"
      when  2 then :D
      when  3 then :"D#"
      when  4 then :E
      when  5 then :F
      when  6 then :"F#"
      when  7 then :G
      when  8 then :"G#"
      when  9 then :A
      when 10 then :"A#"
      when 11 then :B
      end
    end
  end
end
