
SMODS.Joker{ --purplerave
    key = "purplerave",
    config = {
        extra = {
            chips0 = 20,
            respect = 0
        }
    },
    loc_txt = {
        ['name'] = 'purplerave',
        ['text'] = {
            [1] = 'At start of a Small Blind, create a {C:attention}yellowrave{} Joker',
            [2] = '{C:blue}+20 Chips{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 5,
        y = 0
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 5,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["basement_basement_jokers"] = true },
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            return {
                chips = 20
            }
        end
        if context.setting_blind  then
            if G.GAME.blind:get_type() == 'Small' then
                return {
                    func = function()
                        
                        local created_joker = false
                        if #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit then
                            created_joker = true
                            G.GAME.joker_buffer = G.GAME.joker_buffer + 1
                            G.E_MANAGER:add_event(Event({
                                func = function()
                                    local joker_card = SMODS.add_card({ set = 'Joker', key = 'j_basement_yellowrave' })
                                    if joker_card then
                                        
                                        
                                    end
                                    G.GAME.joker_buffer = 0
                                    return true
                                end
                            }))
                        end
                        if created_joker then
                            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Raving!", colour = G.C.BLUE})
                        end
                        return true
                    end
                }
            end
        end
    end
}