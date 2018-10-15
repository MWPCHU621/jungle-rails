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
    end

    it 'is not valid without a name' do
      @category = Category.new
      @category.save!
      @product = @category.products.create({
        name: "anything",
        description: "Lorem Ipsum",
        quantity: 20,
        price: 150.99,
      })

      expect(@product.name).to be_present
    end


    it 'is not valid without a price' do
      @category = Category.new
      @category.save!
      @product = @category.products.create({
        name: "anything",
        description: "Lorem Ipsum",
        quantity: 20,
        price: 150.99,
      })

      expect(@product.price).to be_present
    end

    it 'is not valid without a quantity' do
      @category = Category.new
      @category.save!
      @product = @category.products.create({
        name: "anything",
        description: "Lorem Ipsum",
        quantity: 20,
        price: 150.99,
      })

      expect(@product.quantity).to be_present
    end

    it 'is not valid without a category' do
      @category = Category.new
      @category.save!
      @product = @category.products.create({
        name: "anything",
        description: "Lorem Ipsum",
        quantity: 20,
        price: 150.99,
      })

      expect(@product.category).to be_present
    end
  end
end
