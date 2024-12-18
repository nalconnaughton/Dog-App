require "test_helper"

class DogsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  setup do
    @dog = dogs(:one)
  end

  test "Should get index" do
    get dogs_url
     assert_response :success
     assert_select "h1", "Dog Adoption Profiles"
  end

  test "Should create new dog profile" do
    
    assert_difference("Dog.count") do
      post dogs_url, params: { dog: {name: "Ruffles", breed:"German Sheppard", age:2 , gender:"Male"} }
    end

    assert_redirected_to dog_url(Dog.last)
  end

  test "should get edit dog" do
    get edit_dog_url(@dog)
    assert_response :success
  end

  test "should update dog" do
    
    patch dog_url(@dog) , params: { dog: {name: "New Name", breed:"New Breed", age:2 , gender:"Male" } }
    assert_redirected_to dog_url(Dog.last)
  end
  
end
