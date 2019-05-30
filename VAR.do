投资者情绪与A股市场回报
数据预处理
gen data=m(2003-03)+ _n-1
format %tm data
tsset data
画图并描述
graph query,schemes
tsline c y ,scheme(sj)
summarize c
return list
summarize y
return list
平稳性检验
regress D.c L.c L.D.c
regress D.y L.y L.D.y
dfuller c
dfuller y
dfuller c,regress lags(0)？
dfuller y,regress lags(0)？
dfgls c
dfgls y
pperron c
pperron y
LM检验
qui reg L(0/1).c L.c
estat bgodfrey,lags(1 2)
qui reg L(0/2).c L.c
estat bgodfrey,lags(1 2)
dfuller c,lags(2)
qui reg L(0/1).y L.y
estat bgodfrey,lags(1 2)
qui reg L(0/2).y L.y
estat bgodfrey,lags(1 2)
dfuller y,lags(1)
VAR模型的建立
varbasic c y,lags(1/2) step(12)?
varlmar
varsoc c y,maxlag(12)
协整分析
vecrank c y,max trend(constant) lags(2)
格兰杰因果检验
vargranger
脉冲响应与方差分解
irf table irf
irf table fevd
irf graph irf
irf graph fevd

牛熊市分析
单因素线性回归
reg y c
reg y c RiskPremium SMB HML
