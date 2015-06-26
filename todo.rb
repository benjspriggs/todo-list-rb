#!/usr/bin/env ruby
# todo.rb - main file with test inputs from a TODO project: https://www.reddit.com/r/dailyprogrammer/comments/39ws1x/20150615_challenge_218_easy_todo_list_part_1/

$:.unshift(File.dirname(__FILE__)) unless $:.include?(__FILE__)

require 'todo-list'

t = TodoList.new
t.add_item('Take a shower')
t.add_item('Go to work')
t.view_list

puts 'Name for the todo list?'
t.name = gets.chomp
t.add_item('Buy a new phone')
t.delete_item('Go to work')
t.view_list
