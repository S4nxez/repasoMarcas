<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<body>
				<h1>Students</h1>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="student">
		<xsl:apply-templates select="@rollno"/>
		<xsl:apply-templates select="firstname"/>
	</xsl:template>
	<xsl:template match="@rollno">
		<br />
		<xsl:value-of select="."/>
	</xsl:template>
	<xsl:template match="firstname">
		<br />
		First Name: <span style="color:#ff0000">
			<xsl:value-of select="."/></span>
	</xsl:template>
</xsl:stylesheet>