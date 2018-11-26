require 'test_helper'

class ItemTest < ActiveSupport::TestCase

    def setup
      @item = Item.new(title: "Lorem ipsum", description: 'Loorreeemmmm ipppssuuummm', price:10, image_url: 'https://fthmb.tqn.com/5zSwecmRKOx_0O3kt-DLJJrwhl8=/2121x1414/filters:fill%28auto,1%29/Kitten-GettyImages-535429254-58fae68d5f9b581d59a1466e.jpg')
    end

    test "should be valid" do
      assert @item.valid?
    end

    test "title should be present" do
      @item.title = nil
      assert_not @item.valid?
    end

    test "description should be present" do
      @item.description = nil
      assert_not @item.valid?
    end

    test "price should be present" do
      @item.price = nil
      assert_not @item.valid?
    end

    test "image_url should be present" do
      @item.image_url = nil
      assert_not @item.valid?
    end

  end
