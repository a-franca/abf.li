---
layout:
title: 'Sitemap'
permalink: "/sitemap.xsl"
---

<?xml version="1.0" encoding="utf-8"?>
<!--
Want to read the code behind this website?
It s available on my source code repository.
{{ site.source_code }}
-->
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml" lang="en">
      <head>
        <title>{{ page.title }} - {{ site.title }}</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta name="color-scheme" content="dark light"/>
        {% include style.html %}
      </head>
      <body>
        {% include header.html %}
        <main>
          <h1>Sitemap</h1>
          <table>
            <thead>
              <tr>
                <th>loc</th>
                <th>lastmod</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="/sitemap:urlset/sitemap:url">
                <tr>
                  <td>
                    <a target="_blank">
                      <xsl:attribute name="href"><xsl:value-of select="sitemap:loc"/></xsl:attribute>
                      <xsl:value-of select="sitemap:loc"/>
                    </a>
                  </td>
                  <td>
                    <xsl:value-of select="substring(sitemap:lastmod, 0, 11)"/>
                  </td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </main>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>