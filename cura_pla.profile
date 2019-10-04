_description: Imported from cura-config-PLA.ini on 2018-05-18 15:15
_display_name: MakerGearM2
bottom_layer_speed: 30
bottom_thickness: 0.25
brim_line_count: 10
cool_head_lift: false
cool_min_feedrate: 10
cool_min_layer_time: 5
end_gcode:
- 'M104 S0

  M140 S0 ; turn off bed temperature

  M106 S255 ; Set fan to full power

  G1 X0  F10800 ; home X axis

  G91 ; Set relative positioning

  G1 Z30 F450 ; Lift 3cm

  G90 ; Return to absolute positioning

  G1 Y80 F10800 ; Set a sensible Y coordinate

  G1 F450 ; Set slow speed

  M106 S255 ; Set fan to full speed

  ; Now move the X axis back and forth for a while to cool

  G1 X160 ; Move X to end

  G1 X40; Move X to start

  G1 X160 ; Move X to end

  ;G1 X40; Move X to start

  ;G1 X160 ; Move X to end

  ;G1 X40; Move X to start

  ;G1 X160 ; Move X to end

  G1 X0; Home X

  M106 S0 ; Disable fan

  G1 F10800 ; High speed

  G1 Y220 ; present parts for removal

  M84 ; disable motors

  M108 S0 ; turn off extruder and electronics fans'
- ';End GCode

  M104 T0 S0                     ;extruder heater off

  M104 T1 S0                     ;extruder heater off

  M140 S0                     ;heated bed heater off (if you have it)

  G91                                    ;relative positioning

  G1 E-1 F300                            ;retract the filament a bit before lifting
  the nozzle, to release some of the pressure

  G1 Z+0.5 E-5 X-20 Y-20 F{travel_speed} ;move Z up a bit and retract filament even
  more

  G28 X0 Y0                              ;move X/Y to min endstops, so the head is
  out of the way

  M84                         ;steppers off

  G90                         ;absolute positioning

  ;{profile_string}'
- ';End GCode

  M104 T0 S0                     ;extruder heater off

  M104 T1 S0                     ;extruder heater off

  M104 T2 S0                     ;extruder heater off

  M140 S0                     ;heated bed heater off (if you have it)

  G91                                    ;relative positioning

  G1 E-1 F300                            ;retract the filament a bit before lifting
  the nozzle, to release some of the pressure

  G1 Z+0.5 E-5 X-20 Y-20 F{travel_speed} ;move Z up a bit and retract filament even
  more

  G28 X0 Y0                              ;move X/Y to min endstops, so the head is
  out of the way

  M84                         ;steppers off

  G90                         ;absolute positioning

  ;{profile_string}'
- ';End GCode

  M104 T0 S0                     ;extruder heater off

  M104 T1 S0                     ;extruder heater off

  M104 T2 S0                     ;extruder heater off

  M104 T3 S0                     ;extruder heater off

  M140 S0                     ;heated bed heater off (if you have it)

  G91                                    ;relative positioning

  G1 E-1 F300                            ;retract the filament a bit before lifting
  the nozzle, to release some of the pressure

  G1 Z+0.5 E-5 X-20 Y-20 F{travel_speed} ;move Z up a bit and retract filament even
  more

  G28 X0 Y0                              ;move X/Y to min endstops, so the head is
  out of the way

  M84                         ;steppers off

  G90                         ;absolute positioning

  ;{profile_string}'
fan_enabled: true
fan_full_height: 0.5
fan_speed: 100
fan_speed_max: 100
filament_diameter:
- 1.75
- false
- false
- false
filament_flow: 92
fill_density: 30
fill_overlap: 15
first_layer_width_factor: 200
fix_horrible_extensive_stitching: false
fix_horrible_union_all_type_a: true
fix_horrible_union_all_type_b: false
fix_horrible_use_open_bits: false
follow_surface: false
infill_speed: 100
inner_shell_speed: 80
layer_height: 0.2
object_sink: 0.0
ooze_shield: false
outer_shell_speed: 50
overlap_dual: 0.15
platform_adhesion: brim
print_bed_temperature: 65
print_speed: 80
print_temperature:
- 190
- false
- false
- false
raft_airgap: 0.22
raft_base_linewidth: 1.0
raft_base_thickness: 0.3
raft_interface_linewidth: 0.4
raft_interface_thickness: 0.27
raft_line_spacing: 3.0
raft_margin: 5.0
raft_surface_layers: 2
retraction_amount: 1.0
retraction_combing: true
retraction_dual_amount: 16.5
retraction_enable: true
retraction_hop: 0.0
retraction_min_travel: 1.5
retraction_minimal_extrusion: 0.02
retraction_speed: 40.0
skirt_gap: 3.0
skirt_line_count: true
skirt_minimal_length: 150.0
solid_bottom: true
solid_layer_thickness: 0.6
solid_top: true
spiralize: false
start_gcode:
- 'M84 S0

  M301 P10 I0.9 D250 ; set better PID parameters

  M108 S155 ; make sure extruder and electronics fans are running

  M104 S{print_temperature}

  M140 S{print_bed_temperature}

  ; now we''ve started heating, but let''s move off the platform while we wait (and
  drool)

  G28 X0 Y0; home X and Y

  G1 F10800 ; set high speed

  G1 Y20 ; move into the platform along Y

  G1 X205 ; move off the platform end along X

  G28 Z0 ; home Z now - blobs won''t hit the platform

  G1 F400

  G1 Z10 ; lift Z a little

  M190 S{print_bed_temperature}

  M109 S{print_temperature} ; heat nozzle

  G28 Z0 ; home Z

  G92 E0 ; reset extruder position to 0

  G1 F300 ; set suitable speed

  G1 E25 ; extrude 25mm

  G92 E0 ; reset extruder position to 0

  G1 F10800 ; set high speed

  G1 X0 ; wipe nozzle and move to X0'
- ';Sliced at: {day} {date} {time}

  ;Basic settings: Layer height: {layer_height} Walls: {wall_thickness} Fill: {fill_density}

  ;Print time: {print_time}

  ;Filament used: {filament_amount}m {filament_weight}g

  ;Filament cost: {filament_cost}

  ;M190 S{print_bed_temperature} ;Uncomment to add your own bed temperature line

  ;M104 S{print_temperature} ;Uncomment to add your own temperature line

  ;M109 T1 S{print_temperature2} ;Uncomment to add your own temperature line

  ;M109 T0 S{print_temperature} ;Uncomment to add your own temperature line

  G21        ;metric values

  G90        ;absolute positioning

  M107       ;start with the fan off

  G28 X0 Y0  ;move X/Y to min endstops

  G28 Z0     ;move Z to min endstops

  G1 Z15.0 F{travel_speed} ;move the platform down 15mm

  T1                      ;Switch to the 2nd extruder

  G92 E0                  ;zero the extruded length

  G1 F200 E10             ;extrude 10mm of feed stock

  G92 E0                  ;zero the extruded length again

  G1 F200 E-{retraction_dual_amount}

  T0                      ;Switch to the first extruder

  G92 E0                  ;zero the extruded length

  G1 F200 E10             ;extrude 10mm of feed stock

  G92 E0                  ;zero the extruded length again

  G1 F{travel_speed}

  ;Put printing message on LCD screen

  M117 Printing...'
- ';Sliced at: {day} {date} {time}

  ;Basic settings: Layer height: {layer_height} Walls: {wall_thickness} Fill: {fill_density}

  ;Print time: {print_time}

  ;Filament used: {filament_amount}m {filament_weight}g

  ;Filament cost: {filament_cost}

  ;M190 S{print_bed_temperature} ;Uncomment to add your own bed temperature line

  ;M104 S{print_temperature} ;Uncomment to add your own temperature line

  ;M109 T1 S{print_temperature2} ;Uncomment to add your own temperature line

  ;M109 T0 S{print_temperature} ;Uncomment to add your own temperature line

  G21        ;metric values

  G90        ;absolute positioning

  M107       ;start with the fan off

  G28 X0 Y0  ;move X/Y to min endstops

  G28 Z0     ;move Z to min endstops

  G1 Z15.0 F{travel_speed} ;move the platform down 15mm

  T2                      ;Switch to the 2nd extruder

  G92 E0                  ;zero the extruded length

  G1 F200 E10             ;extrude 10mm of feed stock

  G92 E0                  ;zero the extruded length again

  G1 F200 E-{retraction_dual_amount}

  T1                      ;Switch to the 2nd extruder

  G92 E0                  ;zero the extruded length

  G1 F200 E10             ;extrude 10mm of feed stock

  G92 E0                  ;zero the extruded length again

  G1 F200 E-{retraction_dual_amount}

  T0                      ;Switch to the first extruder

  G92 E0                  ;zero the extruded length

  G1 F200 E10             ;extrude 10mm of feed stock

  G92 E0                  ;zero the extruded length again

  G1 F{travel_speed}

  ;Put printing message on LCD screen

  M117 Printing...'
- ';Sliced at: {day} {date} {time}

  ;Basic settings: Layer height: {layer_height} Walls: {wall_thickness} Fill: {fill_density}

  ;Print time: {print_time}

  ;Filament used: {filament_amount}m {filament_weight}g

  ;Filament cost: {filament_cost}

  ;M190 S{print_bed_temperature} ;Uncomment to add your own bed temperature line

  ;M104 S{print_temperature} ;Uncomment to add your own temperature line

  ;M109 T2 S{print_temperature2} ;Uncomment to add your own temperature line

  ;M109 T1 S{print_temperature2} ;Uncomment to add your own temperature line

  ;M109 T0 S{print_temperature} ;Uncomment to add your own temperature line

  G21        ;metric values

  G90        ;absolute positioning

  M107       ;start with the fan off

  G28 X0 Y0  ;move X/Y to min endstops

  G28 Z0     ;move Z to min endstops

  G1 Z15.0 F{travel_speed} ;move the platform down 15mm

  T3                      ;Switch to the 4th extruder

  G92 E0                  ;zero the extruded length

  G1 F200 E10             ;extrude 10mm of feed stock

  G92 E0                  ;zero the extruded length again

  G1 F200 E-{retraction_dual_amount}

  T2                      ;Switch to the 3th extruder

  G92 E0                  ;zero the extruded length

  G1 F200 E10             ;extrude 10mm of feed stock

  G92 E0                  ;zero the extruded length again

  G1 F200 E-{retraction_dual_amount}

  T1                      ;Switch to the 2nd extruder

  G92 E0                  ;zero the extruded length

  G1 F200 E10             ;extrude 10mm of feed stock

  G92 E0                  ;zero the extruded length again

  G1 F200 E-{retraction_dual_amount}

  T0                      ;Switch to the first extruder

  G92 E0                  ;zero the extruded length

  G1 F200 E10             ;extrude 10mm of feed stock

  G92 E0                  ;zero the extruded length again

  G1 F{travel_speed}

  ;Put printing message on LCD screen

  M117 Printing...'
support: none
support_angle: 60
support_dual_extrusion: both
support_fill_rate: 15
support_type: grid
support_xy_distance: 0.7
support_z_distance: 0.15
travel_speed: 300
wall_thickness: 0.8
wipe_tower: false
wipe_tower_volume: 15
