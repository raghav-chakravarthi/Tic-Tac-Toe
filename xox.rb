arr = Array.new
arr = [ 0, 1, 2,
        3, 4, 5,
        6, 7, 8]
def check(arr, mark)

  if  (arr[0].to_s == arr[1].to_s and arr[1].to_s == arr[2].to_s) or (arr[3].to_s == arr[4].to_s and arr[4].to_s == arr[5].to_s) or (arr[6].to_s == arr[7].to_s and arr[7].to_s == arr[8].to_s) or (arr[2].to_s == arr[4].to_s and arr[4].to_s == arr[6].to_s) or (arr[0].to_s == arr[4].to_s and arr[4].to_s == arr[8].to_s) or (arr[0].to_s == arr[3].to_s and arr[3].to_s == arr[6].to_s) or (arr[1].to_s == arr[4].to_s and arr[1].to_s == arr[7].to_s) or (arr[2].to_s == arr[5].to_s and arr[2].to_s == arr[8].to_s)
    puts "We have a winner"
    puts "Congratulations!"
    if mark.to_s == "X"
      puts "Player 1 has won the game"
    else
      puts "Player 2 has won the games"
    end
    return true
  end
  counts = 0
  for i in 0..8
    if arr[i] == "X" or arr[i] == "O"
      counts = counts + 1
    end
  end
  if counts == 9
    puts "Match drawn!!"
    return true
  end
end

def display(arr, position, mark)
  @arr = arr
  @position = position.to_i
  @mark = mark

  arr[position.to_i] = mark
  print "\n\n\t\t-------------\n"
  print "\t\t|" + "   |" + "   |" + "   |\n"
  print "\t\t|" + arr[0].to_s + "  |" + arr[1].to_s + "  |" + arr[2].to_s + "  |\n"
  print "\t\t-------------\n"
  print "\t\t|" + "   |" + "   |" + "   |\n"
  print "\t\t|" + arr[3].to_s + "  |" + arr[4].to_s + "  |" + arr[5].to_s + "  |\n"
  print "\t\t-------------\n"
  print "\t\t|" + "   |" + "   |" + "   |\n"
  print "\t\t|" + arr[6].to_s + "  |" + arr[7].to_s + "  |" + arr[8].to_s + "  |\n"
  print "\t\t-------------\n\n\n"
end

def valid(pos, arr)
  if ((pos.to_i < 0) or (pos.to_i > 8)) or (arr[pos.to_i] == "X" or arr[pos.to_i] == "O")
    puts "Wrong choice! Enter a valid one: "
    pos = gets.chomp
    valid(pos, arr)
  end

  return pos
end

puts "\n\n\n\n"
puts "\t\t Tic - Tac - Toe\n\n"
puts "Player 1 will enter X and player 2 will enter O\n"
puts "let the game begin!"

print "\n\n\t\t-------------\n"
print "\t\t|" + "   |" + "   |" + "   |\n"
print "\t\t|" + arr[0].to_s + "  |" + arr[1].to_s + "  |" + arr[2].to_s + "  |\n"
print "\t\t-------------\n"
print "\t\t|" + "   |" + "   |" + "   |\n"
print "\t\t|" + arr[3].to_s + "  |" + arr[4].to_s + "  |" + arr[5].to_s + "  |\n"
print "\t\t-------------\n"
print "\t\t|" + "   |" + "   |" + "   |\n"
print "\t\t|" + arr[6].to_s + "  |" + arr[7].to_s + "  |" + arr[8].to_s + "  |\n"
print "\t\t-------------\n\n\n"

posi = []
until check(arr," ")
  puts "Player 1 enter your position"
  pos = gets.chomp
  posi.push(pos)
  posit = valid(pos, arr)
  puts "\n\n"
  display(arr, posit, "X")
  break if check(arr, "X")

  puts "Player 2 enter your position"
  pos = gets.chomp
  posi.push(pos)
  posit = valid(pos, arr)
  puts "\n\n"
  display(arr, posit, "O")
  break if check(arr,"O")
end
