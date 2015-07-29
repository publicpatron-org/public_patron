require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 1
    assert_select "a[href=?]", idea_path, count: 8
    assert_select "a[href=?]", platform_path, count: 4
    assert_select "a[href=?]", about_path, count: 6
    assert_select "a[href=?]", join_path, count: 3
    assert_select "a[href=?]", support_path, count: 4
    get signup_path
  end

end
