advancement revoke @s only cchesed:bft/utility/quiver_activate

execute if entity @s[predicate=cchesed:bft/quiver/has_quiver,predicate=cchesed:bft/quiver/dual_projs,predicate=cchesed:bft/quiver/legal_proj] run function cchesed:bft/items/quiver/check_same
