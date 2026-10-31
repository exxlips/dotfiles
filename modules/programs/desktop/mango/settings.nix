{
  ...
}:

{
  den.aspects.programs.desktop.mangowc.settings = {
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

            bind = [
              "SUPER,space,spawn,tofi"
              "SUPER,T,spawn,kitty"

              "SUPER+SHIFT,m,quit"
              "SUPER,q,killclient,"

              "SUPER,Tab,focusstack,next"
              "SUPER,Left,focusdir,left"
              "SUPER,Right,focusdir,right"
              "SUPER,Up,focusdir,up"
              "SUPER,Down,focusdir,down"

              "SUPER+SHIFT,Up,exchange_client,up"
              "SUPER+SHIFT,Down,exchange_client,down"
              "SUPER+SHIFT,Left,exchange_client,left"
              "SUPER+SHIFT,Right,exchange_client,right"

              "SUPER,g,toggleglobal,"
              "ALT,Tab,toggleoverview,"
              "SUPER,v,togglefloating,"
              "ALT,a,togglemaximizescreen,"
              "SUPER,f,togglefullscreen,"
              "ALT+SHIFT,f,togglefakefullscreen,"
              "SUPER,i,minimized,"
              "SUPER,o,toggleoverlay,"
              "SUPER+SHIFT,I,restore_minimized"
              "ALT,z,toggle_scratchpad"

              "ALT,e,set_proportion,1.0"
              "ALT,x,switch_proportion_preset,"

              "SUPER,n,switch_layout"

              "CTRL+ALT,Left,viewtoleft,0"
              "CTRL,Left,viewtoleft_have_client,0"
              "CTRL+ALT,Right,viewtoright,0"
              "CTRL,Right,viewtoright_have_client,0"

              "CTRL+SUPER,Left,tagtoleft,0"
              "CTRL+SUPER,Right,tagtoright,0"

              "SUPER,1,view,1,0"
              "SUPER,2,view,2,0"
              "SUPER,3,view,3,0"
              "SUPER,4,view,4,0"
              "SUPER,5,view,5,0"
              "SUPER,6,view,6,0"
              "SUPER,7,view,7,0"
              "SUPER,8,view,8,0"
              "SUPER,9,view,9,0"

              "SUPER+SHIFT,1,tag,1,0"
              "SUPER+SHIFT,2,tag,2,0"
              "SUPER+SHIFT,3,tag,3,0"
              "SUPER+SHIFT,4,tag,4,0"
              "SUPER+SHIFT,5,tag,5,0"
              "SUPER+SHIFT,6,tag,6,0"
              "SUPER+SHIFT,7,tag,7,0"
              "SUPER+SHIFT,8,tag,8,0"
              "SUPER+SHIFT,9,tag,9,0"

              "ALT+SHIFT,Left,focusmon,left"
              "ALT+SHIFT,Right,focusmon,right"
              "CTRL+ALT+SHIFT,Left,tagmon,left"
              "CTRL+ALT+SHIFT,Right,tagmon,right"
              "ALT+SHIFT,X,incgaps,1"
              "ALT+SHIFT,Z,incgaps,-1"
              "ALT+SHIFT,R,togglegaps"

              "CTRL+SHIFT,Up,movewin,+0,-50"
              "CTRL+SHIFT,Down,movewin,+0,+50"
              "CTRL+SHIFT,Left,movewin,-50,+0"
              "CTRL+SHIFT,Right,movewin,+50,+0"

              "SUPER+ALT,Up,resizewin,+0,-50"
              "SUPER+ALT,Down,resizewin,+0,+50"
              "SUPER+ALT,Left,resizewin,-50,+0"
              "SUPER+ALT,Right,resizewin,+50,+0"
            ];
          };

          autostart_sh = ''
            swaybg -m fill -i "$HOME/dotfiles/wallpapers/some-city-i-dont-remember.jpg" &
          '';
        };
      };
  };
}
