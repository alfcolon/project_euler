require 'Date'
# You are given the following information, but you may prefer to do some research for yourself.
#
# 1 Jan 1900 was a Monday.
# Thirty days has September,
# April, June and November.
# All the rest have thirty-one,
# Saving February alone,
# Which has twenty-eight, rain or shine.
# And on leap years, twenty-nine.
# A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?
# count the amount of days that occured from

# from 1/1/1901..12/31/2000, return the sum of each Sunday that fell on the first of a month.

  range = Date.new(1901,1,1)..Date.new(2000,12,31)
  sunday_count = range.select { |day| day.sunday? && day.mday == 1 }
  answer = sunday_count.length
  puts answer
