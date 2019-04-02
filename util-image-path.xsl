<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"  
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:exsl="http://exslt.org/common"
	extension-element-prefixes="exsl">

	<xsl:template name="util-image-path">
		<xsl:param name="image" />
		<xsl:choose>
			<xsl:when test="exsl:object-type($image) = 'node-set' and $image/filename and $image/@path">
				<xsl:value-of select="$root" />
				<xsl:text>/workspace</xsl:text>
				<xsl:value-of select="$image/@path" />
				<xsl:value-of select="$image/filename" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$image" />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>
