require 'pry'
require_relative 'node'
class LinkedList
  attr_accessor :head
  def initialize
    @head    = nil
    @counter = 0
  end

  def append(data)
    @counter += 1
    if @head == nil
      node = Node.new(data)
      @head = node

    else
      current_node = @head

      while current_node.next_node != nil
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
      current_node.next_node.data
    end
  end
  def count
    @counter
  end

  def to_string
    data_list = ""
    current_node = @head
    data_list << current_node.data

    while current_node.next_node != nil
      current_node = current_node.next_node
      data_list << " #{current_node.data}"
    end
    data_list
  end

  def prepend(data)
    @counter += 1
    prepend_node = Node.new(data)
    prepend_node.next_node = @head
    @head = prepend_node

    prepend_node.data
  end

  def insert(index_number, data)

    current_node = @head

    (index_number - 1).times do
      current_node = current_node.next_node
    end
    new_node = current_node.next_node
    new_node = Node.new(data)
    new_node.next_node = new_node
    data
  end

  def find (index_number, number_of_nodes_to_pull)
    current_node = @head

    total_relevant_words = ""

    (index_number).times do
      current_node = current_node.next_node
    end
    (number_of_nodes_to_pull).times do
      total_relevant_words += current_node.data
      current_node = current_node.next_node
      total_relevant_words += " "
    end
    total_relevant_words.chop
  end

  def includes?(is_this_data_included)
    current_node = @head

    until current_node == nil do
      return true if current_node.data == is_this_data_included

      current_node = current_node.next_node
    end
    false
  end

  def pop
    current_node = @head
    until current_node.next_node.next_node == nil
      current_node = current_node.next_node
    end

    place_holder_node = current_node.next_node.data
    current_node.next_node = nil

    place_holder_node
  end
end
