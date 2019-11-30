class Subject

def attach
  raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
end

def detach
  raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
end

def notify
  raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
end

end
