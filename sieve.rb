class Sieve
  def initialize(limit)
    @limit = limit
    @range = (2..limit).to_a
  end

  def primes
    primes = @range
    @range.each do |prime|
      primes.reject! { |num| num % prime == 0 && num != prime }
    end

    primes
  end
end