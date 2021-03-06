require 'spec_helper'

describe "contact_feewises/edit" do
  before(:each) do
    @contact_feewise = assign(:contact_feewise, stub_model(ContactFeewise,
      :to => "MyString",
      :cc => "MyString",
      :subject => "MyString",
      :body => "MyText",
      :label => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit contact_feewise form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contact_feewises_path(@contact_feewise), :method => "post" do
      assert_select "input#contact_feewise_to", :name => "contact_feewise[to]"
      assert_select "input#contact_feewise_cc", :name => "contact_feewise[cc]"
      assert_select "input#contact_feewise_subject", :name => "contact_feewise[subject]"
      assert_select "textarea#contact_feewise_body", :name => "contact_feewise[body]"
      assert_select "input#contact_feewise_label", :name => "contact_feewise[label]"
      assert_select "input#contact_feewise_user_id", :name => "contact_feewise[user_id]"
    end
  end
end
