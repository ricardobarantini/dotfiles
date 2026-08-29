-- Apps
hl.bind("SUPER + return", hl.dsp.exec_cmd("uwsm app -- ghostty"))
hl.bind("SUPER + space", hl.dsp.exec_cmd("uwsm app -- walker --hideqa --nohints desktopapplications"))
hl.bind("SUPER + B", hl.dsp.exec_cmd("uwsm app -- flatpak run app.zen_browser.zen --browser --disable-features=WaylandWpColorManagerV1"))
hl.bind("SUPER + G", hl.dsp.exec_cmd("uwsm app -- flatpak run me.proton.Pass"))
hl.bind("SUPER + O", hl.dsp.exec_cmd("uwsm app -- flatpak run md.obsidian.Obsidian"))
hl.bind("SUPER + E", hl.dsp.exec_cmd("uwsm app -- nautilus --new-window"))

-- Scripts
hl.bind("SUPER + ALT + B", hl.dsp.exec_cmd("~/.config/hypr/scripts/awww.sh")) -- Change wallpaper

-- Window
hl.bind("SUPER + Q", hl.dsp.window.close())

-- Session
hl.bind("CTRL + SHIFT + ALT + P", hl.dsp.exec_cmd("hyprshutdown -t 'Shutting down...' --post-cmd 'shutdown -P 0'"))
hl.bind("CTRL + SHIFT + ALT + R", hl.dsp.exec_cmd("hyprshutdown -t 'Restarting...' --post-cmd 'reboot'"))
hl.bind("CTRL + SHIFT + ALT + S", hl.dsp.exec_cmd("systemctl suspend"))
hl.bind("CTRL + SHIFT + ALT + L", hl.dsp.exec_cmd("~/.config/hypr/scripts/hyprlock.sh"))

-- Tiling
hl.bind("SUPER + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + P", hl.dsp.window.pseudo())
hl.bind("SUPER + J", hl.dsp.layout("togglesplit")) -- dwindle only

-- Move focus with SUPER + arrow keys
hl.bind("SUPER + left",  hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + right", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + up",    hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + down",  hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
hl.bind("SUPER + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind("SUPER + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind("SUPER + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind("SUPER + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind("SUPER + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind("SUPER + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind("SUPER + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind("SUPER + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind("SUPER + 9", hl.dsp.focus({ workspace = 9 }))
hl.bind("SUPER + 0", hl.dsp.focus({ workspace = 10 }))

-- Move active window to a workspace with mainMod + SHIFT + [0-9]
hl.bind("SUPER + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }))
hl.bind("SUPER + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }))
hl.bind("SUPER + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }))
hl.bind("SUPER + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }))
hl.bind("SUPER + SHIFT + 5", hl.dsp.window.move({ workspace = 5 }))
hl.bind("SUPER + SHIFT + 6", hl.dsp.window.move({ workspace = 6 }))
hl.bind("SUPER + SHIFT + 7", hl.dsp.window.move({ workspace = 7 }))
hl.bind("SUPER + SHIFT + 8", hl.dsp.window.move({ workspace = 8 }))
hl.bind("SUPER + SHIFT + 9", hl.dsp.window.move({ workspace = 9 }))
hl.bind("SUPER + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))

-- Tab between workspaces
hl.bind("SUPER + TAB", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + SHIFT + TAB", hl.dsp.focus({ workspace = "e-1" }))

-- Swap active window with the one next to it with SUPER + SHIFT + arrow keys
hl.bind("SUPER + SHIFT + left", hl.dsp.window.swap({ direction = "left" }))
hl.bind("SUPER + SHIFT + right", hl.dsp.window.swap({ direction = "right" }))
hl.bind("SUPER + SHIFT + up", hl.dsp.window.swap({ direction = "up" }))
hl.bind("SUPER + SHIFT + down", hl.dsp.window.swap({ direction = "down" }))

-- Example special workspace (scratchpad)
hl.bind("SUPER + s", hl.dsp.workspace.toggle_special("magic"))
hl.bind("SUPER + SHIFT + s", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind("SUPER + mouse:272", hl.dsp.window.drag())
hl.bind("SUPER + mouse:273", hl.dsp.window.resize())

-- Resize active window
hl.bind("SUPER + minus", hl.dsp.window.resize({ x = -50, y = 0, relative = true }))
hl.bind("SUPER + equal", hl.dsp.window.resize({ x = 50, y = 0, relative = true }))
hl.bind("SUPER + SHIFT + minus", hl.dsp.window.resize({ x = 0, y = -50, relative = true }))
hl.bind("SUPER + SHIFT + equal", hl.dsp.window.resize({ x = 0 , y = 50, relative = true }))

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("swayosd-client --output-volume raise"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("swayosd-client --output-volume lower"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("swayosd-client --output-volume mute-toggle"))

hl.bind("SUPER + CTRL + up", hl.dsp.exec_cmd("swayosd-client --output-volume raise"))
hl.bind("SUPER + CTRL + down", hl.dsp.exec_cmd("swayosd-client --output-volume lower"))
hl.bind("SUPER + CTRL + m", hl.dsp.exec_cmd("swayosd-client --output-volume mute-toggle"))

-- Brightness
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("swayosd-client --brightness raise"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("swayosd-client --brightness lower"))

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("swayosd-client --playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("swayosd-client --playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("swayosd-client --playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("swayosd-client --playerctl previous"),   { locked = true })

-- Screenshots
hl.bind("PRINT", hl.dsp.exec_cmd("~/.config/hypr/scripts/screenshot.sh output"))
hl.bind("SHIFT + PRINT", hl.dsp.exec_cmd("~/.config/hypr/scripts/screenshot.sh region"))
hl.bind("SUPER + code:135", hl.dsp.exec_cmd("~/.config/hypr/scripts/screenshot.sh output"))
hl.bind("SUPER + SHIFT + code:135", hl.dsp.exec_cmd("~/.config/hypr/scripts/screenshot.sh output"))

-- Calculator
hl.bind("XF86Calculator", hl.dsp.exec_cmd("uwsm app -- qalculate-gtk"))
