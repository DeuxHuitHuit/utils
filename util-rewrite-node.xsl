<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:exslt="http://exslt.org/common">

	<!-- The result node should be all the nodes contained in the param node -->
	<!-- node-set() should be used on the result to be usable -->

	<xsl:template name="util-rewrite-node">
		<xsl:param name="node" />
		<xsl:apply-templates select="$node/*" mode="rewrite-node" />
	</xsl:template>

	<xsl:template match="@* | node() | text()" mode="rewrite-node" priority="0">
		<xsl:copy>
			<xsl:apply-templates select="@* | node() | text()" mode="rewrite-node"/>
		</xsl:copy>
	</xsl:template>

	<!-- 

	REWRITE RULES EXAMPLE



	Transform all <li> in <div class="li">

	<xsl:template match="li" mode="rewrite-node">
		<div class="li">
			<xsl:apply-templates select="@* | node() | text()" mode="rewrite-node"/>
		</div>
	</xsl:template>



	Transform all h tag in div with h tag as class

	<xsl:template match="h1 | h2 | h3 | h4 | h5 | h6" mode="rewrite-node">
		<div class="name()">
			<xsl:apply-templates select="@* | node() | text()" mode="rewrite-node"/>
		</div>
	</xsl:template> 

	-->

</xsl:stylesheet>
