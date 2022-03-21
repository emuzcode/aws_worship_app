require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title(""), "Worship App"
    assert_equal full_title("Help"), "Help | Worship App"
  end
end