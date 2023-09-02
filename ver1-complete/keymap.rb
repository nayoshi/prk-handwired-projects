require "via"
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

kbd.split = true
kbd.uart_pin = 1

kbd.via = true
kbd.via_layer_count = 4

kbd.init_matrix_pins([
  [[col0, row0], [row0, col0], [col1, row0], [row0, col1], [col2, row0], [row0, col2]],
  [[col0, row1], [row1, col0], [col1, row1], [row1, col1], [col2, row1], [row1, col2]],
  [[col0, row2], [row2, col0], [col1, row2], [row2, col1], [col2, row2], [row2, col2]],
  [[col0, row3], [row3, col0], [col1, row3], [row3, col1], [col2, row3], [row3, col2]],
  [[col0, row4], [row4, col0], [col1, row4], [row4, col1], [col2, row4], [row4, col2]],
  [                                                        [col2, row5], [row5, col2]]
])

kbd.add_layer :default, %i[
  KC_Q      KC_W    KC_E    KC_R   KC_T    KC_Y      KC_Y      KC_T    KC_R    KC_E   KC_W    KC_Q
  KC_A      KC_S    KC_D    KC_F   KC_G    KC_H      KC_H      KC_G    KC_F    KC_D   KC_S    KC_A
  KC_Z      KC_X    KC_C    KC_V   KC_B    KC_N      KC_N      KC_B    KC_V    KC_C   KC_X    KC_Z
  KC_1      KC_2    KC_3    KC_4   KC_5    KC_6      KC_6      KC_5    KC_4    KC_3   KC_2    KC_1
  KC_7      KC_8    KC_9    KC_0   KC_U    KC_I      KC_I      KC_U    KC_0    KC_9   KC_8    KC_7
  KC_NO     KC_NO   KC_NO   KC_NO  KC_O    KC_P      KC_P      KC_O    KC_NO   KC_NO  KC_NO   KC_NO
]

kbd.start!
