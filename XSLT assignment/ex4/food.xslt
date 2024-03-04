<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<body>
				<h2>My CD Collection</h2>
				<table border="1">
					<tr bgcolor="#cdcd32">
						<th>Food Item</th>
						<th>Carbs (g)</th>
						<th>Fiber (g)</th>
						<th>Fat (g)</th>
						<th>Energy (kj)</th>
					</tr>
					<xsl:for-each select="food_list/food_item">
						<xsl:sort select="fiber_per_serving" data-type="number"/>
						<xsl:if test="@type='vegetable'">
							<tr bgcolor="#00b300">
								<td><xsl:value-of select="name"/></td>
								<td><xsl:value-of select="carbs_per_serving"/></td>
								<td><xsl:value-of select="fiber_per_serving"/></td>
								<td><xsl:value-of select="fat_per_serving"/></td>
								<td><xsl:value-of select="kj_per_serving"/></td>
							</tr>
						</xsl:if>
						<xsl:if test="@type='fruit'">
							<tr bgcolor="#ff00ff">
								<td><xsl:value-of select="name"/></td>
								<td><xsl:value-of select="carbs_per_serving"/></td>
								<td><xsl:value-of select="fiber_per_serving"/></td>
								<td><xsl:value-of select="fat_per_serving"/></td>
								<td><xsl:value-of select="kj_per_serving"/></td>
							</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>