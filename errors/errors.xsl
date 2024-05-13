<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat" />
<xsl:template match="/"> 

<html>
<head>
<title>Bzzt!</title>
<link rel="stylesheet" type="text/css" href="../style/inventory.css" />
</head>
<body>

<div class="main">
 <div class="news">
<xsl:for-each select="news/content/newsitem">
	<h1><xsl:value-of select="headline" /></h1>
	 <xsl:for-each select="./newscontent">
	  <p><xsl:value-of select="newsparagraph" /></p>
	 </xsl:for-each>
</xsl:for-each>
 </div>
</div>
</body>
</html>

</xsl:template>
</xsl:stylesheet>

