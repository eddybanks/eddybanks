require 'rails_helper'

RSpec.describe "softwares/new", type: :view do
  before(:each) do
    assign(:software, Software.new(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new software form" do
    render

    assert_select "form[action=?][method=?]", softwares_path, "post" do

      assert_select "input#software_name[name=?]", "software[name]"

      assert_select "input#software_description[name=?]", "software[description]"
    end
  end
end
