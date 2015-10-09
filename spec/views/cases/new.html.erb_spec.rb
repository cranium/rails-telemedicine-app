require 'rails_helper'

RSpec.describe "cases/new", type: :view do
  before(:each) do
    assign(:case, Case.new(
      :title => "MyText",
      :user_id => 1
    ))
  end

  it "renders new case form" do
    render

    assert_select "form[action=?][method=?]", cases_path, "post" do

      assert_select "textarea#case_title[name=?]", "case[title]"

      assert_select "input#case_user_id[name=?]", "case[user_id]"
    end
  end
end
