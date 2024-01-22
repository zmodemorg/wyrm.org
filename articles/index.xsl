<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/"> 

<html>
<head>
<title>Some words about some stuff.</title>
<meta charset="UTF-8" />
<link rel="stylesheet" title="terminal" type="text/css" href="../style/inventory.css" />
<link rel="alternate stylesheet" title="light mode" type="text/css" href="../style/inventory-light.css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>

<div class="main">
<h1 class="articleheader">An abridged list of thoughts</h1>
<div class="articlelist">
<div class="navbox">Quick Links: <a href="#1">Internet</a> &#183; <a href="#2">Opinion</a> &#183; <a href="#3">Video Games</a> &#183; <a href="#4">Meta</a> &#183; <a href="#5">Not a blog</a> &#183; <a href="#6">Getting my time back</a> </div>
<span id="1"><h2 class="categoryheader">Internet</h2></span>
<h3 class="categorysubhead">Articles about the Internet in general</h3>
<ul>
<xsl:for-each select="/index/article">

  <xsl:choose>
    <xsl:when test="@category=1"><li><a href="{@href}"><xsl:value-of select="title" /></a> - <xsl:value-of select="summary"/></li></xsl:when>

  </xsl:choose>
</xsl:for-each>

</ul>

<span id="2"><h2 class="categoryheader">Opinion</h2></span>
<h3 class="categorysubhead">I have opinions about things.</h3>
<ul>
<xsl:for-each select="/index/article">

  <xsl:choose>
    <xsl:when test="@category=2"><li><a href="{@href}"><xsl:value-of select="title" /></a> - <xsl:value-of select="summary"/></li></xsl:when>

  </xsl:choose>
</xsl:for-each>

</ul>

<span id="3"><h2 class="categoryheader">Video Games</h2></span>
<h3 class="categorysubhead">I talk about video games and video-game-adjacent things</h3>
<ul>
<xsl:for-each select="/index/article">

  <xsl:choose>
    <xsl:when test="@category=3"><li><a href="{@href}"><xsl:value-of select="title" /></a> - <xsl:value-of select="summary"/></li></xsl:when>

  </xsl:choose>
</xsl:for-each>

</ul>

<span id="4"><h2 class="categoryheader">Meta</h2></span>
<h3 class="categorysubhead">I talk about this very website</h3>
<ul>
<xsl:for-each select="/index/article">

  <xsl:choose>
    <xsl:when test="@category=4"><li><a href="{@href}"><xsl:value-of select="title" /></a> - <xsl:value-of select="summary"/></li></xsl:when>

  </xsl:choose>
</xsl:for-each>

</ul>

<span id="5"><h2 class="categoryheader">Not a blog</h2></span>
<h3 class="categorysubhead">Some informal postings that don't really fit anywhere else. Don't call it a blog, blogs are so 1999</h3>
<ul>
<xsl:for-each select="/index/article">

  <xsl:choose>
    <xsl:when test="@category=5"><li><a href="{@href}"><xsl:value-of select="title" /></a> - <xsl:value-of select="summary"/></li></xsl:when>

  </xsl:choose>
</xsl:for-each>

</ul>


<span id="6"><h2 class="categoryheader">Getting my time back</h2></span>
<h3 class="categorysubhead">An intermittently-updated series of articles where I describe the things I'm doing to take back control of my Intenet usage</h3>
<ul>
<xsl:for-each select="/index/article">

  <xsl:choose>
    <xsl:when test="@category=6"><li><a href="{@href}"><xsl:value-of select="title" /></a> - <xsl:value-of select="summary"/></li></xsl:when>

  </xsl:choose>
</xsl:for-each>

</ul>

<h2 class="categoryheader">Build a Website</h2>
<h3 class="categorysubhead">You should have your own domain, your own website, and your own email address that isn't owned by Google or Microsoft. I go over some suggestions about how to do some of that.</h3>
<ul>
<xsl:for-each select="/index/article">

  <xsl:choose>
    <xsl:when test="@category=8"><li><a href="{@href}"><xsl:value-of select="title" /></a> - <xsl:value-of select="summary"/></li></xsl:when>

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

