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

def paint_board(motherboard)
  puts "   0  1  2  3  4  5"
  for i in (0..5)
    jump_line = " "
    for j in (0..5)
      jump_line = jump_line + motherboard[i][j]
    end
    puts jump_line
  end
end
def main
  board = motherboard
  paint_board(board)
  valid = false
    contador1 = 0
    contador2 = 0
    contador3 = 0
    contador4 = 0
    contador5 = 0
    contador6 = 0
  while !valid 
    puts 'Ingrese el numero de la columna a jugar'
    coord = gets.chomp.to_i
    if coord == 0 
      puts "ingreso la columna 0"
      board[(board.length-1) - contador1][0] = '[O]'
      contador1 += 1
      if contador1 > 6
        puts "columna llena"
        valid = true
      end

      elsif coord == 1
        puts "ingreso la columna 1"
        board[(board.length-1) - contador2][1] = '[O]'
        contador2 += 1
        valid = true
        elsif coord == 2
          puts "ingreso la columna 2"
          board[(board.length-1) - contador3][2] = '[O]'
          contador3 += 1
          valid = true
          elsif coord == 3
            puts "ingreso la columna 3"
            board[(board.length-1) - contador4][3] = '[O]'
            contador4 += 1
            valid = true
            elsif coord == 4
              puts "ingreso la columna 4"
              board[(board.length-1) - contador5][4] = '[O]'
              contador5 += 1
              valid = true
              elsif coord == 5
                puts "ingreso la columna 5"
                board[(board.length-1) - contador6][5] = '[O]'                
                contador6 += 1
                valid = true
    else
      puts "Ingrese una opcion valida" 
    end
    paint_board(board)
  end
end

main
# require "colorize"
# def motherboard
#   board = []
#   for i in 0..5
#     board[i] = []
#     for j in 0..5
#       board[i][j] = '[ ]'
#     end
#   end
#   board
# end

# def paint_board(matrix)
#   puts "  0  1  2  3  4  5"
#   for i in (0..5)
#     jump_line = " "
#     for j in (0..5)
#       jump_line = jump_line + matrix[i][j]
#     end
#     puts jump_line
#   end
# end

# def check_h_win( table, symbol )
#   for i in 0..table.length-1
#     c = 0
#     j = 0
#     while(j < table.length)
#       if (table[i][j] == symbol)
#         c = c + 1
#         j = j + 1
#       else
#         j = table.length
#       end
#     end
#     if (c == 4)
#       return true
#     end
#   end
#   return false
# end

# def check_colum(board,colum)
    
#     for i in 0..board.length-1
#       if board[(board.length-1)-i][colum] == '[ ]'
#         return true
#       end

#     end
#     return false
# end

# def play(m, token)
#   valid = false
#   cont = 0
#   while(!valid)
#     puts "Intro colum"
#     colum = gets.chomp.to_i
#     i = check_colum(m,colum)
#     if i == true
#       m[m.length-1][colum] = token
#       valid = true
    
#       #paint_board(m)
#       if valid == true
#         m[(m.length-1) - cont][colum]
#         cont += 1
#       end
#     else
#       puts "Error position..."
#     end
#   end
#    return m
# end

# def main
#   board = motherboard
#   paint_board(board)
#   #prueba
#   symbol = '[O]' 
#   #play(board, symbol)
#   #"[O]"board(board)
#   valid = false
#     contador1 = 0
#     contador2 = 0
#     contador3 = 0
#     contador4 = 0
#     contador5 = 0
#     contador6 = 0
#   while !valid 
#     puts 'Ingrese el numero de la columna a jugar'
#     coord = gets.chomp.to_i
#     if coord == 0 
#       puts "ingreso la columna 0"
#       board[(board.length-1) - contador1][0] = "[O]"
#       contador1 += 1
#       valid = true
#       elsif coord == 1
#         puts "ingreso la columna 1"
#         board[(board.length-1) - contador2][1] = "[O]"
#         contador2 += 1
#         valid = true
#         elsif coord == 2
#           puts "ingreso la columna 2"
#           board[(board.length-1) - contador3][2] = "[O]"
#           contador3 += 1
#           valid = true
#           elsif coord == 3
#             puts "ingreso la columna 3"
#             board[(board.length-1) - contador4][3] = "[O]"
#             contador4 += 1
#             valid = true
#             elsif coord == 4
#               puts "ingreso la columna 4"
#               board[(board.length-1) - contador5][4] = "[O]"
#               contador5 += 1
#               valid = true
#               elsif coord == 5
#                 puts "ingreso la columna 5"
#                 board[(board.length-1) - contador6][5] = "[O]"                
#                 contador6 += 1
#                 valid = true
#     else
#       puts "Ingrese una opcion valida" 
#     end
#     paint_board(board)
#   end

# end

# main