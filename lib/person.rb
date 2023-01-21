class Person
  def initialize(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end
end

kate = Person.new({:name => "Kate", birthday: "January 19"})
puts kate.birthday