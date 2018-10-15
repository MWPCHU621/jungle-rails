require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here


    it 'is valid with valid attributes' do
      @category = Category.new
      @category.save!
      @product = @category.products.create({
        name: "anything",
        description: "Lorem Ipsum",
        quantity: 20,
        price: 150.99,
      })

      expect(@product).to be_valid
      expect(@product.name).to be_present
      expect(@product.price).to be_present
      expect(@product.quantity).to be_present
      expect(@product.category).to be_present
    end
  end
end
