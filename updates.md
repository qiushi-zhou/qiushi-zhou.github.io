---
layout: default
title: All Articles
permalink: /updates/
---

<section class="post-list">
  <div class="container blog-list-container">
    <h2 class="category-title">All Articles</h2>
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
      <article class="post-item blog-list-item-wide">
        <div class="blog-item-content-wide">
          <span class="post-meta date-label">{{ post.date | date: "%b %d" }}</span>
          <div class="article-title"><a class="post-link" href="{{ post.url | prepend: site.baseurl | prepend: site.url }}">{{ post.title }}</a></div>
        </div>
      </article>
    {% endfor %}
  </div>
</section>
