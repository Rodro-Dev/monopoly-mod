local function open_url(url)
    if love.system and love.system.openURL then
        love.system.openURL(url)
    end
end

G.FUNCS.monopoly_github = function()
    open_url("https://github.com/Rodro-Dev/monopoly-mod")
end

G.FUNCS.monopoly_issues = function()
    open_url("https://github.com/Rodro-Dev/monopoly-mod/issues")
end

G.FUNCS.monopoly_readme = function()
    open_url("https://github.com/Rodro-Dev/monopoly-mod#readme")
end

SMODS.current_mod.config_tab = function()
    return {
        n = G.UIT.ROOT,
        config = {
            align = "cm",
            padding = 0.15,
            colour = G.C.CLEAR
        },
        nodes = {
            {
                n = G.UIT.R,
                config = {
                    align = "cm",
                    padding = 0.15
                },
                nodes = {
                    {
                        n = G.UIT.T,
                        config = {
                            text = "Monopoly Mod",
                            scale = 0.6,
                            colour = G.C.WHITE,
                            shadow = true
                        }
                    }
                }
            },

            {
                n = G.UIT.R,
                config = {
                    align = "cm",
                    padding = 0.1
                },
                nodes = {
                    UIBox_button({
                        label = {"GitHub"},
                        button = "monopoly_github",
                        minw = 2.4,
                        minh = 0.6
                    }),

                    UIBox_button({
                        label = {"Report Bug"},
                        button = "monopoly_issues",
                        minw = 2.4,
                        minh = 0.6
                    })
                }
            },

            {
                n = G.UIT.R,
                config = {
                    align = "cm",
                    padding = 0.1
                },
                nodes = {
                    UIBox_button({
                        label = {"README"},
                        button = "monopoly_readme",
                        minw = 2.4,
                        minh = 0.6
                    })
                }
            }
        }
    }
end