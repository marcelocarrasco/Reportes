#!/bin/bash
cd $1/Reportes/ReporteTemp/

if test -f rc_storage.htm
then
	rm rc_storage.htm
	rm rc_storage.xml
	rm style*.csv
else
	echo "no existe el archivo"
fi
echo "comienza j_info_storage.kjb"
#sh /home/oracle/Pentaho/data-integration/kitchen.sh -file=/home/oracle/Reportes/PentahoSourceFiles/JOBS/j_info_storage.kjb
echo "comienza j_report_allTEC.kjb" 
#sh /home/oracle/Pentaho/data-integration/kitchen.sh -file=/home/oracle/Reportes/PentahoSourceFiles/JOBS/j_report_allTEC.kjb
echo "comienza reporte_bhday_alltec.kjb"
sh /home/oracle/Pentaho/data-integration/kitchen.sh -file=/home/oracle/Reportes/PentahoSourceFiles/JOBS/reporte_bhday_alltec.kjb 
exit
