<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat" />
<xsl:template match="/"> 

<html>
<head>
<title>You no longer have these Skylanders</title>
<link rel="stylesheet" type="text/css" href="../style/inventory.css" />
<link rel="alternate stylesheet" title="light mode" type="text/css" href="../style/inventory-light.css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
<div class="main">
<div class="inventory">

<h1>Skylanders Inventory</h1>

<!-- This probably won't be of any use as-is, but it was a lot of work to get it dialled in, so I'm including it for completeness -->

<p>A reference to the color-codes that I used: <span style="background: skyblue; color:black">Air</span>, <span style="background: dimgrey; color:black">Dark</span>, <span style="background: saddlebrown; color:white">Earth</span>, <span style="background: firebrick; color:white">Fire</span>, <span style="background: darkgreen; color:white">Life</span>, <span style="background: ivory; color:black">Light</span>, <span style="background: purple; color:white">Magic</span>, <span style="background: orangered; color:white">Tech</span>, <span style="background: midnightblue; color:white">Undead</span>, <span style="background: blue; color:white">Water</span>, <span style="background: black; color:white">No Element</span>. </p>  

<!-- For each of the Skylanders games, we first sort the list by name, and then we execute two loops. The first loop goes through the list and finds all of the figures of a particular game using the 'series' attribute of the 'name' element (the reference for the which series corresponds to which games is in the skylanders.xml file). For each result that it finds, a second loop is kicked off to determine the color of the cell (the 'element'). I created a giant series of 'choose' statements (since XSLT 2 doesn't support case statements), which then outputs 'name' and 'note' cells in the appropriate color (the color to element table is in the skylanders.xml file for reference). These two loops are recreated for each of the series. -->

<h2>Skylanders Giants</h2>
<table>
	<tr><th>Skylanders figure</th><th>Note</th></tr>
<xsl:for-each select="skylanders/figure">
<xsl:sort select="name"/>

<xsl:choose>
<xsl:when test="name/@series=1">

 <xsl:choose>
  <xsl:when test="name/@element=0">
<tr>
 <td style="background: skyblue; color:black"><xsl:value-of select="name" /> </td>
 <td style="background: skyblue; color:black"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=1">
<tr>
 <td style="background: dimgrey; color:black"><xsl:value-of select="name" /> </td>
 <td style="background: dimgrey; color:black"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=2">
<tr>
 <td style="background: saddlebrown; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: saddlebrown; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=3">
<tr>
 <td style="background: firebrick; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: firebrick; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=4">
<tr>
 <td style="background: darkgreen; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: darkgreen; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=5">
<tr>
 <td style="background: ivory; color:black"><xsl:value-of select="name" /> </td>
 <td style="background: ivory; color:black"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=6">
<tr>
 <td style="background: purple; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: purple; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=7">
<tr>
 <td style="background: orangered; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: orangered; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=8">
<tr>
 <td style="background: midnightblue; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: midnightblue; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=9">
<tr>
 <td style="background: blue; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: blue; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>
 <xsl:choose>
  <xsl:when test="name/@element=10">
<tr>
 <td style="background: black; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: black; color:white"><xsl:value-of select="note" /></td>
</tr>

</xsl:when>
</xsl:choose>


</xsl:when>
</xsl:choose>

</xsl:for-each>

</table>


<h2>Skylanders SWAP Force</h2>
<table>
<th>Skylanders figure</th><th>Note</th>
<xsl:for-each select="skylanders/figure">
<xsl:sort select="name"/>

<xsl:choose>
<xsl:when test="name/@series=2">

 <xsl:choose>
  <xsl:when test="name/@element=0">
<tr>
 <td style="background: skyblue; color:black"><xsl:value-of select="name" /> </td>
 <td style="background: skyblue; color:black"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=1">
<tr>
 <td style="background: dimgrey; color:black"><xsl:value-of select="name" /> </td>
 <td style="background: dimgrey; color:black"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=2">
<tr>
 <td style="background: saddlebrown; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: saddlebrown; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=3">
<tr>
 <td style="background: firebrick; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: firebrick; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=4">
<tr>
 <td style="background: darkgreen; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: darkgreen; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=5">
<tr>
 <td style="background: ivory; color:black"><xsl:value-of select="name" /> </td>
 <td style="background: ivory; color:black"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=6">
<tr>
 <td style="background: purple; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: purple; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=7">
<tr>
 <td style="background: orangered; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: orangered; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=8">
<tr>
 <td style="background: midnightblue; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: midnightblue; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=9">
<tr>
 <td style="background: blue; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: blue; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>
 <xsl:choose>
  <xsl:when test="name/@element=10">
<tr>
 <td style="background: black; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: black; color:white"><xsl:value-of select="note" /></td>
</tr>

</xsl:when>
</xsl:choose>


</xsl:when>
</xsl:choose>

</xsl:for-each>

</table>

<h2>Skylanders Trap Team</h2>
<table>
<th>Skylanders figure</th><th>Note</th>
<xsl:for-each select="skylanders/figure">
<xsl:sort select="name"/>

<xsl:choose>
<xsl:when test="name/@series=3">

 <xsl:choose>
  <xsl:when test="name/@element=0">
<tr>
 <td style="background: skyblue; color:black"><xsl:value-of select="name" /> </td>
 <td style="background: skyblue; color:black"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=1">
<tr>
 <td style="background: dimgrey; color:black"><xsl:value-of select="name" /> </td>
 <td style="background: dimgrey; color:black"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=2">
<tr>
 <td style="background: saddlebrown; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: saddlebrown; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=3">
<tr>
 <td style="background: firebrick; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: firebrick; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=4">
<tr>
 <td style="background: darkgreen; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: darkgreen; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=5">
<tr>
 <td style="background: ivory; color:black"><xsl:value-of select="name" /> </td>
 <td style="background: ivory; color:black"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=6">
<tr>
 <td style="background: purple; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: purple; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=7">
<tr>
 <td style="background: orangered; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: orangered; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=8">
<tr>
 <td style="background: midnightblue; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: midnightblue; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=9">
<tr>
 <td style="background: blue; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: blue; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=10">
<tr>
 <td style="background: black; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: black; color:white"><xsl:value-of select="note" /></td>
</tr>

</xsl:when>
</xsl:choose>

</xsl:when>
</xsl:choose>


</xsl:for-each>

</table>

<h2>Skylanders Superchargers</h2>
<table>
<th>Skylanders figure</th><th>Note</th>
<xsl:for-each select="skylanders/figure">
<xsl:sort select="name"/>

<xsl:choose>
<xsl:when test="name/@series=4">

 <xsl:choose>
  <xsl:when test="name/@element=0">
<tr>
 <td style="background: skyblue; color:black"><xsl:value-of select="name" /> </td>
 <td style="background: skyblue; color:black"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=1">
<tr>
 <td style="background: dimgrey; color:black"><xsl:value-of select="name" /> </td>
 <td style="background: dimgrey; color:black"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=2">
<tr>
 <td style="background: saddlebrown; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: saddlebrown; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=3">
<tr>
 <td style="background: firebrick; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: firebrick; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=4">
<tr>
 <td style="background: darkgreen; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: darkgreen; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=5">
<tr>
 <td style="background: ivory; color:black"><xsl:value-of select="name" /> </td>
 <td style="background: ivory; color:black"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=6">
<tr>
 <td style="background: purple; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: purple; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=7">
<tr>
 <td style="background: orangered; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: orangered; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=8">
<tr>
 <td style="background: midnightblue; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: midnightblue; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=9">
<tr>
 <td style="background: blue; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: blue; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>
 <xsl:choose>
  <xsl:when test="name/@element=10">
<tr>
 <td style="background: black; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: black; color:white"><xsl:value-of select="note" /></td>
</tr>

</xsl:when>
</xsl:choose>


</xsl:when>
</xsl:choose>

</xsl:for-each>

</table>

<h2>Skylanders Imaginators</h2>
<table>
<th>Skylanders figure</th><th>Note</th>
<xsl:for-each select="skylanders/figure">
<xsl:sort select="name"/>

<xsl:choose>
<xsl:when test="name/@series=5">

 <xsl:choose>
  <xsl:when test="name/@element=0">
<tr>
 <td style="background: skyblue; color:black"><xsl:value-of select="name" /> </td>
 <td style="background: skyblue; color:black"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=1">
<tr>
 <td style="background: dimgrey; color:black"><xsl:value-of select="name" /> </td>
 <td style="background: dimgrey; color:black"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=2">
<tr>
 <td style="background: saddlebrown; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: saddlebrown; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=3">
<tr>
 <td style="background: firebrick; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: firebrick; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=4">
<tr>
 <td style="background: darkgreen; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: darkgreen; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=5">
<tr>
 <td style="background: ivory; color:black"><xsl:value-of select="name" /> </td>
 <td style="background: ivory; color:black"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=6">
<tr>
 <td style="background: purple; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: purple; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=7">
<tr>
 <td style="background: orangered; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: orangered; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=8">
<tr>
 <td style="background: midnightblue; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: midnightblue; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>

 <xsl:choose>
  <xsl:when test="name/@element=9">
<tr>
 <td style="background: blue; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: blue; color:white"><xsl:value-of select="note" /></td>
</tr>
  </xsl:when>
 </xsl:choose>
 <xsl:choose>
  <xsl:when test="name/@element=10">
<tr>
 <td style="background: black; color:white"><xsl:value-of select="name" /> </td>
 <td style="background: black; color:white"><xsl:value-of select="note" /></td>
</tr>

</xsl:when>
</xsl:choose>


</xsl:when>
</xsl:choose>

</xsl:for-each>

</table>


</div>
</div>
</body>
</html>

</xsl:template>
</xsl:stylesheet>

