hl.on("hyprland.start", function()
    hl.exec_cmd("~/.config/hypr/scripts/awww.sh")
    hl.exec_cmd("hyprpm reload -n")
end)
