---
layout: page
title: Archive
description: "All posts published over time"
permalink: /posts/
---

Feel free to <kbd>CMD+F</kbd> / <kbd>CTRL+F</kbd> to look up posts, or see [Search](/search).

<table>
  <thead>
    <tr>
      <th>Content</th>
      <th style="text-align: center; white-space: nowrap;">Published</th>
    </tr>
  </thead>
  <tbody>
    {% for post in site.posts %}
    <tr>
      <td>
        <a href="{{ post.url | prepend: site.url }}">{{ post.title }}</a>
      </td>
      <td style="text-align: center; white-space: nowrap; width: 50px;">
        <time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%b %d, %Y" }}</time>
      </td>
    </tr>
    {% endfor %}
  </tbody>
</table>