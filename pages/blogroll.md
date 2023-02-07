---
layout: page
title: 'Blogroll'
description: "My favorite blogs around the world wide web"
permalink: blogroll
date: 2023-01-15
---

<p>My favorite blogs around the world wide web, in no order of preference.</p>

<table>
  <thead>
    <tr>
      <th>Name / Description</th>
      <th>Links</th>
    </tr>
  </thead>
  <tbody>
    {% for item in site.data.blogroll %}
    <tr>
      <td>
        <p><b>{{ item.name }}</b> ~ {{ item.description }}</p>
      </td>
      <td>
        <a href="{{ item.link }}" rel="noopener noreferrer nofollow" target="_blank">Website</a>
        <a href="{{ item.rss }}" rel="noopener noreferrer nofollow" target="_blank">RSS</a>
      </td>
    </tr>
    {% endfor %}
  </tbody>
</table>




