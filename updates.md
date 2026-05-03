---
layout: page
title: All Articles
permalink: /updates/
---

{% for post in site.posts %}
  {% unless post.next %}
    <h2 class="category-title">{{ post.date | date: '%Y' }}</h2>
  {% else %}
    {% capture year %}{{ post.date | date: '%Y' }}{% endcapture %}
    {% capture nyear %}{{ post.next.date | date: '%Y' }}{% endcapture %}
    {% if year != nyear %}
      <h2 class="category-title">{{ post.date | date: '%Y' }}</h2>
    {% endif %}
  {% endunless %}
  
  <div class="post-meta date-label">{{ post.date | date: "%b %d" }}</div>
  <h3 class="post-title"><a class="post-link" href="{{ post.url | prepend: site.baseurl | prepend: site.url }}">{{ post.title }}</a></h3>
  
  {% if post.excerpt %}
    <p>{{ post.excerpt | strip_html | truncatewords: 50 }}</p>
  {% endif %}
  
  {% if forloop.last == false %}
    <div class="divider"></div>
  {% endif %}
{% endfor %}
