function [board] = get_chess_board()
  %% This function returns a 512x512 pixels in double format of 0 and 255 values showing a standard chess board pattern
  %% Example:   frame = uint8(get_chess_board());
  %%            imshow(uint8(frame))  
  n_squares = 8;
  width_px  = 512;
  height_px = 512;
  
  white_block = ones(height_px/n_squares, width_px/n_squares)*255;  % 64px per block
  
  board = zeros(width_px, height_px);
  row_counter = 1;
  for row = 1 : width_px/n_squares : width_px
    col_counter = 1;
      for col = 1 : width_px/n_squares : width_px
         if mod(col_counter,2) ~= 0
             if mod(row_counter,2) == 0
                board(row:row+height_px/n_squares-1,col:col+width_px/n_squares-1) = white_block;
             else
                board(row:row+height_px/n_squares-1,col+width_px/n_squares:col+2*(width_px/n_squares)-1) = white_block;
             end
          else
             col_counter = col_counter + 1;
             continue
         end 
         col_counter = col_counter + 1;      
      end
      row_counter = row_counter + 1;
  end
  
  
end