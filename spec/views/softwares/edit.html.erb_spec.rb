require 'rails_helper'

RSpec.describe "softwares/edit", type: :view do
  before(:each) do
    @software = assign(:software, Software.create!(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit software form" do
    render

    assert_select "form[action=?][method=?]", software_path(@software), "post" do

      assert_select "input#software_name[name=?]", "software[name]"

      assert_select "input#software_description[name=?]", "software[description]"
    end
  end
end
