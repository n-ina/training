require 'minitest/autorun'
require 'test/unit'

def to_alphanumeric s
  s.gsub(/[^\w\s]/,'')
end

class ToAlphanumericTest < MiniTest::Test
  def test_strips_non_alphanumeric_characters
    assert_equal '3 the Magic Number',
      to_alphanumeric('#3, the *Magic, Number*?')
  end
end
