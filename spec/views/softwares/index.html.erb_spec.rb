require 'rails_helper'

RSpec.describe "softwares/index", type: :view do
  before(:each) do
    assign(:softwares, [
      Software.create!(
        :name => "Name",
        :description => "Description"
      ),
      Software.create!(
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of softwares" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
