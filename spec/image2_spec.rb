require 'spec_helper'

RSpec.describe Image, type: :model do
  describe "blurring should work" do
    it "should blur a One Pixel Transformed" do
      input1 = [
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 1, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0]
      ]

      expected1 = [
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 1, 0, 0],
        [1, 1, 1, 0],
        [0, 1, 0, 0],
        [0, 0, 0, 0]
      ]

      image = Image.new(input1)
      expect(image.blur!.data).to eq expected1
     end
   end


   describe "blurring should work" do
    it "should blur a Two Pixel Transformed" do
      input2 = [
        [0, 0, 0, 0],
        [0, 0, 1, 0],
        [0, 0, 0, 0],
        [0, 1, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0]
      ]

      expected2 = [
        [0, 0, 1, 0],
        [0, 1, 1, 1],
        [0, 1, 1, 0],
        [1, 1, 1, 0],
        [0, 1, 0, 0],
        [0, 0, 0, 0]
      ]

      image = Image.new(input2)
      expect(image.blur!.data).to eq expected2
     end
   end

   describe "blurring should work" do
    it "should blur a Edge Pixel Transformed" do
      input3 = [
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [1, 0, 0, 0],
        [0, 0, 0, 0]
      ]

      expected3= [
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [1, 0, 0, 0],
        [1, 1, 0, 0],
        [1, 0, 0, 0]
      ]

      image = Image.new(input3)
      expect(image.blur!.data).to eq expected3
     end
   end
end
