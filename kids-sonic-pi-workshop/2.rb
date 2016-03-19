# This code is presented under an MIT License: https://opensource.org/licenses/MIT
# Attribution is optional, but appreciated.  Please give attribution to Scott Fradkin, http://www.fradkin.com

###########################

define :wash_face do
  sample :bd_haus
end

define :brush_teeth do
  sample :perc_bell
end

define :slurp_food do
  play :c4
  sleep 0.5
  play :e4
  sleep 0.5
  play :fs4
  sleep 0.5
end

wash_face
sleep 1
brush_teeth
sleep 1
4.times do
  slurp_food
end
brush_teeth
