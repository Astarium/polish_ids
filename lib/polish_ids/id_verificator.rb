module PolishIds
  class IdVerificator
    attr_accessor :number, :alphabet_hash, :multipliers, :letters, :numbers, :number_array
    
    def initialize(number)
      @number = number
      @alphabet_hash = {"A":10, "B":11, "C":12, "D":13, "E":14, "F":15, "G":16, "H":17, "I":18, "J":19, "K":20, "L":21, "M":22, "N":23, "O":24, "P":25, "Q":26, "R":27, "S":28, "T":29, "U":30, "V":31, "W":32, "X":33, "Y":34, "Z":35}
      @multipliers = [7, 3, 1, 7, 3, 1, 7, 3]
      @number_array = @number.gsub(/\s+/, "").upcase.split(//)
    end

    def verify
      split_number
      multiply_letters
      mutliply_number
      check_validity_number
    end

    def split_number
    end

    def multiply_letters
    end

    def mutliply_number
    end

    def check_validity_number
    end
  end
end