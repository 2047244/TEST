<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		<html>
		<head>
                <style>               
                table, th, td { 
                border: 2px solid black;
                border-collapse:collapse;
                }
                th, td {
                padding: 20px;       
                }
                </style>
            </head>
            <body>
                <h1 align="center">Employee Management System</h1>              
                    <table border="5" align="center">
                        <tr bgcolor="#3EA99F">
                            <th style="text-align:left">ID</th>
                            <th style="text-align:left">NAME</th>
                            <th style="text-align:left">Age</th>
                            <th style="text-align:left">Salary</th>
                            <th style="text-align:left">E-Mail</th>
                            <th style="text-align:left">MobileNumber</th>
                            <th style="text-align:left">Designation</th>
                            <th style="text-align:left">Promotion</th>
                        </tr>
                        <xsl:for-each select="Company/Employee">
                            <tr>                       
                                <td bgcolor="#C0C0C0">
                                    <xsl:value-of select="@ID"/>
                                </td>
                                <td bgcolor="#808080">
                                    <xsl:value-of select="Name"/>
                                </td>
                                <td bgcolor="#C0C0C0">
                                    <xsl:value-of select="Age"/>
                                </td>
                                <td bgcolor="#808080">
                                    <xsl:value-of select="Salary"/>
                                </td>
                                <td bgcolor="#C0C0C0">
                                    <xsl:value-of select="Email"/>
                                </td>
                                <td bgcolor="#808080">
                                    <xsl:value-of select="MobNum"/>
                                </td>
                                <td bgcolor="#C0C0C0">
                                    <xsl:value-of select="Designation"/>
                                </td>
                                <xsl:choose>
      								<xsl:when test="Age &gt; 49">
         								<td bgcolor="#808080">Associate Project Manager</td>
      								</xsl:when>
      								<xsl:when test="Age &gt; 40">
         								<td bgcolor="#808080">Team Leader</td>
      								</xsl:when>
      								<xsl:when test="Age &lt; 40">
         								<td bgcolor="#808080">Developer</td>
      								</xsl:when>
							      	<xsl:otherwise>
							      	</xsl:otherwise>
							     </xsl:choose>
                            </tr>
                        </xsl:for-each>
                    </table>
            </body>
        </html>
	</xsl:template>
</xsl:stylesheet>