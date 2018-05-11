<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- COMPONENT: util-proportion-filler -->
	<xsl:template name="util-proportion-filler">
		<xsl:param name="attr" />


		<!-- COMPUTED ATTRIBUTES -->
		<xsl:variable name="computed-attr">
			<add class="absolute width-full left pointer-events-none" />
			<add class="js-proportion-filler" />
			<add dev-component="util-proportion-filler-ctn" />
		</xsl:variable>

		<xsl:variable name="computed-attr">
			<add class="width-full" />
			<xsl:copy-of select="$attr"/>
			<add dev-component="util-proportion-filler" />
		</xsl:variable>

		<!-- STRUCTURE -->
		<xsl:call-template name="element">
			<xsl:with-param name="attr" select="$computed-attr-ctn" />
			<xsl:with-param name="content">
				<xsl:call-template name="element">
					<xsl:with-param name="attr" select="$computed-attr" />
				</xsl:call-template>
			</xsl:with-param> 
		</xsl:call-template>
	</xsl:template>

<!-- COMPONENT: util-proportion-filler-attr -->
	<xsl:template name="util-proportion-filler-attr">
		<xsl:param name="ancestor" />
		<xsl:variable name="has-ancestor" select="string-length($ancestor) != 0" />
		
		<add class="js-auto-sync-property" />
		<add data-sync-property="min-height" />
		<add data-sync-property-with="height" />
		<add data-sync-property-from=".js-proportion-filler" />
		<xsl:if test="$has-ancestor">
			<add data-sync-property-from-common-ancestor="{$ancestor}" />
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
