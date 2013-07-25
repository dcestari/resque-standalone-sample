class Multiplier
  @queue = :multiply_queue

  def self.perform(a, b)
    Resque.logger.info "Multiplier: multiplying #{a} times #{b} is: #{a*b}"
  end
end

