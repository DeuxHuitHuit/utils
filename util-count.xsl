<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:exsl="http://exslt.org/common"
	extension-element-prefixes="exsl">

<!-- COMPONENT: util-count -->
	<xsl:template name="util-count">
		<xsl:param name="items" />

		<xsl:choose>
			<xsl:when test="exsl:object-type($items) = 'node-set' or exsl:object-type($items) = 'RTF'">
				<xsl:value-of select="count($items)" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>0</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
