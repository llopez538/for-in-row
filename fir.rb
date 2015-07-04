require "colorize"
def motherboard
  board = []
  for i in 0..5
    board[i] = []
    for j in 0..5
      board[i][j] = '[ ]'
    end
  end
  board
end

def paint_board(matrix)
  puts "  0  1  2  3  4  5"
  for i in (0..5)
    jump_line = " "
    for j in (0..5)
      jump_line = jump_line + matrix[i][j]
    end
    puts jump_line
  end
end

def check_h_win( table, symbol )
  for i in 0..table.length-1
    c = 0
    j = 0
    while(j < table.length)
      if (table[i][j] == symbol)
        c = c + 1
        j = j + 1
      else
        j = table.length
      end
    end
    if (c == 4)
      return true
    end
  end
  return false
end

def check_colum(board,colum)
    
    for i in 0..board.length-1
      if board[(board.length-1)-i][colum] == '[ ]'
        return true
      end

    end
    return false
end

def play(m, token)
  valid = false
  cont = 0
  while(!valid)
    puts "Intro colum"
    colum = gets.chomp.to_i
    i = check_colum(m,colum)
    if i == true
      m[m.length-1][colum] = token
      valid = true
    
      #paint_board(m)
      if valid == true
        m[(m.length-1) - cont][colum]
        cont += 1
      end
    else
      puts "Error position..."
    end
  end
   return m
end

def main
  board = motherboard
  paint_board(board)
  #prueba
  symbol = '[O]' 
  play(board, symbol)
  paint_board(board)

end

main