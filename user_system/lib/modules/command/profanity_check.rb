class ProfanityCheck < Command
  def initialize(receiver, review)
    @receiver = receiver
    @review = review
  end

  def execute
    puts("---Inside ProfanityCheck---")
    @receiver.remove_emoticons
    @receiver.validate_profanity
  end

end
