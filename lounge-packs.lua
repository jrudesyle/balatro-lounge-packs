--- STEAMODDED HEADER
--- MOD_NAME: Lounge Packs
--- MOD_ID: lounge-packs
--- MOD_AUTHOR: [rudesyle]
--- MOD_DESCRIPTION: Switch between Vegas casino music themes: Classic, Modern, or Lounge
--- VERSION: 1.0.0

local MOD = SMODS.current_mod

-- Music pack definitions
local MUSIC_PACKS = {
    classic = {
        name = "Vegas Classic",
        tracks = {
            "01-swing-circus.ogg",
            "02-swingin-shoes.ogg",
            "03-jazz-comedy.ogg",
            "04-bossa-antigua.ogg"
        }
    },
    modern = {
        name = "Vegas Modern",
        tracks = {
            "01-pixel-peeker.ogg",
            "02-electrodoodle.ogg",
            "03-chill-wave.ogg"
        }
    },
    lounge = {
        name = "Vegas Lounge",
        tracks = {
            "01-lobby-time.ogg",
            "02-smooth-lovin.ogg"
        }
    }
}

-- Config callbacks
G.FUNCS.lp_set_pack = function(args)
    local packs = {"classic", "modern", "lounge"}
    MOD.config.selected_pack = packs[args.to_key]
end

G.FUNCS.lp_save = function(e)
    SMODS.save_mod_config(MOD)
    
    -- Show a simple notification instead of trying to auto-install
    -- (Auto-install via os.execute can crash if paths are wrong)
    local selected = MOD.config.selected_pack or "classic"
    local pack_name = MUSIC_PACKS[selected].name
    
    attention_text({
        text = "Theme set to: " .. pack_name,
        scale = 0.4,
        hold = 3.0,
        align = 'cm',
        major = G.ROOM_ATTACH,
        offset = {x = 0, y = 2},
        colour = G.C.GREEN,
    })
    
    G.FUNCS.exit_overlay_menu(e)
end

-- Config tab UI
MOD.config_tab = function()
    local pack_options = {}
    local current_idx = 1
    local packs_order = {"classic", "modern", "lounge"}
    
    for i, pack_id in ipairs(packs_order) do
        table.insert(pack_options, MUSIC_PACKS[pack_id].name)
        if MOD.config.selected_pack == pack_id then
            current_idx = i
        end
    end

    return {
        n = G.UIT.ROOT,
        config = { align = "tm", padding = 0.2, minw = 6 },
        nodes = {
            {n = G.UIT.R, config = {align = "cm", padding = 0.15},
             nodes = {
                create_option_cycle({
                    label = "Music Theme",
                    options = pack_options,
                    opt_callback = 'lp_set_pack',
                    current_option = current_idx,
                    colour = G.C.PURPLE,
                    no_do_blur = true,
                })
            }},
            {n = G.UIT.R, config = {align = "cm", padding = 0.1},
             nodes = {
                {n = G.UIT.T, config = {
                    text = "After saving, run: ./INSTALL-MUSIC.sh",
                    scale = 0.35,
                    colour = G.C.ORANGE
                }}
            }},
            {n = G.UIT.R, config = {align = "cm", padding = 0.05},
             nodes = {
                {n = G.UIT.T, config = {
                    text = "Then restart Balatro",
                    scale = 0.35,
                    colour = G.C.UI.TEXT_LIGHT
                }}
            }},
            {n = G.UIT.R, config = {align = "cm", padding = 0.2},
             nodes = {
                UIBox_button({
                    colour = G.C.GREEN,
                    button = 'lp_save',
                    label = {"Save"},
                    minw = 3,
                    scale = 0.4,
                })
            }}
        }
    }
end

-- Initialize on load
local function init_music()
    local selected = MOD.config.selected_pack or "classic"
    local pack = MUSIC_PACKS[selected]
    
    if not pack then
        print("[Lounge Packs] Invalid pack selected: " .. tostring(selected))
        return
    end
    
    print("[Lounge Packs] Loaded theme: " .. pack.name)
    -- Note: Actual music replacement would require LÖVE audio API hooks
    -- For now, this serves as the config framework
end

-- Run on mod load
if G and G.STAGE == G.STAGES.RUN then
    init_music()
end
