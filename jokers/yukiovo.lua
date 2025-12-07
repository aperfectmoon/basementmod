
SMODS.Joker{ --yukiOVO
    key = "yukiovo",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'yukiOVO',
        ['text'] = {
            [1] = 'Retrigger all {C:dark_edition}{X:legendary,C:white}OVO{}{} Jokers 2 times',
            [2] = '{C:inactive}\"shes here!\"{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 0,
        y = 0
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 20,
    rarity = 4,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["basement_basement_jokers"] = true },
    in_pool = function(self, args)
        return (
            not args 
            or args.source ~= 'sho' and args.source ~= 'buf' and args.source ~= 'jud' 
            or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'uta' or args.source == 'wra'
        )
        and true
    end
}