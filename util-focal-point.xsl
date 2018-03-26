<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="util-focal-point">
		<xsl:param name="focal-point" select="focal-point" />

		<xsl:choose>

			<xsl:when test="$focal-point = 1">
				<xsl:text>left top</xsl:text>
			</xsl:when>

			<xsl:when test="$focal-point = 2">
				<xsl:text>center top</xsl:text>
			</xsl:when>

			<xsl:when test="$focal-point = 3">
				<xsl:text>right top</xsl:text>
			</xsl:when>

			<xsl:when test="$focal-point = 4">
				<xsl:text>left center</xsl:text>
			</xsl:when>

			<xsl:when test="$focal-point = 6">
				<xsl:text>right center</xsl:text>
			</xsl:when>

			<xsl:when test="$focal-point = 7">
				<xsl:text>left bottom</xsl:text>
			</xsl:when>

			<xsl:when test="$focal-point = 8">
				<xsl:text>center bottom</xsl:text>
			</xsl:when>

			<xsl:when test="$focal-point = 9">
				<xsl:text>right bottom</xsl:text>
			</xsl:when>

			<xsl:otherwise>
				<xsl:text>center center</xsl:text>
			</xsl:otherwise>

		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>
