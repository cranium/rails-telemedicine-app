require 'rails_helper'

RSpec.describe "cases/index", type: :view do
  before(:each) do
    assign(:cases, [
      Case.create!(
        :title => "MyText",
        :user_id => 1
      ),
      Case.create!(
        :title => "MyText",
        :user_id => 1
      )
    ])
  end

  it "renders a list of cases" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
