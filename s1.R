data=read.csv('epiSEIHCRD_combAge.csv')
data$t=as.Date(data$t,origin='2020-3-01')
data_plot=subset(data,subset = (data$t>='2020-07-01' & data$t<='2020-07-31'))
plot(data_plot$t,data_plot$H,type='l')
