require "minitest/autorun"
require_relative "cigar.rb"

class TestCigar < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_if_function_has_string
    	assert_equal(Integer, cigar("","").class)
    end

    def test_if_off_by_3
    	assert_equal(3, cigar("1234", "1555"))
    end

    def test_if_off_by_1
    	assert_equal(1,cigar("1235","1245"))
    end

    def test_if_mytick_off_by
      assert_equal([0,2,2], cigararr(["1234", "1222", "1245"], "1234"))
    end

    def test_if_winners_and_offs_are_sorted
        assert_equal([[1,2,],[1,1,1,1,2]], winarr(["1234","1224","1224","1233"], ["1224","1234"]))
    end
end
