<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="util-auto-url">
	<xsl:choose>

		<xsl:when test="count(page/page) &gt; 0">
			<xsl:variable name="page-id" select="page/page/@id" />
			<xsl:call-template name="create-page-url-by-id">
				<xsl:with-param name="id" select="$page-id"/>
			</xsl:call-template>
		</xsl:when>

		<xsl:when test="count(entry/item) &gt; 0">
			<xsl:apply-templates select="entry/item" mode="auto-url" />
		</xsl:when>

		<xsl:when test="@section = 'section-name' or ../section/@handle = 'section-name'">
			<xsl:value-of select="$page-name-url" />
			<xsl:value-of select="title/@handle" />
			<xsl:text>/</xsl:text>
		</xsl:when>

		<xsl:when test="string-length(url) != 0">
			<xsl:value-of select="url" />
		</xsl:when>

	</xsl:choose>
</xsl:template>


<!-- Entry -->
<xsl:template match="item[@section = 'section-name']" mode="auto-url">
	<xsl:value-of select="$page-name-url" />
	<xsl:value-of select="name/@handle" />
	<xsl:text>/</xsl:text>
</xsl:template>
<xsl:template match="item[@section = 'section-name']" mode="auto-page-id">
	<xsl:value-of select="$page-name-id" />
</xsl:template>


<!-- FILE URL -->
<xsl:template match="item[@section = 'files']" mode="auto-url">
	<xsl:value-of select="concat($workspace, '/uploads/files/', file/filename)" />
</xsl:template>


<!-- AUTO HANDLE -->
<!-- default auto-handle that will be used for all that the handle is title
	Template is overidden when necessary-->
<xsl:template match="item" mode="auto-handle">
</xsl:template>

</xsl:stylesheet>
