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
kbd.split = true
kbd.uart_pin = 1 # See below.
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
  KC_Q      KC_W    KC_E    KC_R   KC_T    KC_Y      KC_Q      KC_W    KC_E    KC_R   KC_T    KC_Y
  KC_A      KC_S    KC_D    KC_F   KC_G    KC_H      KC_A      KC_S    KC_D    KC_F   KC_G    KC_H
  KC_Z      KC_X    KC_C    KC_V   KC_B    KC_N      KC_Z      KC_X    KC_C    KC_V   KC_B    KC_N
  KC_1      KC_2    KC_3    KC_4   KC_5    KC_6      KC_1      KC_2    KC_3    KC_4   KC_5    KC_6
  KC_7      KC_8    KC_9    KC_0   KC_U    KC_I      KC_7      KC_8    KC_9    KC_0   KC_U    KC_I
                                   KC_O    KC_P      KC_O      KC_P
]

kbd.start!
