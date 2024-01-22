---
layout: page
title: 'Blogroll'
description: "My favorite blogs around the world wide web"
permalink: blogroll
date: 2024-01-21
---

This is a list of my favorite blogs around the world wide web.

{:.tip}
You can subscribe to all of these blogs by <a href="{% link pages/blogroll.opml %}" download="blogroll.opml">downloading the OPML file</a> and importing it into your newsreader.

<!-- Feed-icon.svg: unnamed (Mozilla Foundation)User:Jahoe (GPL <http://www.gnu.org/licenses/gpl.html>, LGPL <http://www.gnu.org/licenses/lgpl.html>, MPL 1.1 <https://www.mozilla.org/MPL/1.1/>, MPL 1.1 <https://www.mozilla.org/MPL/1.1/>, GPL <http://www.gnu.org/licenses/gpl.html> or LGPL <http://www.gnu.org/licenses/lgpl.html>), via Wikimedia Commons -->
{% for item in site.data.blogroll %}
**[{{ item.name }}]({{ item.link }}){: rel="noopener noreferrer nofollow" target="_blank"}** - [<svg xmlns="http://www.w3.org/2000/svg" version="1.1" style="vertical-align: text-bottom; width: 1.15em; height: 1.15em;" id="RSSicon" viewBox="0 0 8 8"><title>RSS feed icon</title><style type="text/css">.button{stroke: none; fill: orange} .symbol{stroke: none; fill: white} </style><rect class="button" width="8" height="8" rx="1.5" /><circle class="symbol" cx="2" cy="6" r="1" /><path class="symbol" d="m 1,4 a 3,3 0 0 1 3,3 h 1 a 4,4 0 0 0 -4,-4 z" /><path class="symbol" d="m 1,2 a 5,5 0 0 1 5,5 h 1 a 6,6 0 0 0 -6,-6 z" /></svg>]({{ item.rss }}){: rel="noopener noreferrer nofollow" target="_blank"}  
*{{ item.description }}*
{% endfor %}

{:.info}
Check out [blogroll.org](https://blogroll.org/){: rel="noopener noreferrer nofollow" target="_blank"} for more blogs to follow.