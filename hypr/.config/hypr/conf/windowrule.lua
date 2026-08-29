local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

hl.window_rule({
    name = "pavucontrol",
    match = {
        class = "^(org.pulseaudio.pavucontrol)$"
    },
    float = true,
    center = true,
    size = {800, 500}
})

hl.window_rule({
    name = "pickers",
    match = {
        class = "^([xX]dg-desktop-portal-gtk)$"
    },
    center = true,
    float = true,
    no_blur = true,
    border_size = 0,
    size = {1000, 600}
})

hl.window_rule({
    name = "telegram",
    match = {
        class = "org.telegram.desktop"
    },
    center = true,
    float = true,
    size = {400, 700}
})

hl.window_rule({
    name = "toptracker",
    match = {
        class = "TopTracker"
    },
    center = true,
    no_initial_focus = true,
})

hl.window_rule({
    name = "gnome-calendar",
    match = {
        class = "org.gnome.Calendar"
    },
    center = true,
    float = true,
    size = {1200, 700}
})

hl.window_rule({
    name = "calculator",
    match = {
        class = "qalculate-gtk"
    },
    center = true,
    float = true,
    size = {900, 600}
})

hl.window_rule({
    name = "nmtui",
    match = {
        title = "nmtui"
    },
    center = true,
    float = true,
    size = {1000, 600}
})

hl.window_rule({
    name = "special:magic",
    match = {
        workspace = "special:magic"
    },
    border_color = "rgb(f9e2af)"
})

hl.window_rule({
    name = "jetbrains-phpstorm",
    match = {
        class = "(jetbrains-phpstorm)",
        title = "^win(.*)"
    },
    no_blur = true,
    no_initial_focus = true,
    rounding = 0
})
