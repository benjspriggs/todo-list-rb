#!/usr/bin/env ruby
# todo_list.rb - basic todo list class

class TodoList
  attr_accessor 'name'

  def initialize
    @list = []
  end

  def add_item(item)
    @list << item
  end

  def delete_item(item)
    @list.delete(item)
  end

  def view_list
    unless @name.nil? # this line in block instead of single line to avoid the puts being evaluated first
      puts "Name: #{name}"
    end
    @list.each_with_index {|i, n| puts "#{n + 1}. #{i}" }
    puts # newline
  end

end
