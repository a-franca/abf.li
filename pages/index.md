---
layout: page
title: "Home"
description: "The personal blog of Andre Franca"
permalink: /
---

{: .index-title}
# Hi, I'm Andre, and this is my personal blog.

Here, you will see me writing about things I love and my thoughts on different topics, specially technology, of which I am a great enthusiast by the way.

In my spare time, I study programming languages.  
I want to be able to contribute, not only financially, to FOSS projects that I like, or to develop a useful application some day as a hobby project.

I don't post often. Like most of you readers, I am a very busy person with my family and work. However, quality over quantity, so I hope you understand.

Last but not least, this site provides both an [RSS](/feed.xml) and a [JSON](/feed.json) feed, so you can catch up on what I'm posting using your newsreader client of choice.

{: #latest-posts}
<table>
  <thead>
    <tr>
      <th>Latest Posts</th>
      <th style="text-align: center; white-space: nowrap;">Published</th>
    </tr>
  </thead> 
  <tbody>
    {% for post in site.posts limit:10 %}
    <tr>
      <td>
        <a href="{{ post.url }}">{{ post.title }}</a>
      </td>
      <td style="text-align: center; white-space: nowrap; width: 50px;">
        <time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%b %d, %Y" }}</time>
      </td>
    </tr>
    {% endfor %}
    <tr>
      <td>
        &#8618; See <a href="{{ '/posts/' }}">Archive</a> for older posts.
      </td>
      <td></td>
     </tr> 
  </tbody>
</table>

{: #contact}
## Elsewhere...

* **Email** ~ [{{ site.author.email }}](mailto:{{ site.author.email }})
* **Mastodon** ~ [{{ site.author.mastodon-handle }}]({{ site.author.mastodon }} "Follow on Mastodon"){: rel="me noopener" target="_blank" }
* **Git** ~ [{{ site.author.git }}]({{ site.author.git }} "Source Code Repository"){: rel="me noopener" target="_blank" }

*[FOSS]: Free and Open Source Software