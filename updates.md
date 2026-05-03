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
      <article class="post-item blog-list-item">
        <div class="blog-item-image">
          {% if post.image %}
            <img src="{{ post.image | prepend: site.baseurl }}" alt="{{ post.title }}">
          {% else %}
            {% assign post_slug = post.slug | replace: '-', ' ' | truncatewords: 3, '' %}
            {% if post_slug contains 'brick' or post_slug contains 'humanoid' or post_slug contains 'robot' %}
              <img src="https://images.unsplash.com/photo-1485827404703-89b55fcc595e?w=400&h=400&fit=crop" alt="Humanoid robots and technology">
            {% elsif post_slug contains 'chi' or post_slug contains 'conference' or post_slug contains 'paper' %}
              <img src="https://images.unsplash.com/photo-1540575467063-178a50c2df87?w=400&h=400&fit=crop" alt="Conference and academic event">
            {% elsif post_slug contains 'augmented' or post_slug contains 'reality' or post_slug contains 'ar' or post_slug contains 'vr' or post_slug contains 'xr' %}
              <img src="https://images.unsplash.com/photo-1622979135225-d2ba269cf1ac?w=400&h=400&fit=crop" alt="Virtual and augmented reality">
            {% elsif post_slug contains 'melbourne' or post_slug contains 'aarhus' or post_slug contains 'visit' or post_slug contains 'sydney' %}
              <img src="https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=400&h=400&fit=crop" alt="Academic travel and university">
            {% elsif post_slug contains 'meetup' or post_slug contains 'gemini' or post_slug contains 'delegation' %}
              <img src="https://images.unsplash.com/photo-1544531586-fde5298cdd40?w=400&h=400&fit=crop" alt="Meeting and collaboration">
            {% elsif post_slug contains 'thesis' or post_slug contains 'phd' or post_slug contains 'defense' %}
              <img src="https://images.unsplash.com/photo-1456513080510-7bf3a84b82f8?w=400&h=400&fit=crop" alt="Academic research and thesis">
            {% elsif post_slug contains 'teaching' or post_slug contains 'lecture' or post_slug contains 'certificate' %}
              <img src="https://images.unsplash.com/photo-1524178232363-1fb2b075b655?w=400&h=400&fit=crop" alt="Teaching and education">
            {% elsif post_slug contains 'award' or post_slug contains 'honourable' or post_slug contains 'prize' %}
              <img src="https://images.unsplash.com/photo-1567427017947-545c5f8d16ad?w=400&h=400&fit=crop" alt="Awards and recognition">
            {% else %}
              <img src="https://images.unsplash.com/photo-1517245386807-bb43f82c33c4?w=400&h=400&fit=crop" alt="Research and technology">
            {% endif %}
          {% endif %}
        </div>
        <div class="blog-item-content">
          <span class="post-meta date-label">{{ post.date | date: "%b %d" }}</span>
          <div class="article-title"><a class="post-link" href="{{ post.url | prepend: site.baseurl | prepend: site.url }}">{{ post.title }}</a></div>
        </div>
      </article>
    {% endfor %}
  </div>
</section>
