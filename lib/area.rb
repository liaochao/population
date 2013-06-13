class Area

  attr_accessor :zipcode, :estimated_population, :city, :state

  def initialize (h)
    @zipcode = h[:zipcode].to_i || 0
    @estimated_population = h[:estimated_population].to_i || 0
    @city = h[:city] || "n/a"
    @state = h[:state] || "n/a"
  end

  def to_s
    "#{city}, #{state} #{zipcode} has #{estimated_population} people."
  end
end