module PolishIds
  class IdVerificator
    attr_accessor :number, :alphabet_hash, :multipliers, :letters, :numbers, :number_array, :sum, :control_number
    
    def initialize(number)
      @number = number
      @alphabet_hash = {"A":10, "B":11, "C":12, "D":13, "E":14, "F":15, "G":16, "H":17, "I":18, "J":19, "K":20, "L":21, "M":22, "N":23, "O":24, "P":25, "Q":26, "R":27, "S":28, "T":29, "U":30, "V":31, "W":32, "X":33, "Y":34, "Z":35, "0":0, "1":1, "2":2, "3":3, "4":4, "5":5, "6":6, "7":7, "8":8, "9":9}
      @multipliers = [7, 3, 1, 7, 3, 1, 7, 3]
      @number_array = @number.gsub(/\s+/, "").upcase.split(//)
      @control_number = @number_array.delete_at(3).to_i
    end

    def verify
      multiply_number
      check_validity_number
    end

    def multiply_number
      @sum = 0
      number_array.each_with_index do |letter, index|
        @sum = sum + alphabet_hash[letter.to_sym] * multipliers[index]
        puts sum
      end
    end

    def check_validity_number
      sum % 10 == control_number
    end
  end
end

puts PolishIds::IdVerificator.new("awp690842").verify