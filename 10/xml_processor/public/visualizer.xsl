<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="integers">
        <html>
            <head>
                <title>XML Visualiser</title>
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
            </head>
            <body>
                <h1>Visualized using <rm>client-side (browser)</rm> XSLT</h1>
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Number</th>
                        </tr>
                    </thead>
                    <tbody id='result'>
                        <xsl:variable name="numbers" select="integer" />
                        <xsl:for-each select="$numbers">
                            <xsl:variable name="pos" select="position() - 1"/>
                            <tr scope="row">
                                <th>
                                    <xsl:value-of select="$pos + 1"/>
                                </th>
                                <td>
                                    <xsl:value-of select="."/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>