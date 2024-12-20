-- File Name: visualizer.lua
-- File Path: /etc/mpv/scripts/visualizer.lua
-- Description: Script to make the on screen controller visible while seeking.

-- Copyright (c) 2024 Aryan
-- SPDX-Licence-Identifier: BSD-3-Clause

-- Version: 2.0.0

function show_osc()
    mp.commandv("script-message", "osc-show")
end

mp.register_event("seek", show_osc)
mp.observe_property("pause", "bool", show_osc)
