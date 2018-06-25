require "minitest/autorun"
require_relative "cigar.rb"

class TestCigar < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_if_function_has_string
    	num = "1234"
    	winnum = "12345"
    	assert_equal(String, cigar(num,winnum).class)
    end

    def test_if_num_has_winnum_characters
    	num = "1234"
    	winnum = "12345"
    	assert_equal("1234", cigar(num,winnum).split)
    end
end