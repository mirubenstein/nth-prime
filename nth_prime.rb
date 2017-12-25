class Prime
  def self.nth(number)
    raise ArgumentError, 'There is no zeroith prime.' if number.zero?
    max_to_check = number >= 6 ? (number * Math.log(number) + number * Math.log(Math.log(number))) : 13
    primes = [nil, nil, *2..max_to_check]
    (2..Math.sqrt(max_to_check)).each do |num|
      (num**2..max_to_check).step(num) { |n| primes[n] = nil } if primes[num]
    end
    primes.compact[number - 1]
  end
end

module BookKeeping
  VERSION = 1
end
