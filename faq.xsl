<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat" />
<xsl:template match="/"> 

<html>
<head>
<title>Title of the FAQ page</title>
<meta charset="UTF-8" />
<link rel="stylesheet" title="terminal" type="text/css" href="style/inventory.css" />
<link rel="alternate stylesheet" title="light mode" type="text/css" href="../style/inventory-light.css" />
</head>
<body>

<div class="main">
<h1 class="faqheader">Header for the page</h1>
<p class="faqexplainer">A short summary of what the FAQ page is about.</p>
 <div class="faq">

<xsl:for-each select="/faqs/faq">
	<h2 class="faqquestion">Q: <xsl:copy-of select="question" /></h2>
	 <p class="faqanswer">A: <xsl:copy-of select="answer" /></p>
 
</xsl:for-each>
</div>

<hr />

	<p class="footer">This page was last updated on <xsl:value-of select="/faqs/@updated" /></p>

<hr />

<a href="/">Go back to start</a>

</div>
</body>
</html>

</xsl:template>
</xsl:stylesheet>

