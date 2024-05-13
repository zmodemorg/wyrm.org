<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat" />
<xsl:template match="/"> 

<html>
<head>
<title><xsl:value-of select="/blog/entry/pagetitle" /></title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" title="terminal" type="text/css" href="/style/inventory.css" />
<link rel="stylesheet" type="text/css" href="/style/blog.css" />
<link rel="alternate stylesheet" title="light mode" type="text/css" href="/style/inventory-light.css" />
</head>
<body>

<div class="main">

<xsl:for-each select="/blog/entry">

<h1 class="articleheader"><xsl:copy-of select="blogtitle" /></h1>
<p class="articleabstract"><xsl:copy-of select="summary" /></p>
 <div class="mainarticle">
<div class="articletext"><xsl:copy-of select="body" /></div>
<div class="articlefootnote">

  <h3 class="footnote">This entry's fake tags are: </h3>
    <p>
      <xsl:for-each select="/blog/entry/taglist/tag">
        <span class="tagcloud">&#9679;&#160;<xsl:copy-of select="." />&#160;</span>
      </xsl:for-each>
    </p>
</div>
</div>
</xsl:for-each>
<hr />

<p class="footer">This article was posted <xsl:value-of select="/blog/entry/@date" />. It is almost certainly factually inaccurate, but I thought it was worth posting anyway. </p>

<hr />

<p><a href="./">Read more blog</a> &#183; <a href="/">Go back to the homepage</a></p>

</div>
</body>
</html>

</xsl:template>
</xsl:stylesheet>

