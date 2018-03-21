<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:math="http://exslt.org/math">

<!-- COMPONENT: util-random-number -->
	<xsl:template name="util-random-number">
		<xsl:param name="min" select="10" />
		<xsl:param name="max" select="1000" />
		<xsl:param name="attr" />

		<xsl:value-of select="$min + (($max - $min) * math:random())" />

	</xsl:template>
</xsl:stylesheet>
