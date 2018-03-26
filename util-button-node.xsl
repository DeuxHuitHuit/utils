<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- COMPONENT: util-button-node -->
	<xsl:template name="util-button-node">
		<xsl:param name="label" />
		<xsl:param name="url" />

		<button>
			<item>
				<label><xsl:value-of select="$label" /></label>
				<url><xsl:value-of select="$url" /></url>
			</item>
		</button>

	</xsl:template>
</xsl:stylesheet>
