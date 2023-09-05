# require "via"
# Initialize a Keyboard
kbd = Keyboard.new

rows = [7, 6, 29, 28, 27, 26]
cols = [3, 4, 2]

kbd.split = true
kbd.uart_pin = 1

# kbd.via = true
# kbd.via_layer_count = 6

kbd.init_matrix_pins([
  [[cols[0], rows[0]], [rows[0], cols[0]], [cols[1], rows[0]], [rows[0], cols[1]], [cols[2], rows[0]], [rows[0], cols[2]]],
  [[cols[0], rows[1]], [rows[1], cols[0]], [cols[1], rows[1]], [rows[1], cols[1]], [cols[2], rows[1]], [rows[1], cols[2]]],
  [[cols[0], rows[2]], [rows[2], cols[0]], [cols[1], rows[2]], [rows[2], cols[1]], [cols[2], rows[2]], [rows[2], cols[2]]],
  [[cols[0], rows[3]], [rows[3], cols[0]], [cols[1], rows[3]], [rows[3], cols[1]], [cols[2], rows[3]], [rows[3], cols[2]]],
  [[cols[0], rows[4]], [rows[4], cols[0]], [cols[1], rows[4]], [rows[4], cols[1]], [cols[2], rows[4]], [rows[4], cols[2]]],
  [                                                                                [cols[2], rows[5]], [rows[5], cols[2]]]
])

# [ESC]   [1] [2] [3] [4] [5]                                     [6] [7] [8] [9] [0] [ALT]
# [TAB]   [Y] [C] [L] [M] [K]                                     [Z] [F] [U] [,] ['] [-]
# [LSHFT] [I] [R] [S] [T] [G]                                     [P] [N] [E] [A] [O] [;]
# [LCTL]  [Q] [V] [W] [D] [J]                                     [B] [H] [/] [.] [X] [ALT]
#             [1] [2] [SPC]  [SHFT] [3] [4]        [3] [4] [BSPC] [ENTR] [2] [1]
#                                   [5] [6]        [5] [6]

#   KC_ESCAPE KC_1      KC_2      KC_3      KC_4      KC_5            KC_6      KC_7      KC_8      KC_9      KC_0      KC_LALT  
#   KC_TAB    KC_Y      KC_C      KC_L      KC_M      KC_K            KC_Z      KC_F      KC_U      KC_COMMA  KC_QUOTE  KC_MINUS  
#   KC_LSFT   KC_I      KC_R      KC_S      KC_T      KC_G            KC_P      KC_N      KC_E      KC_A      KC_O      KC_SCOLON  
#   KC_LCTL   KC_Q      KC_V      KC_W      KC_D      KC_J            KC_B      KC_H      KC_SLASH  KC_DOT    KC_X      KC_LALT  
#   KC_1      KC_2      KC_SPACE  KC_LSFT   KC_3      KC_4            KC_4      KC_3      KC_BSPACE KC_ENTER  KC_2      KC_1  
#   KC_5      KC_6      KC_NO     KC_NO     KC_NO     KC_NO           KC_NO     KC_NO     KC_NO     KC_NO     KC_6      KC_5 
                        
#Layer 0
kbd.add_layer :default, %i[
  KC_ESCAPE KC_1      KC_2      KC_3      KC_4      KC_5            KC_6      KC_7      KC_8      KC_9      KC_0      KC_LALT  
  KC_TAB    KC_Y      KC_C      KC_L      KC_M      KC_K            KC_Z      KC_F      KC_U      KC_COMMA  KC_QUOTE  KC_MINUS  
  KC_LSFT   KC_I      KC_R      KC_S      KC_T      KC_G            KC_P      KC_N      KC_E      KC_A      KC_O      KC_SCOLON  
  KC_LCTL   KC_Q      KC_V      KC_W      KC_D      KC_J            KC_B      KC_H      KC_SLASH  KC_DOT    KC_X      KC_LALT  
  KC_7      KC_8      KC_SPACE  KC_LSFT   KC_NO     KC_NO           KC_NO     GAMING_LAYER   CTL_BKSPC KC_ENTER  KC_8      KC_7  
  KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO           KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_BSPACE 
]
kbd.add_layer :irstk, %i[
  KC_ESCAPE KC_1      KC_2      KC_3      KC_4      KC_5            KC_6      KC_7      KC_8      KC_9      KC_0      KC_LALT  
  KC_TAB    KC_Y      KC_C      KC_L      KC_M      KC_K            KC_Z      KC_F      KC_U      KC_COMMA  KC_QUOTE  KC_MINUS  
  KC_LSFT   KC_I      KC_R      KC_S      KC_T      KC_G            KC_P      KC_N      KC_E      KC_A      KC_O      KC_SCOLON  
  KC_LCTL   KC_Q      KC_V      KC_W      KC_D      KC_J            KC_B      KC_H      KC_SLASH  KC_DOT    KC_X      KC_LALT  
  KC_7      KC_8      KC_SPACE  KC_LSFT   KC_NO     KC_NO           KC_NO     GAMING_LAYER   CTL_BKSPC KC_ENTER  KC_8      KC_7  
  KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO           KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_BSPACE 
]
#Layer 1
kbd.add_layer :qwerty, %i[
  KC_ESCAPE KC_1      KC_2      KC_3      KC_4      KC_5            KC_6      KC_7      KC_8      KC_9      KC_0      KC_BSLASH  
  KC_TAB    KC_Q      KC_W      KC_E      KC_R      KC_T            KC_Y      KC_U      KC_I      KC_O      KC_P      KC_MINUS  
  KC_LSFT   KC_A      KC_S      KC_D      KC_F      KC_G            KC_H      KC_J      KC_K      KC_L      KC_SCOLON KC_QUOTE  
  KC_LCTL   KC_Z      KC_X      KC_C      KC_V      KC_B            KC_N      KC_M      KC_COMMA  KC_DOT    KC_SLASH  KC_RCTL  
  KC_7      KC_8      KC_SPACE  KC_LSFT   KC_NO     SPC_LAYER1           KC_NO     KC_NO     KC_BSPACE KC_ENTER  KC_8      KC_7  
  KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO           KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO  
]
#Layer 2
kbd.add_layer :gaming, %i[
  KC_NO     KC_ESCAPE KC_1      KC_2      KC_3      KC_4            KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO  
  KC_NO     KC_TAB    KC_Q      KC_W      KC_E      KC_R            KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO  
  KC_NO     KC_LSFT   KC_A      KC_S      KC_D      KC_F            KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO  
  KC_NO     KC_LCTL   KC_Z      KC_X      KC_C      KC_V            KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO  
  KC_T      KC_H      KC_SPACE  KC_LALT   KC_NO     KC_NO           KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO  
  KC_NO     DEFAULT_LAYER     KC_NO     KC_NO     KC_NO     KC_NO           KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO  
]
#Layer 3
kbd.add_layer :layerswitch, %i[
  KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO           KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO  
  KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO           KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO  
  KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO           KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO  
  KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO           KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO  
  KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO           KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO  
  KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO           KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO  
]
kbd.define_composite_key :CTL_BKSPC, %i(KC_LCTL KC_BSPACE)
kbd.define_composite_key :CUT_COMBO, %i(KC_LCTL KC_X)
kbd.define_composite_key :PST_COMBO, %i(KC_LCTL KC_V)
kbd.define_composite_key :CPY_COMBO, %i(KC_LCTL KC_C)
kbd.define_composite_key :UNDO_COMBO, %i(KC_LCTL KC_Z)
kbd.define_composite_key :REDO_COMBO, %i(KC_LCTL KC_Y)

kbd.define_mode_key :CUT_ORX [KC_X, :CUT_COMBO, 200, 150] 
kbd.define_mode_key :PST_ORV [KC_V, :PST_COMBO, 200, 150]
kbd.define_mode_key :CPY_ORC [KC_C, :CPY_COMBO, 200, 150]
kbd.define_mode_key :UNDO_ORX [KC_X, :CUT_COMBO, 200, 150]

kbd.define_mode_key :GAMING_LAYER, [ Proc.new { kbd.default_layer = :gaming}, nil, 200, nil ]
kbd.define_mode_key :DEFAULT_LAYER, [ Proc.new { kbd.default_layer = :irstk}, nil, 300, nil ]
# kbd.define_mode_key :SPC_LAYER3, [ :qwerty, :qwerty, 200, 200 ]
kbd.start!
