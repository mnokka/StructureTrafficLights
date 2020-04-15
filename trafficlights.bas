WITH res=DAYS_BETWEEN(now(),last_edited):
if (res<-10;"(x)";res>-10 AND res<-5; "{color:blue}CHECK{color}"; res>-5 ;"{color:green}OK{color}")