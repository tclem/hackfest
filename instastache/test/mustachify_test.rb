require 'test_helper'

class InstastacheTest < MiniTest::Unit::TestCase
  def test_mustachify
    assert_equal "http://mustachify.me/?src=test_url", Instastache.mustachify('test_url')
  end
end