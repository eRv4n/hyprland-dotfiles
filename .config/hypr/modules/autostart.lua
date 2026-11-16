-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
hl.on("hyprland.start", function()
  hl.exec_cmd("nm-applet")
  hl.exec_cmd("systemctl --user start hyprpolkitagent")
  hl.exec_cmd("hyprctl setcursor catppuccin-mocha-dark-cursors")
  hl.exec_cmd("xrdb -merge ~/.Xresources")
  hl.exec_cmd("waybar & hyprpaper & awww-daemon & swaync")
  hl.exec_cmd("swayosd-server &")
  hl.exec_cmd("hypridle")
end)
