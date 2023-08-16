import strutils

echo "***==========計算機==========***"

var
  num1 = 0
  op:string
  num2 = 0

proc add(a, b:auto) =
  echo a + b

proc sub(a, b:auto) =
  echo a - b
  
proc mul(a, b:auto) =
  echo a * b

proc dive(a, b:auto) =
  echo a / b

proc input(s:string):auto =
  stdout.write s
  result = parseInt(stdin.readLine)

proc inputS(s:string):string =
  stdout.write s
  result = stdin.readLine

# while true:
#   num1 = input("輸入第一個你要做運算的數字(輸入-1停止運行):")
#   if num1 == -1:
#     break
#   op = inputS("輸入你要做運算的符號(輸入-1停止運行):")
#   if op == "-1":
#     break
#   num2 = input("輸入第二個你要做運算的數字(輸入-1停止運行):")
#   if num2 == -1:
#     break
#
#   case op
#     of "+":
#       add(num1, num2)
#     of "-":
#       sub(num1, num2)
#     of "*":
#       mul(num1, num2)
#     of "/":
#       dive(num1, num2)
#     else:
#       echo "輸入錯誤 請從新輸入一次..."









