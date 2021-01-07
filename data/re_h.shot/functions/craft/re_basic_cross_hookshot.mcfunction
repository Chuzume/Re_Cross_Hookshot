#まぁまずはアイテムが必要であろう
give @s minecraft:crossbow{display:{Name:'{"text":"Re: Basic Cross Hookshot","color":"aqua","italic":false}',Lore:['{"text":" "}','{"text":"[RClick: Shoot]","color":"white","italic":false}','{"text":"[Sneak: Float]","color":"white","italic":false}','{"text":" "}','{"text":"新たなる時代のフックショット。","color":"white","italic":false}','{"text":"究極の性能ではないが、それでも十分なほど。","color":"white","italic":false}']},HideFlags:5,Unbreakable:1b,CustomModelData:6,ItemName:Re_Basic_Cross_Hookshot,Charged:1b} 1

#次回以降も実行するためにレシピ没収
recipe take @s re_h.shot:re_basic_cross_hookshot

#なんだこのチェストは！消えてもらおう
clear @s chest 1

#進捗消去
advancement revoke @s only re_h.shot:crafting/re_basic_cross_hookshot