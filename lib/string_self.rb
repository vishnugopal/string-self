
class StringSelf < String
  
  attr_accessor :string_queue, :separator
  
  def initialize(identifier, separator = ".", queue = [])
    self.string_queue ||= queue
    self.separator = separator
    suffix(identifier)
    super(self.to_s)
  end
  
  def suffix(identifier)
    self.string_queue.push(identifier)
  end
  
  def method_missing(meth, args = [])
    StringSelf.new(meth.to_s, separator, string_queue) 
  end
  
  def to_s
    self.string_queue.join(separator)
  end
  
end

