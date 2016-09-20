<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet   version="1.0"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns="http://www.w3.org/1999/xhtml">  
<xsl:output method="xml" indent="yes" encoding="UTF-8"/>  
<xsl:template match="/Regionales">   
		 <html>      
		 <head> <title>FileSystem</title> </head>    
		 <body>       
		 <h1>Storage File System</h1>        
		 <table border="1">       
		 <!-- grid header -->       
		 <tr bgcolor="lightblue"><td>OSSRC1+OSSRC2</td><td>OSSRC3</td>         
		 </tr>         
		 <xsl:apply-templates select="Regional">         
		 <xsl:sort select="OSSRC1_OSSRC2" />         
		 </xsl:apply-templates>       
		 </table>     
		 </body>    
		 </html>  
 </xsl:template> 
 <xsl:template match="Regional">   
 <!-- grid value fields --> 
		  <tr>
		   <td><xsl:value-of select="OSSRC1_OSSRC2"/></td>      
		   <td>
		   <xsl:value-of select="OSSRC3"/> 		   
		   </td>      		   
		   </tr>  
   </xsl:template> 
</xsl:stylesheet>
