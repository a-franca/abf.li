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
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9">
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
          <h1>
            <svg style="vertical-align: text-bottom;" height="1.2em" width="1.2em" version="1.1"  id="SitemapIcon" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 503.467 503.467" xml:space="preserve">
            <g transform="translate(1 1)">
              <path style="fill:var(--main-background-color);" d="M319,353.133v136.533c0,4.267-3.413,8.533-8.533,8.533H191c-5.12,0-8.533-4.267-8.533-8.533V353.133
                c0-4.267,3.413-8.533,8.533-8.533h119.467C315.587,344.6,319,348.867,319,353.133z M139.8,353.133v136.533
                c0,4.267-4.267,8.533-8.533,8.533H11.8c-4.267,0-8.533-4.267-8.533-8.533V353.133c0-4.267,4.267-8.533,8.533-8.533h119.467
                C135.533,344.6,139.8,348.867,139.8,353.133z M498.2,353.133v136.533c0,4.267-3.413,8.533-8.533,8.533H370.2
                c-5.12,0-8.533-4.267-8.533-8.533V353.133c0-4.267,3.413-8.533,8.533-8.533h119.467C494.787,344.6,498.2,348.867,498.2,353.133z"/>
              <path style="fill:var(--notice-color);" d="M378.733,37.4v119.467c0,18.773-15.36,34.133-34.133,34.133h-93.867h-93.867
                c-18.773,0-34.133-15.36-34.133-34.133V37.4c0-18.773,15.36-34.133,34.133-34.133H344.6C363.373,3.267,378.733,18.627,378.733,37.4
                "/>
            </g>
            <path style="fill:var(--accent-text-color);" d="M490.667,503.467H371.2c-6.827,0-12.8-5.973-12.8-12.8V354.133c0-6.827,5.973-12.8,12.8-12.8h119.467
              c6.827,0,12.8,5.973,12.8,12.8v136.533C503.467,497.493,497.493,503.467,490.667,503.467z M371.2,349.867
              c-2.56,0-4.267,1.707-4.267,4.267v136.533c0,2.56,1.707,4.267,4.267,4.267h119.467c2.56,0,4.267-1.707,4.267-4.267V354.133
              c0-2.56-1.707-4.267-4.267-4.267H371.2z M311.467,503.467H192c-6.827,0-12.8-5.973-12.8-12.8V354.133c0-6.827,5.973-12.8,12.8-12.8
              h119.467c6.827,0,12.8,5.973,12.8,12.8v136.533C324.267,497.493,318.293,503.467,311.467,503.467z M192,349.867
              c-2.56,0-4.267,1.707-4.267,4.267v136.533c0,2.56,1.707,4.267,4.267,4.267h119.467c2.56,0,4.267-1.707,4.267-4.267V354.133
              c0-2.56-1.707-4.267-4.267-4.267H192z M132.267,503.467H12.8c-6.827,0-12.8-5.973-12.8-12.8V354.133c0-6.827,5.973-12.8,12.8-12.8
              h119.467c6.827,0,12.8,5.973,12.8,12.8v136.533C145.067,497.493,139.093,503.467,132.267,503.467z M12.8,349.867
              c-2.56,0-4.267,1.707-4.267,4.267v136.533c0,2.56,1.707,4.267,4.267,4.267h119.467c2.56,0,4.267-1.707,4.267-4.267V354.133
              c0-2.56-1.707-4.267-4.267-4.267H12.8z M465.067,469.333H396.8c-2.56,0-4.267-1.707-4.267-4.267c0-2.56,1.707-4.267,4.267-4.267
              h68.267c2.56,0,4.267,1.707,4.267,4.267C469.333,467.627,467.627,469.333,465.067,469.333z M285.867,469.333H217.6
              c-2.56,0-4.267-1.707-4.267-4.267c0-2.56,1.707-4.267,4.267-4.267h68.267c2.56,0,4.267,1.707,4.267,4.267
              C290.133,467.627,288.427,469.333,285.867,469.333z M106.667,469.333H38.4c-2.56,0-4.267-1.707-4.267-4.267
              c0-2.56,1.707-4.267,4.267-4.267h68.267c2.56,0,4.267,1.707,4.267,4.267C110.933,467.627,109.227,469.333,106.667,469.333z
              M465.067,435.2H396.8c-2.56,0-4.267-1.707-4.267-4.267c0-2.56,1.707-4.267,4.267-4.267h68.267c2.56,0,4.267,1.707,4.267,4.267
              C469.333,433.493,467.627,435.2,465.067,435.2z M285.867,435.2H217.6c-2.56,0-4.267-1.707-4.267-4.267
              c0-2.56,1.707-4.267,4.267-4.267h68.267c2.56,0,4.267,1.707,4.267,4.267C290.133,433.493,288.427,435.2,285.867,435.2z
              M106.667,435.2H38.4c-2.56,0-4.267-1.707-4.267-4.267c0-2.56,1.707-4.267,4.267-4.267h68.267c2.56,0,4.267,1.707,4.267,4.267
              C110.933,433.493,109.227,435.2,106.667,435.2z M430.933,401.067H396.8c-2.56,0-4.267-1.707-4.267-4.267s1.707-4.267,4.267-4.267
              h34.133c2.56,0,4.267,1.707,4.267,4.267S433.493,401.067,430.933,401.067z M251.733,401.067H217.6c-2.56,0-4.267-1.707-4.267-4.267
              s1.707-4.267,4.267-4.267h34.133c2.56,0,4.267,1.707,4.267,4.267S254.293,401.067,251.733,401.067z M72.533,401.067H38.4
              c-2.56,0-4.267-1.707-4.267-4.267s1.707-4.267,4.267-4.267h34.133c2.56,0,4.267,1.707,4.267,4.267S75.093,401.067,72.533,401.067z
              M430.933,315.733c-2.56,0-4.267-1.707-4.267-4.267v-46.933H256v46.933c0,2.56-1.707,4.267-4.267,4.267
              c-2.56,0-4.267-1.707-4.267-4.267v-46.933H76.8v46.933c0,2.56-1.707,4.267-4.267,4.267c-2.56,0-4.267-1.707-4.267-4.267v-51.2
              c0-2.56,1.707-4.267,4.267-4.267h174.933v-59.733h-89.6c-21.333,0-38.4-17.067-38.4-38.4V38.4c0-21.333,17.067-38.4,38.4-38.4H345.6
              C366.933,0,384,17.067,384,38.4v119.467c0,21.333-17.067,38.4-38.4,38.4h-59.733c-2.56,0-4.267-1.707-4.267-4.267
              c0-2.56,1.707-4.267,4.267-4.267H345.6c16.213,0,29.867-13.653,29.867-29.867V38.4c0-16.213-13.653-29.867-29.867-29.867H157.867
              C141.653,8.533,128,22.187,128,38.4v119.467c0,16.213,13.653,29.867,29.867,29.867h93.867c2.56,0,4.267,1.707,4.267,4.267v64
              h174.933c2.56,0,4.267,1.707,4.267,4.267v51.2C435.2,314.027,433.493,315.733,430.933,315.733z M311.467,128H192
              c-2.56,0-4.267-1.707-4.267-4.267c0-2.56,1.707-4.267,4.267-4.267h119.467c2.56,0,4.267,1.707,4.267,4.267
              C315.733,126.293,314.027,128,311.467,128z M294.4,76.8H192c-2.56,0-4.267-1.707-4.267-4.267c0-2.56,1.707-4.267,4.267-4.267h102.4
              c2.56,0,4.267,1.707,4.267,4.267C298.667,75.093,296.96,76.8,294.4,76.8z"/>
            </svg>
            Sitemap
          </h1>
          <table>
            <thead>
              <tr>
                <th>Location</th>
                <th>Modified</th>
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