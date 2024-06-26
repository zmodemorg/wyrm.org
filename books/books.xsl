<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat" />
<xsl:template match="/"> 

<html>
<head>
<title>This shows up in the title of the browser</title>
<link rel="stylesheet" type="text/css" href="../style/inventory.css" />
<link rel="alternate stylesheet" title="light mode" type="text/css" href="../style/inventory-light.css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
<div class="main">
<div class="inventory">

<h1>This is the title of the page.</h1>

<p>Some HTML goes here to talk abut this list</p>

<table>
<th>Image</th><th>Info</th><th>Comment</th>
<xsl:for-each select="books/book">
<xsl:sort select="title"/>
<tr>
 <td><a href="{image}" ><img src="{thumb}" alt="{thumb/@alt}" title="{thumb/@alt}" /></a>  </td>
 <td>Title: <xsl:value-of select="title" /><br /> Edition: <xsl:value-of select="edition" /><br /> Author(s): <xsl:value-of select="author" /><br /> Published: <xsl:value-of select="date" /><br /> ISBN: <xsl:value-of select="@isbn" /> </td>
 <td><xsl:value-of select="comment" /> </td>
</tr>
</xsl:for-each>
</table>
</div>
</div>

<p class="footer">I last remembered to change the this list's timestamp on <xsl:value-of select="/books/@updated" />.</p>

<p><a href="/">Go back to the homepage</a></p>
</body>
</html>

</xsl:template>
</xsl:stylesheet>

