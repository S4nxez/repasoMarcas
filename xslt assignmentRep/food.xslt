<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<body>
				<h2>Food</h2>
				<table border="1">
					<tr bgcolor="#9acd92">
						<th>Food item</th>
						<th>Carbs (g)</th>
						<th>Fiber (g)</th>
						<th>Fat (g)</th>
						<th>Energy (kj)</th>
					</tr>
					<xsl:apply-templates/>
				</table>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="food_item[@type='vegetable']">
			<tr bgcolor="#9acd02">
				<td><xsl:value-of select="name"/></td>
				<td><xsl:value-of select="carbs_per_serving"/></td>
				<td><xsl:value-of select="fiber_per_serving"/></td>
				<td><xsl:value-of select="fat_per_serving"/></td>
				<td><xsl:value-of select="kj_per_serving"/></td>
			</tr>
	</xsl:template>
	<xsl:template match="food_item[@type='fruit']">
			<tr bgcolor="#9acd059">
				<td><xsl:value-of select="name"/></td>
				<td><xsl:value-of select="carbs_per_serving"/></td>
				<td><xsl:value-of select="fiber_per_serving"/></td>
				<td><xsl:value-of select="fat_per_serving"/></td>
				<td><xsl:value-of select="kj_per_serving"/></td>
			</tr>
	</xsl:template>
</xsl:stylesheet>