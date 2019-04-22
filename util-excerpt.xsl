<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:str="http://exslt.org/strings"
                extension-element-prefixes="str">

	<xsl:template name="util-excerpt">
		<xsl:param name="string" />
		<xsl:param name="max-words" />

		<xsl:variable name="tokens" select="str:split($string)" />
		<xsl:apply-templates select="$tokens[position() &lt;= $max-words]" mode="util-excerpt" />
	</xsl:template>

	<xsl:template match="token" mode="util-excerpt">
		<xsl:value-of select="." />
		<xsl:choose>
			<xsl:when test="position() = last()">
				<xsl:text>...</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text> </xsl:text>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
