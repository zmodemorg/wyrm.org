<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat" />
<xsl:template match="/"> 

<html>
<head>
<!-- This inserts a title and reads whatever value is in the 'system' attribute of the 'inventory' element -->
<title>You already have these <xsl:value-of select="inventory/@system" /> Games</title>
<link rel="stylesheet" type="text/css" href="../style/inventory.css" />
<link rel="stylesheet" type="text/css" href="../style/consoles.css" />
<link rel="alternate stylesheet" title="light mode" type="text/css" href="../style/inventory-light.css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
<div class="main">
<div class="inventory">
<!-- This creates a table for all of the games in the list. First it alphabetizes the list by the 'name' element. For each row it outputs a table cell with the game name, 'title', some free-form text, 'note', and an 'emoji' element for an idea I had that didn't quite land. I selected the 'style' attribute of the 'inventory' element to select CSS classes based on the chosen style. -->
<table class="{/inventory/@style}" >
	<tr><th class="{/inventory/@style}" >Game</th><th class="{/inventory/@style}">Note</th><th class="{/inventory/@style}">Emoji</th></tr>
<xsl:for-each select="inventory/game">
<xsl:sort select="title"/>
<tr class="{/inventory/@style}">
 <td class="{/inventory/@style}"><xsl:value-of select="title" /></td>
 <td class="{/inventory/@style}"><xsl:value-of select="note" /></td>
 <td class="{/inventory/@style}"><span role="img" aria-label="{emoji/@alt}"><xsl:value-of select="emoji" /></span></td>
</tr>
</xsl:for-each>
</table>
</div>
</div>
</body>
</html>

</xsl:template>
</xsl:stylesheet>

