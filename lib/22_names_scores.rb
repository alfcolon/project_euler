# Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.
#
# For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.
#
# What is the total of all the name scores in the file?

  def answer
    name_scores = []
    names_file = File.open("names.txt")
    read_file = names_file.read
    formatted_text = format(read_file)
  # convert each letter to their byte value subtracted by 64 to represent it's alphabetical position value
    byte_array = formatted_text.map {|word| word.bytes.map{|byte| byte - 64}.reduce(:+)}
    byte_array.each_with_index {|byte_sum, idx| name_scores << byte_sum * (idx + 1)}
  # create sum of each name_sum * its position value
    return name_scores.reduce(:+)
  end

  def format(text_file)
    test = []
    text_file.each_char{|c| test << c.scan(/(?:"(?:\\.|[^"])*"|[^" ])+/)}
    joined_test = test.join("")
    split_joined_test = joined_test.split(",")
    return split_joined_test.sort
  end


  print answer
