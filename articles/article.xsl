<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat" />
<xsl:template match="/"> 

<html>
<head>
<title><xsl:value-of select="/articles/article/pagetitle" /></title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" title="terminal" type="text/css" href="/style/inventory.css" />
<link rel="alternate stylesheet" title="light mode" type="text/css" href="/style/inventory-light.css" />
</head>
<body>

<div class="main">

<xsl:for-each select="/articles/article">

<h1 class="articleheader"><xsl:copy-of select="articleheader" /></h1>
<p class="articleabstract"><xsl:copy-of select="articleabstract" /></p>
 <div class="mainarticle">
<div class="articletext"><xsl:copy-of select="articlebody" /></div>

<div class="articlefootnote">
  <h3 class="footnote">Footnotes</h3>
    <ol>
      <xsl:for-each select="/articles/article/footnotes/footnote">
        <li class="footanswer"><xsl:copy-of select="." /></li>
      </xsl:for-each>
    </ol>
</div>
</div>
</xsl:for-each>
<hr />

<p class="footer">This article was posted <xsl:value-of select="/articles/article/@date" />
        <xsl:choose>
                <xsl:when test="/articles/article/@updated"> and I last updated it on <xsl:value-of select="/articles/article/@updated" />.</xsl:when>
                <xsl:otherwise> and I haven't looked at it since. Proceed with caution.</xsl:otherwise>
        </xsl:choose> It is almost certainly factually inaccurate, but I thought it was worth posting anyway. </p>

 <hr />

<p><a href="./">Read more articles</a> &#183; <a href="/">Go back to the homepage</a></p>

</div>
</body>
</html>

</xsl:template>
</xsl:stylesheet>

