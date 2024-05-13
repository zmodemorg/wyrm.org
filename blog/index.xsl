<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat" />
<xsl:template match="/"> 

<html>
<head>
<title>This goes in the title of the browser</title>
<meta charset="UTF-8" />
<link rel="stylesheet" title="terminal" type="text/css" href="../style/inventory.css" />
<link rel="alternate stylesheet" title="light mode" type="text/css" href="../style/inventory-light.css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>

<div class="main">
<h1 class="articleheader">The title of the blog</h1>
<div class="articlelist">

<div class="navbox">Quick Links: <a href="#internet">Internet</a> &#183; <a href="#opinion">Opinion</a> &#183;<a href="#videogames">Video Games</a> &#183; <a href="#meta">Meta</a> &#183; <a href="#mythoughts">My Thoughts</a> &#183; <a href="#gettingmytimeback">Getting My Time Back</a> &#183; <a href="#freebsd">FreeBSD</a> &#183; <a href="#misc">Misc.</a></div>

<span id="internet"><h2 class="categoryheader">Internet</h2></span>
<h3 class="categorysubhead">Category description</h3>
<ul>

<xsl:for-each select="/blog/entry">

  <xsl:choose>
    <xsl:when test="@category=1"><li><a href="{@href}"><xsl:value-of select="title" /></a> <span class="blogdate"> - <xsl:value-of select="@written" /></span><br /> <xsl:value-of select="summary"/> <br /> Tagged with: <span class="blogtags"> <xsl:value-of select="@tags" /></span></li></xsl:when>

  </xsl:choose>
</xsl:for-each>

</ul>
<span id="opinion"><h2 class="categoryheader">Opinion</h2></span>
<h3 class="categorysubhead">Category 2.</h3>
<ul>
<xsl:for-each select="/blog/entry">

  <xsl:choose>
    <xsl:when test="@category=2"><li><a href="{@href}"><xsl:value-of select="title" /></a> <span class="blogdate"> - <xsl:value-of select="@written" /></span> <br /> <xsl:value-of select="summary"/> <br /> Tagged with: <span class="blogtags"> <xsl:value-of select="@tags" /></span></li></xsl:when>

  </xsl:choose>
</xsl:for-each>

</ul>

<span id="videogames"><h2 class="categoryheader">Video Games</h2></span>
<h3 class="categorysubhead">Category 3</h3>
<ul>
<xsl:for-each select="/blog/entry">

  <xsl:choose>
    <xsl:when test="@category=3"><li><a href="{@href}"><xsl:value-of select="title" /></a> <span class="blogdate"> - <xsl:value-of select="@written" /></span> <br /> <xsl:value-of select="summary"/> <br /> Tagged with: <span class="blogtags"> <xsl:value-of select="@tags" /></span></li></xsl:when>

  </xsl:choose>
</xsl:for-each>
</ul>

<span id="meta"><h2 class="categoryheader">Meta</h2></span>
<h3 class="categorysubhead">Category 4</h3>
<ul>
<xsl:for-each select="/blog/entry">

  <xsl:choose>
    <xsl:when test="@category=4"><li><a href="{@href}"><xsl:value-of select="title" /></a> <br /> <span class="blogdate"> - <xsl:value-of select="@written" /></span> <xsl:value-of select="summary"/> <br /> Tagged with: <span class="blogtags"> <xsl:value-of select="@tags" /></span></li></xsl:when>

  </xsl:choose>
</xsl:for-each>


</ul>


<span id="mythoughts"><h2 class="categoryheader">My Thoughts</h2></span>
<h3 class="categorysubhead">Category 5</h3>
<ul>
<xsl:for-each select="/blog/entry">

  <xsl:choose>
    <xsl:when test="@category=5"><li><a href="{@href}"><xsl:value-of select="title" /></a> <span class="blogdate"> - <xsl:value-of select="@written" /></span> <br /> <xsl:value-of select="summary"/> <br /> Tagged with: <span class="blogtags"> <xsl:value-of select="@tags" /></span></li></xsl:when>

  </xsl:choose>
</xsl:for-each>


</ul>

<span id="gettingmytimeback"><h2 class="categoryheader">Getting my time back</h2></span>
<h3 class="categorysubhead">Category 6</h3>
<ul>
<xsl:for-each select="/blog/entry">

  <xsl:choose>
    <xsl:when test="@category=6"><li><a href="{@href}"><xsl:value-of select="title" /></a> <span class="blogdate"> - <xsl:value-of select="@written" /></span> <br /> <xsl:value-of select="summary"/> <br /> Tagged with: <span class="blogtags"> <xsl:value-of select="@tags" /></span></li></xsl:when>

  </xsl:choose>
</xsl:for-each>


</ul>
<span id="freebsd"><h2 class="categoryheader">FreeBSD</h2></span>
<h3 class="categorysubhead">Category 7</h3>
<ul>
<xsl:for-each select="/blog/entry">

  <xsl:choose>
    <xsl:when test="@category=7"><li><a href="{@href}"><xsl:value-of select="title" /></a> <span class="blogdate"> - <xsl:value-of select="@written" /></span> <br /> <xsl:value-of select="summary"/> <br /> Tagged with: <span class="blogtags"> <xsl:value-of select="@tags" /></span></li></xsl:when>

  </xsl:choose>
</xsl:for-each>


</ul>

<span id="misc"><h2 class="categoryheader">Miscellaneous</h2></span>
<h3 class="categorysubhead">Category 99</h3>
<ul>
<xsl:for-each select="/blog/entry">

  <xsl:choose>
    <xsl:when test="@category=99"><li><a href="{@href}"><xsl:value-of select="title" /></a> <span class="blogdate"> - <xsl:value-of select="@written" /></span> <br /> <xsl:value-of select="summary"/> <br /> Tagged with: <span class="blogtags"> <xsl:value-of select="@tags" /></span></li></xsl:when>

  </xsl:choose>
</xsl:for-each>

</ul>

<hr />

</div>

<p><a href="/">Go back to start</a></p>

</div>


</body>
</html>

</xsl:template>
</xsl:stylesheet>

