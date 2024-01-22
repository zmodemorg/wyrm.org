<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat" />
<xsl:template match="/"> 

<html>
<head>
<!-- This takes the content of the 'pagetitle' element and puts it into the title of the browser -->
<title><xsl:value-of select="/articles/article/pagetitle" /></title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" title="terminal" type="text/css" href="/style/inventory.css" />
<link rel="alternate stylesheet" title="light mode" type="text/css" href="/style/inventory-light.css" />
</head>
<body>

<div class="main">

<!-- This goes through the article's xml file and does the following. It formats the content of the 'articleheader' element as an h1 at the top of the page, it formats the 'articleabstract' element as a short summary of the article just below the header. Then it emits the full text of the 'articlebody' element as-is (full HTML is allowed). -->

<xsl:for-each select="/articles/article">

<h1 class="articleheader"><xsl:copy-of select="articleheader" /></h1>
<p class="articleabstract"><xsl:copy-of select="articleabstract" /></p>
 <div class="mainarticle">
<div class="articletext"><xsl:copy-of select="articlebody" /></div>

<!-- This goes through all of the 'footnotes/footnote' elements and puts them into an ordered list. For now, if you want to make footnotes, you have to number them manually in the body of the text, and you have to renumber them manually if you edit them out and you want the footnote list to match the text. --> 
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

<p class="footer">This article was posted <xsl:value-of select="/articles/article/@date" />. It is almost certainly factually inaccurate, but I thought it was worth posting anyway. </p>

<hr />

<p><a href="./">Read more articles</a> &#183; <a href="/">Go back to the homepage</a></p>

</div>
</body>
</html>

</xsl:template>
</xsl:stylesheet>

