# frozen_string_literal: true

require "rails_helper"

RSpec.describe "articles/index", type: :view do
  before do
    assign(:articles, [
             Article.create!(
               title: "Title",
               body: "MyText"
             ),
             Article.create!(
               title: "Title",
               body: "MyText"
             )
           ])
  end

  it "renders a list of articles" do
    render
    cell_selector = Rails::VERSION::STRING >= "7" ? "div>p" : "tr>td"
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
