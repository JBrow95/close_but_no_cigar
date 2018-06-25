require "minitest/autorun"
require_relative "cigar.rb"

class TestCigar < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_if_function_has_string
    	assert_equal(Integer, cigar("", "").class)
    end

    def test_if_1_match_returns_1
    	assert_equal(1, cigar("1234", "1555"))
    end

    def test_if_1_match_returns_2
    	assert_equal(2,cigar("1234","1255"))
    end

    def test_if_array_returns_1
    	assert_equal(1, cigararr(cigar, ["1234", "15555"]))
    end
end