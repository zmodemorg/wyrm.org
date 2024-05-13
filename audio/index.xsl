<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat" />
<xsl:template match="/"> 

<html>
<head>
<title>Some spoken words about some stuff.</title>
<meta charset="UTF-8" />
<link rel="stylesheet" title="terminal" type="text/css" href="../style/inventory.css" />
<link rel="alternate stylesheet" title="light mode" type="text/css" href="../style/inventory-light.css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>

<div class="main">
<h1 class="articleheader">The Audioblog</h1>
<div class="articlelist">

<h2 class="categoryheader">Episode 1</h2>
<p>This is the description for the first show.</p>
<ul>

<xsl:for-each select="/index/show">

  <xsl:choose>
    <xsl:when test="@category=1"><li><span class="episodetitle"><xsl:value-of select="title" /></span> - <xsl:value-of select="summary"/> - <xsl:value-of select="@date" /> &#183; <a href="{@href}">Download</a> </li></xsl:when>

  </xsl:choose>
</xsl:for-each>

</ul>



	</div>

<hr />

<p><a href="/">Go back to start</a></p>

</div>


</body>
</html>

</xsl:template>
</xsl:stylesheet>

