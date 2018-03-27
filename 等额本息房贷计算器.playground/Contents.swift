//: 假设小波贷款买了一套房，房贷总价 150万元，利率4.9%，分期30年，首付3成。 求按等额本息还款方式下，每个月利息列表 和 购买此套房的总花费。


// m = 1+x+x^2+x^3+...+x^n
// xm = x+x^2+x^3+...+x^n+x^(n+1)
//xm-m = x^(n+1) - 1
// m = (x^(n+1) - 1)/(x - 1 )

// 月还款额 = 贷款总额*月利率*(1+月利率)^还款月数/【(1+月利率)^还款月数-1】
import Foundation
//房屋总价
let  price = 1_500_000.0
//贷款利率
let rate = 4.9 / 100
//分期年数
let yeas = 30
//月利率
let monthlyInterestRate = rate / Double(yeas)
//首付利率
let downPayRate = 0.3

//贷款总额
var loan = (price * (1 - downPayRate))

let k =  pow((1 + monthlyInterestRate) , Double(yeas * 12) )
//月还款额
let monthlyPayment = loan * monthlyInterestRate * pow((1 + monthlyInterestRate) , Double(yeas * 12) ) / (pow((1 + monthlyInterestRate) , Double(yeas * 12)) - 1)


//购买总花费
print("总花费:", Int(price + monthlyPayment * 12 * 30))
2889612 - 2273893
/*
 BX=等额本息还贷每月所还本金和利息总额
 B=等额本息还贷每月所还本金，
 a=贷款总金额
 i=贷款月利率，
 N=还贷总月数，
 n=第n个月
 X=等额本息还贷每月所还的利息
 
 等额本息还贷，先算每月还贷本息：BX=a*i(1+i)^N/[(1+i)^N-1]
 等额本息还贷第n个月还贷本金：
 B=a*i(1+i)^(n-1)/[(1+i)^N-1]
 等额本息还贷第n个月还贷利息：
 X=BX-B= a*i(1+i)^N/[(1+i)^N-1]- a*i(1+i)^(n-1)/[(1+i)^N-1]
 第一月还款利息  A*r
 第二月还款利息        A*r - X + A*r*r - X*r + X = （A*r－X）*（1＋r）^1＋X
 (A - X + A*r +(A*r - X)* (1+r) ) * r = ｛A－（X－A*r）－〔〔A－（X－A*r）〕*r〕｝*r = A*r－X*r+X*r^2-A*r^3
 (A*r-X)(r^2+2r+1)+X = A*r^3 -X*r^2 + 2*A*r^2 - 2*r*X + A*r =A*r^3 + A*r^2 - 2*r*X + A*r
 */


















