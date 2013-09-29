espeak "Hello. The time is currently" 
espeak "`date "+%l %M"`" 
echo `weather fat` |  awk '{print $1, $2, $3, $4". " $22, $23 " fahrenheit.", $26, $27, $28, $29, $30, $31, $32, $33, $34, $35, $36}' | espeak
# echo  `weather -f fat |grep FRESNO| awk {'print "Forcast for today. High of ", $2 ". Low of "$3"." '}` | espeak
#!/bin/bash

current_date=`date | awk {'print $2"/"$3"/"$6'}`
tomorrow_date=`date --date='2 days' | awk {'print $2"/"$3"/"$6'}`
echo `gcalcli --user googleusername --pw 'googlepassword' agenda $current_date $tomorrow_date`  | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g" | espeak

exit 0;
