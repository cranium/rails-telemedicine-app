require 'rails_helper'

RSpec.describe "cases/edit", type: :view do
  before(:each) do
    @case = assign(:case, Case.create!(
      :title => "MyText",
      :user_id => 1
    ))
  end

  it "renders the edit case form" do
    render

    assert_select "form[action=?][method=?]", case_path(@case), "post" do

      assert_select "textarea#case_title[name=?]", "case[title]"

      assert_select "input#case_user_id[name=?]", "case[user_id]"
    end
  end
end
