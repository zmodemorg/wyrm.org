<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat" />
<xsl:template match="/"> 

<html>
<head>
<title>Blockages</title>
<meta charset="UTF-8" />
<link rel="stylesheet" title="terminal" type="text/css" href="../style/inventory.css" />
<link rel="alternate stylesheet" title="light mode" type="text/css" href="../style/inventory-light.css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>

<div class="main">
<h1 class="articleheader">Sites I block for one reason or another.</h1>
<p class="articleabstract">This is an infrequently-updated list of sites I block at the DNS level on my home network using a Pi-Hole or whatever other DNS solution I've been futzing around with. I already know that I'm blocking sites that you like or I'm not blocking sites that you don't like, so please don't email be about it.</p>
<p class="articleabstract">You can read more about this list <a href="https://wyrm.org/articles/timeback3.xml">here</a>. </p>

<div class="articlelist">

<h2 class="categoryheader">Category 1</h2>
<h3 class="categorysubhead">Category 1 explainer</h3>
<table class="blockedsites">
	<th>Site</th><th>URL(s)</th><th>Reason</th>
<xsl:for-each select="/index/site">

  <xsl:choose>
	  <xsl:when test="@category=1"><tr><td><xsl:value-of select="name" /></td><td><xsl:value-of select="url"/></td> <td><xsl:value-of select="reason" /></td></tr></xsl:when>

  </xsl:choose>
</xsl:for-each>

</table>

<h2 class="categoryheader">Category 2</h2>
<h3 class="categorysubhead">Category 2 explainer</h3>
<table class="blockedsites">
	<th>Site</th><th>URL(s)</th><th>Reason</th>
<xsl:for-each select="/index/site">

  <xsl:choose>
	  <xsl:when test="@category=2"><tr><td><xsl:value-of select="name" /></td><td><xsl:value-of select="url"/></td> <td><xsl:value-of select="reason" /></td></tr></xsl:when>

  </xsl:choose>
</xsl:for-each>

</table>

<h2 class="categoryheader">Category 5</h2>
<h3 class="categorysubhead">Category 5 explainer</h3>
<table class="blockedsites">
	<th>Site</th><th>URL(s)</th><th>Reason</th>
<xsl:for-each select="/index/site">

  <xsl:choose>
	  <xsl:when test="@category=5"><tr><td><xsl:value-of select="name" /></td><td><xsl:value-of select="url"/></td> <td><xsl:value-of select="reason" /></td></tr></xsl:when>

  </xsl:choose>
</xsl:for-each>

</table>

	</div>

<hr />

<p><a href="/">Go back to start</a></p>

</div>


</body>
</html>

</xsl:template>
</xsl:stylesheet>

