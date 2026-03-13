#!/bin/bash
mkdir FILES
echo "INFO Abdullah logged in 
      WARNING Low battery 
      ERROR Password incorrect 
      INFO Wifi connected
      ERROR Username mismatch" > FILES/abdullah.log
echo "INFO Asad logged in 
      ERROR RAM failure 
      ERROR Hdd failure 
      WARNING Screen issue 
      INFO User logged out
      ERROR Revoke access" > FILES/asad.log
echo "INFO Urooba logged in 
      ERROR Cant connect to server 
      ERROR Server not responding 
      WARNING Hardware Failure
      INFO Dual Boot -- Linux Arch selected
      ERROR User logged out" > FILES/urooba.log

var="mainfile.txt"
echo "--System Log Report--" >> $var
echo "Date: $(date)" >> $var

for file in FILES/*.log; do
    echo "--- File: $file ---" >> $var
    echo "Total lines: $(wc -l < $file)" >> $var
    echo "Info count: $(grep -c "INFO" $file)" >> $var
    echo "Error count: $(grep -c "ERROR" $file)" >> $var
    echo "WARNING count: $(grep -c "WARNING" $file)" >> $var
done

echo "END OF REPORT" >> $var
echo "Report saved to $var"
cat $var
