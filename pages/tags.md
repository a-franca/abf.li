---
layout: page
title: "Tags Directory"
description: "List of tags used in this blog"
permalink: tags
---

<ul>
  {% assign sorted_tags = site.tags | sort %}
  {% for tag in sorted_tags %}
    <li><a href="/tags/{{ tag | first | slugify }}/">{{ tag | first }}</a> ({{ tag | last | size }})</li>
  {% endfor %}
</ul>