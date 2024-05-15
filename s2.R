library('ggplot2')
data=read.csv('epiSEIHCRD_combAge.csv')
data$t=as.Date(data$t,origin='2020-3-01')
data_plot=subset(data,subset = (data$t>='2020-07-01' & data$t<='2020-12-31'))
# Update axis breaks to months
ggplot(data_plot, aes(x = t, y = H)) +
  geom_line(color='red') +
  scale_x_date(date_breaks = "1 month", date_labels = "%b") +labs(x='Months',y='Beds',title='Covid-19 Bed Requirments')

