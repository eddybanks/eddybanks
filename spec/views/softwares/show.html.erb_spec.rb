require 'rails_helper'

RSpec.describe "softwares/show", type: :view do
  before(:each) do
    @software = assign(:software, Software.create!(
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
  end
end
