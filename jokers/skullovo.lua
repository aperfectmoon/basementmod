
SMODS.Joker{ --skullOVO
    key = "skullovo",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'skullOVO',
        ['text'] = {
            [1] = 'This joker gains {X:red,C:white}X0.25{} Mult every',
            [2] = 'time an {C:dark_edition}{X:legendary,C:white}OVO{}{} Joker is sold',
            [3] = '{C:inactive}(Currently x1 Mult){}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 4,
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
    pools = { ["basement_basement_jokers"] = true }
}