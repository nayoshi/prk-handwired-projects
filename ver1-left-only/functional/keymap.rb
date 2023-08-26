# Initialize a Keyboard
kbd = Keyboard.new

row0 = 7
row1 = 6
row2 = 29
row3 = 28
row4 = 27
row5 = 26
col0 = 3
col1 = 4
col2 = 2

# `split=` should happen before `init_pins`
# kbd.split = true

# kbd.mutual_uart_at_my_own_risk = true

# If your right hand of CRKBD is the "anchor"
# kbd.set_anchor(:right)

kbd.init_matrix_pins([
  [[col0, row0], [row0, col0], [col1, row0], [row0, col1], [col2, row0], [row0, col2]],
  [[col0, row1], [row1, col0], [col1, row1], [row1, col1], [col2, row1], [row1, col2]],
  [[col0, row2], [row2, col0], [col1, row2], [row2, col1], [col2, row2], [row2, col2]],
  [[col0, row3], [row3, col0], [col1, row3], [row3, col1], [col2, row3], [row3, col2]],
  [[col0, row4], [row4, col0], [col1, row4], [row4, col1], [col2, row4], [row4, col2]],
  [                                                        [col2, row5], [row5, col2]]
])

kbd.add_layer :default, %i[
  KC_ESCAPE KC_1    KC_2    KC_3     KC_4    KC_5      
  KC_TAB    KC_Q    KC_W    KC_E     KC_R    KC_T      
  KC_NO     KC_A    KC_S    KC_D     KC_F    KC_G  
  KC_LCTL   KC_Z    KC_X    KC_C     KC_V    KC_B 
  KC_NO     KC_NO   KC_NO   KC_SPACE KC_NO   KC_NO 
                                     KC_NO   KC_NO
]

#idea c0,r4 + c1r4 and r4c1 = left and right arrow keys r4c0 is up and down would be sick
# c0r3 + c1r4 r4c1 alt tab and shift alt tab?

kbd.start!
