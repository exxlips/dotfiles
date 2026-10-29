{
  ...
}:

{
  den.aspects.compositors.mangowc.settings = {
    homeManager =
      {
        ...
      }:
      {
        wayland.windowManager.mango = {
          settings = {
            border_radius = 12;
            focused_opacity = 1.0;
            unfocused_opacity = 0.9;

            scroller = {
              structs = 32;
              default_proportion = 0.7;
              focus_center = 1;
              prefer_center = 1;
              default_proportion_single = 1.0;
              proportion_preset = "0.5, 0.8, 1.0";
            };

            hotarea_size = 10;

            edge_scroller_pointer_focus = 1;
            circle_layout = "scroller, vertical_scroller";

            xkb_rules_layout = "us, ru";

            autostart_sh = ''
              waybar &
              swaybg 
            '';

            bind = [
              "SUPER,Return,spawn,kitty"
              "SUPER,space,spawn,tofi"
              "SUPER,q,kill_window"

              "SUPER,Left,focus_column_left"
              "SUPER,Right,focus_column_right"
              "SUPER,Up,focus_window_up"
              "SUPER,Down,focus_window_down"
              "SUPER,h,focus_column_left"
              "SUPER,l,focus_column_right"
              "SUPER,k,focus_window_up"
              "SUPER,j,focus_window_down"

              "SUPER_CTRL,Left,move_column_left"
              "SUPER_CTRL,Right,move_column_right"
              "SUPER_CTRL,Up,move_window_up"
              "SUPER_CTRL,Down,move_window_down"
              "SUPER_CTRL,h,move_column_left"
              "SUPER_CTRL,l,move_column_right"
              "SUPER_CTRL,k,move_window_up"
              "SUPER_CTRL,j,move_window_down"

              "SUPER,Home,focus_column_first"
              "SUPER,End,focus_column_last"
              "SUPER_CTRL,Home,move_column_to_first"
              "SUPER_CTRL,End,move_column_to_last"

              "SUPER_SHIFT,Left,focus_monitor_left"
              "SUPER_SHIFT,Right,focus_monitor_right"
              "SUPER_SHIFT,h,focus_monitor_left"
              "SUPER_SHIFT,l,focus_monitor_right"
              "SUPER_SHIFT_CTRL,Left,move_column_to_monitor_left"
              "SUPER_SHIFT_CTRL,Right,move_column_to_monitor_right"
              "SUPER_SHIFT_CTRL,h,move_column_to_monitor_left"
              "SUPER_SHIFT_CTRL,l,move_column_to_monitor_right"

              "SUPER,1,focus_workspace,1"
              "SUPER,2,focus_workspace,2"
              "SUPER,3,focus_workspace,3"
              "SUPER,4,focus_workspace,4"
              "SUPER,5,focus_workspace,5"
              "SUPER,6,focus_workspace,6"
              "SUPER,7,focus_workspace,7"
              "SUPER,8,focus_workspace,8"
              "SUPER,9,focus_workspace,9"

              "SUPER_CTRL,1,move_column_to_workspace,1"
              "SUPER_CTRL,2,move_column_to_workspace,2"
              "SUPER_CTRL,3,move_column_to_workspace,3"
              "SUPER_CTRL,4,move_column_to_workspace,4"
              "SUPER_CTRL,5,move_column_to_workspace,5"
              "SUPER_CTRL,6,move_column_to_workspace,6"
              "SUPER_CTRL,7,move_column_to_workspace,7"
              "SUPER_CTRL,8,move_column_to_workspace,8"
              "SUPER_CTRL,9,move_column_to_workspace,9"

              "SUPER_SHIFT,1,move_window_to_workspace,1"
              "SUPER_SHIFT,2,move_window_to_workspace,2"
              "SUPER_SHIFT,3,move_window_to_workspace,3"
              "SUPER_SHIFT,4,move_window_to_workspace,4"
              "SUPER_SHIFT,5,move_window_to_workspace,5"
              "SUPER_SHIFT,6,move_window_to_workspace,6"
              "SUPER_SHIFT,7,move_window_to_workspace,7"
              "SUPER_SHIFT,8,move_window_to_workspace,8"
              "SUPER_SHIFT,9,move_window_to_workspace,9"

              "SUPER,minus,set_column_width,-10%"
              "SUPER,equal,set_column_width,+10%"
              "SUPER_SHIFT,minus,set_window_height,-10%"
              "SUPER_SHIFT,equal,set_window_height,+10%"
              "SUPER,r,reset_window_size"

              "SUPER,f,toggle_fullscreen"
              "SUPER,m,toggle_maximize"
              "SUPER,c,center_window"

              "SUPER,comma,consume_window_into_column"
              "SUPER,period,expel_window_from_column"
              "SUPER,bracketleft,consume_or_expel_left"
              "SUPER,bracketright,consume_or_expel_right"

              "SUPER_SHIFT,e,quit"
              "SUPER_SHIFT,r,reload_config"
              "SUPER,Print,spawn,grim"
            ];
          };
        };
      };
  };
}
