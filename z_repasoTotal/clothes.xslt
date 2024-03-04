<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h2>MY CD COLLECTION</h2>

			<ol><xsl:apply-templates/></ol>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="CD">

		<li><xsl:apply-templates select="TITLE"/>
		<xsl:apply-templates select="ARTIST"/></li>

	</xsl:template>
	<xsl:template match="TITLE">
		<xsl:value-of select="."/> from
	</xsl:template>
	<xsl:template match="ARTIST">
		<xsl:value-of select="."/>
	</xsl:template>

</xsl:stylesheet>