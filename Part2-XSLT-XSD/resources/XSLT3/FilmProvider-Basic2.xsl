<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/films">
        <html>
            <head>
                <META http-equiv="Content-Type" content="text/html" charset="UTF-8">
                <title>Films</title>
            </head>
            <body>
                <h1>Films</h1>
                <table>
                    <thead>
                        <tr>
                            <th>Titre</th><th>Résumé;</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:apply-templates select="film" />
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="film">
        <tr>
            <td>
            <xsl:value-of select="/resume/texte"/>
            <td>
        </tr>
    </xsl:template>

</xsl:stylesheet>