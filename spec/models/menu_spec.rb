require "rails_helper"

RSpec.describe Menu, type: :model do
  let(:menu) { create(:menu) }

  describe "title" do
    context "空の場合" do
      it "バリデーションエラー" do
        menu.title = ""
        expect(menu).not_to be_valid
      end
    end

    context "51文字以上の場合" do
      it "バリデーションエラー" do
        menu.title = "a" * 51
        expect(menu).not_to be_valid
      end
    end

    context "50文字以内の場合" do
      it "成功!" do
        menu.title = "a" * 50
        expect(menu).to be_valid
      end
    end
  end

  describe "price" do
    context "空の場合" do
      it "バリデーションエラー" do
        menu.price = ""
        expect(menu).not_to be_valid
      end
    end

    context "整数値以外の場合" do
      it "バリデーションエラー" do
        menu.price = "a"
        expect(menu).not_to be_valid
      end
    end

    context "整数値の場合" do
      it "成功!" do
        menu.price = 500
        expect(menu).to be_valid
      end
    end
  end
end
