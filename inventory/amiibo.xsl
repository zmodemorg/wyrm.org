<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat" />
<xsl:template match="/"> 

<html>
<head>
<title>You already have these Amiibos</title>
<link rel="stylesheet" type="text/css" href="../style/inventory.css" />
<link rel="alternate stylesheet" title="light mode" type="text/css" href="../style/inventory-light.css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
<div class="main">
<div class="inventory">
<table>
<tr><th>Amiibo</th><th>Series</th><th>Note</th></tr>
<!-- This looks through the amiibo.xml file and first alphabetizes the list. Then it generates a simple table. Each row has three cells, and each cell is one element from the XML. 'name' is the Amiibo name, 'series' is the series the Amiibo came from, and 'note' is freeform text with some notes if applicable -->

<xsl:for-each select="amiibo/character">
<xsl:sort select="name"/>
<tr>
 <td><xsl:value-of select="name" /> </td>
 <td><xsl:value-of select="series" /></td>
 <td><xsl:value-of select="note" /></td>
</tr>
</xsl:for-each>
</table>
</div>
</div>
</body>
</html>

</xsl:template>
</xsl:stylesheet>

