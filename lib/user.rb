class User
  attr_reader :name, :age, :hobby

  def initialize(name:, age:, hobby:)
    @name = name
    @age = age
    @hobby = hobby
    puts "name: #{name}"
  end
end 

params = {name: "Tanaka", age: 31, hobby: "Soccer"}
user = User.new(params)