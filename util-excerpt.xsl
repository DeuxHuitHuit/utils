<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="util-excerpt">
		<xsl:param name="content" select="content" />
		<xsl:param name="char-count" select="300" />
		<xsl:value-of select="substring($content, 0, $char-count)" />
		<xsl:if test="string-length($content) &gt;= $char-count">
			<xsl:value-of select="'...'" />
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
