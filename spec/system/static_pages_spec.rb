require "system_helper"

RSpec.describe "StaticPages", type: :system do
  it "ホーム画面" do
    visit root_url

    expect(page).to have_content "Hello World!"
  end
end
