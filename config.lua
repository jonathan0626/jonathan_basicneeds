Config              = {}

-----------------------------------------------------------

--通知
--the notification will  be shown after you eat the drug.
Config.not1 = '你吃了~b~輕量補血藥片'
Config.not2 = '你吃了~b~大量補血藥片'
Config.not3 = '你吃了~b~輕量補盾藥片'
Config.not4 = '你吃了~b~大量補盾藥片'

-----------------------------------------------------------

--是否使用動作及聲音( true : 使用 ; false : 不使用)
--Actions & Sounds (true/false).
Config.useanimation = true

-----------------------------------------------------------

--補血程度(範圍 0.01 - 0.99)  若設定為負值應會導致無作用
--The extent of the blood supplementation(Range from 0.01 to 0.99).
--滿血是100滴 ，假設設定 0.1 即代表一次回復 100*0.1 = 10滴血
--For example : Suppose you set 0.1 ，this means you will reply to 10% of the max health.

Config.heal1 = 0.1 --第一個補血藥品 The first blood-replenishing drug.
Config.heal2 = 0.7 --第二個補血藥品 The second blood-replenishing drug.

-----------------------------------------------------------

--補盾程度(範圍 0 - 100 )
--The extent of the shield value supplementation(Range from 0 to 100).
--護盾滿的值是100，假設設定25 即代表補了1/4的護盾
--For example : Suppose you set 25 ，this means you will reply to 25% of the max shield value.
Config.heal3 = 25
Config.heal4 = 50

------------------------------------------------------------
