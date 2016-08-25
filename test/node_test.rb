require 'minitest/autorun'
require './lib/node'

class NodeTest < Minitest::Test

  def test_node_can_have_data
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_next_node_equals_nil
    node = Node.new("plop")
    assert_equal nil, node.next_node
  end

end
