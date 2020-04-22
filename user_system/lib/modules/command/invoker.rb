class Invoker

  def check_charecter_limit=(command)
    @limit_check = command
  end

  def check_abuses=(command)
    @abuse_check = command
  end

  def perform_validation
    @limit_check.execute if @limit_check

    @abuse_check.execute if @abuse_check
  end
end
