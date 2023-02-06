require 'rails_helper'

RSpec.describe "jobs/index", type: :view do
  before(:each) do
    assign(:jobs, [
      Job.create!(
        title: "Title",
        description: nil,
        company: "Company",
        url: "Url"
      ),
      Job.create!(
        title: "Title",
        description: nil,
        company: "Company",
        url: "Url"
      )
    ])
  end

  it "renders a list of jobs" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Company".to_s, count: 2
    assert_select "tr>td", text: "Url".to_s, count: 2
  end
end
