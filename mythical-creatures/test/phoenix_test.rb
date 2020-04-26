gem 'minitest', '~> 5.2'
require "minitest/autorun"
require "minitest/pride"
require_relative "../lib/phoenix"

class PhoenixTest < Minitest::Test

  def test_phoenix_has_a_name
    phoenix = Phoenix.new('Fawkes')

    assert_equal 'Fawkes', phoenix.name
  end

  def test_default_home_is_hogwarts
    phoenix = Phoenix.new('Fawkes')

    assert_equal 'Hogwarts', phoenix.home
    assert_equal 'Fawkes', phoenix.name
  end

  def test_if_home_is_hogwarts_owner_is_albus_dumbledore
    phoenix = Phoenix.new('Fawkes')

    assert_equal 'Hogwarts', phoenix.home
    assert_equal 'Albus Dumbledore', phoenix.owner
  end

  def test_it_can_live_in_paris
    phoenix = Phoenix.new('Sparky', 'Paris')

    assert_equal 'Paris', phoenix.home
  end

  def test_it_can_have_another_home
    phoenix = Phoenix.new('Fawkes', 'London')

    assert_equal 'Fawkes', phoenix.name
    assert_equal 'London', phoenix.home
  end

  def test_default_last_burning_day_was_one_month_ago
    phoenix = Phoenix.new('Fawkes', 'Nurmengard')

    assert_equal Date.today.prev_month.to_s, phoenix.last_burning_day
  end

  def test_if_it_bursts_into_flames_last_burning_day_is_now
    phoenix = Phoenix.new('Fawkes')

    assert_equal Date.today.prev_month.to_s, phoenix.last_burning_day
    phoenix.burst_into_flames!

    assert_equal Date.today.to_s, phoenix.last_burning_day
  end

  def test_by_default_it_has_no_tears
    phoenix = Phoenix.new('Fawkes')

    refute phoenix.has_tears?
  end
end
