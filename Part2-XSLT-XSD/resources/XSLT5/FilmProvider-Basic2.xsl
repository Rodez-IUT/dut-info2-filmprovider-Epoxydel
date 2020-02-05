<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/films">
        <html>
            <head>
                <META http-equiv="Content-Type" content="text/html" charset="UTF-8"/>
                <title>Film Provider</title>
            </head>
            <body>
                <h1>Liste Films</h1>
                <xsl:apply-templates select="film" />
            </body>
        </html>
    </xsl:template>

    <xsl:template match="film">
        <xsl:variable name="idRea" select="@id_realisateur" />
        <table width="60%">
        <tr>
            <td colspan="2"><b><xsl:value-of select="titre"/></b>(<i> <xsl:value-of select="//realisateur[@id_realisateur = $idRea ]"/>)</i></td>
        </tr>
        </table>
    </xsl:template>

</xsl:stylesheet>