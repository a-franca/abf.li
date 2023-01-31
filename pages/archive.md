---
layout: page
title: Archive
description: "All published posts over time"
permalink: archive
date: 2022-12-15 10:00:00
---

Feel free to <kbd>CMD+F</kbd> / <kbd>CTRL+F</kbd> to look up posts, or see [Search](/search/).

<table>
  <thead>
    <tr>
      <th>Content</th>
      <th>Published</th>
    </tr>
  </thead>
  <tbody>
    {% for post in site.posts %}
    <tr>
      <td>
        <a href="{{ post.url | prepend: site.url }}">{{ post.title }}</a>
      </td>
      <td>
        <time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%m/%d/%Y" }}</time>
      </td>
    </tr>
    {% endfor %}
  </tbody>
</table>