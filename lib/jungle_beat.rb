require_relative 'linked_list'

class JungleBeat

  attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def append(data)
    data.split(" ").map do |word|
      list.append(word)
    end
    data
  end

  def count
    list.count
  end

  def play
    beats = list.to_string
    'say -r 500 -v Boing "#{beats}"'
    "#{beats}"
  end

end
