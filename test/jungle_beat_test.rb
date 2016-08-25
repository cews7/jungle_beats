require 'minitest/autorun'
require "./lib/jungle_beat.rb"

class JungleBeatTest < Minitest::Test

  def test_create_new_list
    jb = JungleBeat.new

    assert_equal LinkedList, jb.list.class
  end

  def test_see_if_head_nil
    jb = JungleBeat.new

    assert_equal nil, jb.list.head
  end

  def test_append
    jb = JungleBeat.new

    assert_equal "deep doo ditt", jb.append("deep doo ditt")
  end

  def test_new_data_creates_head_node
    jb = JungleBeat.new
    jb.append("deep doo ditt")

    assert_equal "deep", jb.list.head.data
  end

  def test_that_jungle_beat_can_count
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")

    assert_equal 6, jb.list.count
  end

  def test_list_head_is_equal_to_deep
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")

    assert_equal "deep", jb.list.head.data
  end

  def test__if_next_node_is_doo
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")

    assert_equal "doo", jb.list.head.next_node.data
  end

  def test_play_the_sound
    jb = JungleBeat.new
    jb.append("ding dah oom oom ding oom")

    assert_equal "deep doo ditt woo hoo shu", jb.play
  end

end
