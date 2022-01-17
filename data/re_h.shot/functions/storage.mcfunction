
# 取得
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem
    data modify storage chuz:context Item.Offhand set from entity @s Inventory[{Slot:-106b}]

# 究極フック
    execute if data storage chuz:context Item.Mainhand.tag{ItemName:Re_Cross_Hookshot} run function re_h.shot:item/re_cross_hookshot/main
    execute if data storage chuz:context Item.Offhand.tag{ItemName:Re_Cross_Hookshot} run function re_h.shot:item/re_cross_hookshot/main

# ベーシックフック
    execute if data storage chuz:context Item.Mainhand.tag{ItemName:Re_Basic_Cross_Hookshot} run function re_h.shot:item/re_basic_cross_hookshot/main
    execute if data storage chuz:context Item.Offhand.tag{ItemName:Re_Basic_Cross_Hookshot} run function re_h.shot:item/re_basic_cross_hookshot/main
    
# 削除
    data remove storage chuz:context Item