# frozen_string_literal: true

require "rails_helper"

RSpec.describe "articles/show", type: :view do
  before do
    assign(:article, Article.create!(
                       title: "Title",
                       body: "MyText"
                     ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
