<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat" />
<xsl:template match="/"> 

<html>
<head>
<title>wyrm.org - It's not what you think. It's what I think.</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" title="terminal" type="text/css" href="style/inventory.css" />
<link rel="alternate stylesheet" title="light mode" type="text/css" href="style/inventory-light.css" />
<link rel="alternate" type="application/rss+xml" title="RSS" href="https://wyrm.org/rss.xml" />
</head>
<body>

<div class="main">
 <div class="news">

	 <xsl:for-each select="news/newsitem">
	<h1><span id="{./headline/@postlink}"><xsl:copy-of select="headline" /></span></h1>
        <p class="dateline">Posted around <span class="date"><xsl:value-of select="./headline/@date" /></span> from the <span class="department"><xsl:value-of select="./@department" /> Dept.</span> &#183; <a href="#{./headline/@postlink}" class="postlink">Link to this post</a></p>	 

<div class="newsitem">
	  <p><xsl:copy-of select="newsparagraph" /></p>
    </div>	 
</xsl:for-each>

 </div>
 <div class="right_bar">

<h2>Site Content</h2>
</div>

</body>
</html>

</xsl:template>
</xsl:stylesheet>

