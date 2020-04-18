class SimpleCheck < Command
  
  def initialize(payload)
    @payload = payload
  end

  def execute
    puts "---Charecter Limit is fine---"
  end

end
