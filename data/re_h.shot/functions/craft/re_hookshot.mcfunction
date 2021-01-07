#まぁまずはアイテムが必要であろう
give @s minecraft:crossbow{display:{Name:'{"text":"Re: Ultimate Cross Hookshot","color":"gold","italic":false}',Lore:['{"text":" "}','{"text":"[RClick: Shoot]","color":"white","italic":false}','{"text":"[Sneak: Float]","color":"white","italic":false}','{"text":" "}','{"text":"今一度、あの空へと。","color":"gray","italic":false}']},HideFlags:5,Unbreakable:1b,CustomModelData:1,ItemName:Re_Cross_Hookshot,Charged:1b} 1

#次回以降も実行するためにレシピ没収
recipe take @s re_h.shot:re_cross_hookshot

#なんだこのチェストは！消えてもらおう
clear @s chest 1

#進捗消去
advancement revoke @s only re_h.shot:crafting/re_cross_hookshot