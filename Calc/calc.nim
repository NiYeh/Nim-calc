import wNim
import strutils

# 視窗名稱 大小
let app = App()
let frame = Frame(title="Calc", size=(340, 520))
let panel = Panel(frame)

panel.backgroundColor = wGrey

# =============================================================== ***

let
  # 字體設置
  # 0~9 按鍵
  btn0 = Button(panel, label="0")
  btn1 = Button(panel, label="1")
  btn2 = Button(panel, label="2")
  btn3 = Button(panel, label="3")
  btn4 = Button(panel, label="4")
  btn5 = Button(panel, label="5")
  btn6 = Button(panel, label="6")
  btn7 = Button(panel, label="7")
  btn8 = Button(panel, label="8")
  btn9 = Button(panel, label="9")

  # 運算符號按鍵
  addbtn = Button(panel, label="+")
  subbtn = Button(panel, label="-")
  mulbtn = Button(panel, label="*")
  divbtn = Button(panel, label="/")
  etcbtn = Button(panel, label="=")

  clear = Button(panel, label="清空")

  # 文字內容
  box1 = StaticLine(panel)
  box2 = StaticLine(panel)
  box3 = StaticLine(panel)

box1.label = "請輸入數字"
box2.label = "請輸入運算符號"
box3.label = "請輸入數字"

var
  num1 = ""
  op = ""
  num2 = ""

# 大小設置
btn0.size = (200,50)
btn1.size = (50,50)
btn2.size = (50,50)
btn3.size = (50,50)
btn4.size = (50,50)
btn5.size = (50,50)
btn6.size = (50,50)
btn7.size = (50,50)
btn8.size = (50,50)
btn9.size = (50,50)

addbtn.size = (60,120)
subbtn.size = (50,50)
mulbtn.size = (50,50)
divbtn.size = (50,50)
etcbtn.size = (60,120)

clear.size = (50,50)

# 坐標設置
addbtn.position = (250,210)
subbtn.position = (30,120)
mulbtn.position = (100,120)
divbtn.position = (170,120)
etcbtn.position = (250,350)

clear.position = (240,120)

btn0.position = (30,420)
btn1.position = (30,190)
btn2.position = (100,190)
btn3.position = (170,190)
btn4.position = (30,270)
btn5.position = (100,270)
btn6.position = (170,270)
btn7.position = (30,350)
btn8.position = (100,350)
btn9.position = (170,350)

btn0.backgroundColor = wBlack
btn1.backgroundColor = wBlack
btn2.backgroundColor = wBlack
btn3.backgroundColor = wBlack
btn4.backgroundColor = wBlack
btn5.backgroundColor = wBlack
btn6.backgroundColor = wBlack
btn7.backgroundColor = wBlack
btn8.backgroundColor = wBlack
btn9.backgroundColor = wBlack

addbtn.backgroundColor = wBlack
subbtn.backgroundColor = wBlack
mulbtn.backgroundColor = wBlack
divbtn.backgroundColor = wBlack
etcbtn.backgroundColor = wBlack
clear.backgroundColor = wBlack

box1.size = (200, 30)
box1.position = (50, 5)

box2.size = (200, 30)
box2.position = (50, 45)

box3.size = (200, 30)
box3.position = (50, 85)

# =============================================================== ***

# 函數
proc changText0() =
  if op == "":
    num1.add "0"
    box1.label = $num1
  else:
    num2.add "0"
    box3.label = $num2
proc changText1() =
  if op == "":
    num1.add "1"
    box1.label = $num1
  else:
    num2.add "1"
    box3.label = $num2
proc changText2() =
  if op == "":
    num1.add "2"
    box1.label = $num1
  else:
    num2.add "2"
    box3.label = $num2
proc changText3() =
  if op == "":
    num1.add "3"
    box1.label = $num1
  else:
    num2.add "3"
    box3.label = $num2
proc changText4() =
  if op == "":
    num1.add "4"
    box1.label = $num1
  else:
    num2.add "4"
    box3.label = $num2
proc changText5() =
  if op == "":
    num1.add "5"
    box1.label = $num1
  else:
    num2.add "5"
    box3.label = $num2
proc changText6() =
  if op == "":
    num1.add "6"
    box1.label = $num1
  else:
    num2.add "6"
    box3.label = $num2
proc changText7() =
  if op == "":
    num1.add "7"
    box1.label = $num1
  else:
    num2.add "7"
    box3.label = $num2
proc changText8() =
  if op == "":
    num1.add "8"
    box1.label = $num1
  else:
    num2.add "8"
    box3.label = $num2
proc changText9() =
  if op == "":
    num1.add "9"
    box1.label = $num1
  else:
    num2.add "9"
    box3.label = $num2

proc addText() =
  op.add "+"
  box2.label = $op
proc subText() =
  op.add "-"
  box2.label = $op
proc mulText() =
  op.add "*"
  box2.label = $op
proc divText() =
  op.add "/"
  box2.label = $op

proc clearAll() =
  num1 = ""
  op = ""
  num2 = ""
  box1.label = "請輸入數字"
  box2.label = "請輸入運算符號"
  box3.label = "請輸入數字"


proc etcNum() =
  var
    n1 = parseInt(num1)
    n2 = parseInt(num2)

  case op:
    of "+":
      MessageDialog(panel, $(n1+n2), "答案").display()
    of "-":
      MessageDialog(panel, $(n1-n2), "答案").display()
    of "*":
      MessageDialog(panel, $(n1*n2), "答案").display()
    of "/":
      MessageDialog(panel, $(n1/n2), "答案").display()

btn0.connect(wEvent_Button, changText0)
btn1.connect(wEvent_Button, changText1)
btn2.connect(wEvent_Button, changText2)
btn3.connect(wEvent_Button, changText3)
btn4.connect(wEvent_Button, changText4)
btn5.connect(wEvent_Button, changText5)
btn6.connect(wEvent_Button, changText6)
btn7.connect(wEvent_Button, changText7)
btn8.connect(wEvent_Button, changText8)
btn9.connect(wEvent_Button, changText9)

addbtn.connect(wEvent_Button, addText)
subbtn.connect(wEvent_Button, subText)
mulbtn.connect(wEvent_Button, mulText)
divbtn.connect(wEvent_Button, divText)

clear.connect(wEvent_Button, clearAll)
etcbtn.connect(wEvent_Button, etcNum)

# 結束進程
frame.center()
frame.show()
app.mainLoop()
