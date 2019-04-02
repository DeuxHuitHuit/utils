<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="*" name="util-auto-url" mode="util-auto-url">

		<xsl:choose>

			<!-- Absolute url -->
			<xsl:when test="string-length(url) != 0">
				<xsl:value-of select="url" />
			</xsl:when>

			<!-- Symphony page trough page-select-box -->
			<xsl:when test="count(page/page) &gt; 0">
				<xsl:call-template name="create-page-url-by-id">
					<xsl:with-param name="id" select="page/page/@id"/>
				</xsl:call-template>
			</xsl:when>

			<!-- Entry from section -->
			<xsl:when test="@section = 'my-section-name' or ../section/@handle = 'my-section-name'">
				<xsl:value-of select="$page-index-url" />
				<xsl:value-of select="slug/@handle" />
				<xsl:text>/</xsl:text>
			</xsl:when>

			<!-- Files -->
			<xsl:when test="item[@section = 'files'] or ../section/@handle = 'files'">
				<xsl:value-of select="$workspace" />
				<xsl:value-of select="files/@path" />
				<xsl:text>/</xsl:text>
				<xsl:value-of select="files/filename" />
			</xsl:when>

			<xsl:when test="count(entry/item)">
				<xsl:apply-templates select="entry/item" mode="util-auto-url" />
			</xsl:when>

		</xsl:choose>

	</xsl:template>

</xsl:stylesheet>
