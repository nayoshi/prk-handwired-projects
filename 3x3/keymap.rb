# Initialize a Keyboard
kbd = Keyboard.new
row0 = 0
row1 = 7
col0 = 6
col1 = 29
col2 = 28

kbd.init_matrix_pins(
  [
    [ [col1, row1], [col0, row1], [row0, col0]],
    [ [row1, col1], [row1, col0], [col0, row0]],
    [ [row0, col2], [col1, row0], [row0, col1]]
  ]
)
# default layer should be added at first
kbd.add_layer :default, %i(
      KC_1          KC_2          KC_3
      KC_A          KC_B          KC_C
      KC_E          KC_F          KC_G
)

kbd.start!
