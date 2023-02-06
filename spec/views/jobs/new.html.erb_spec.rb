require 'rails_helper'

RSpec.describe "jobs/new", type: :view do
  before(:each) do
    assign(:job, Job.new(
      title: "MyString",
      description: nil,
      company: "MyString",
      url: "MyString"
    ))
  end

  it "renders new job form" do
    render

    assert_select "form[action=?][method=?]", jobs_path, "post" do

      assert_select "input[name=?]", "job[title]"

      assert_select "input[name=?]", "job[description]"

      assert_select "input[name=?]", "job[company]"

      assert_select "input[name=?]", "job[url]"
    end
  end
end
