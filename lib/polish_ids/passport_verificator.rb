module PolishIds
  class PassportVerificator < Verificator

    def extract_control_number
      @control_number = number_array.delete_at(2).to_i
    end

    def check_letters
      number_array[0..1].each do |letter|
        unless letter?(letter)
          raise InvalidNumber.new
        end
      end
    end

    def check_numbers
      number_array[2..8].each do |number|
        unless integer?(number)
          raise InvalidNumber.new
        end
      end
    end

  end
end

