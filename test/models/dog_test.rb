require "test_helper"

class DogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "New Dog Profile should not save without a Name" do
    dog = Dog.new(breed:"Siberian Husky", age: 2, gender: "Male")
    assert_not dog.save, "Dog Profile saved without a Name added"

  end
    test "Should save Profile with valid inputs " do
        dog = Dog.new(name: "Snow", breed:"Westie", age: 2, gender: "Female")
        assert dog.save, "Cannot save dog with valid inputs"
      end
    
end
