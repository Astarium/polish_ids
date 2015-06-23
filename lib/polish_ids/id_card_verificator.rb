module PolishIds
  class IDCardVerificator < Verificator
    def initialize(number)
      super
    end

    def extract_control_number
      @control_number = number_array.delete_at(3).to_i
    end

    def check_letters
      number_array[0..2].each do |letter|
        unless letter?(letter)
          raise InvalidNumber.new
        end
      end
    end

    def check_numbers
      number_array[3..8].each do |number|
        unless integer?(number)
          raise InvalidNumber.new
        end
      end
    end

  end
end
