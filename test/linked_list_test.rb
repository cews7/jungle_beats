require 'minitest/autorun'               # => true
require './lib/linked_list'              # ~> LoadError: cannot load such file -- ./lib/linked_list
class LinkedListTest < Minitest::Test
  def test_can_create_new_list
    list = LinkedList.new
    list.class

    assert_equal LinkedList, list.class
  end

  def test_head_is_nil
    list = LinkedList.new
    list.head

    assert_equal nil, list.head
  end

  def test_append
    list = LinkedList.new
    list.append("doop")


    assert_equal "doop", list.head.data
  end

  def test_can_retrieve_heads_data_from_list
    list = LinkedList.new
    list.append("doop")

    assert_equal "doop", list.head.data
  end

  def test_next_node_should_be_nil
    list = LinkedList.new
    list.append("doop")
    list.head.next_node

    assert_equal nil, list.head.next_node
  end

  def test_next_node_should_be_deep
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    assert_equal "deep", list.head.next_node.data
  end

  def test_count_should_be_one
    list = LinkedList.new
    list.append("doop")

    assert_equal 1, list.count
  end

  def test_data_to_string
    list = LinkedList.new
    list.append("doop")

    assert_equal "doop", list.to_string
  end

  def test_multiple_data_to_string
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    assert_equal "doop deep", list.to_string
  end

  def test_more_than_two_nodes_is_possible
    list = LinkedList.new
    list.append("mountain")
    list.append("notice")
    list.append("lemon")

    assert_equal "mountain notice lemon", list.to_string
  end


  def test_count_for_additional_data
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    assert_equal 2, list.count
  end

  def test_append_plop
    list = LinkedList.new
    list.append("plop")

    assert_equal "plop", list.head.data
  end

  def test_prepend_dop
    list = LinkedList.new
    list.append("doop")

    assert_equal "dop", list.prepend("dop")
  end

  def test_insert_woo
    list = LinkedList.new
    list.append("doop")
    list.append("doop")

    assert_equal "woo", list.insert(1, "woo")
  end

  def test_find
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    assert_equal "shi shu", list.find(2, 2)
  end

  def test_includes_deep
    list = LinkedList.new
    list.append("deep")

    assert_equal true, list.includes?("deep")
  end

  def test_includes_multiple
    list = LinkedList.new
    list.append("gep")
    list.append("deep")

    assert_equal true, list.includes?("deep")
    assert_equal false, list.includes?("weofijwioef")
  end

  def test_pop_blop
    list = LinkedList.new
    list.append("dop")
    list.append("blop")
    list.append("lemon")
    list.append("test")

    assert_equal "test", list.pop
  end
end
