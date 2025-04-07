---
permalink: /homeworks/
title: "Homework"
excerpt: ""
author_profile: true
layout: homeworks
redirect_from:
  - /homeworks.html
---


# 📚 Machine Learning Algorithms

{% assign ml_homeworks = site.homeworks | where_exp: "homeworks", "homeworks.path contains '/ML/'" %}
<p>There are {{ ml_homeworks.size }} ML homeworks.</p>
{% for hw in ml_homeworks %}
<div class="homework-item">
  <h3>{{ hw.title }}</h3>
  <div class="meta">
    <span class="due-date">Due: {{ hw.due_date | date: "%Y-%m-%d" }}</span>
    <span class="status">{{ hw.status }}</span>
  </div>
  <div class="content">
    {{ hw.content | markdownify }}
  </div>
  {% if hw.attachment %}
  <a href="{{ hw.attachment }}" class="btn btn--primary">Download Attachment</a>
  {% endif %}
</div>
<hr>
{% endfor %}


# 📚 Spatial Data Mining

{% assign dm_homeworks = site.homeworks | where_exp: "homeworks", "homeworks.path contains '/DM/'" %}
<p>There are {{ dm_homeworks.size }} DM homeworks.</p>
{% for hw in dm_homeworks %}
<div class="homework-item">
  <h3>{{ hw.title }}</h3>
  <div class="meta">
    <span class="due-date">Due: {{ hw.due_date | date: "%Y-%m-%d" }}</span>
    <span class="status">{{ hw.status }}</span>
  </div>
  <div class="content">
    {{ hw.content | markdownify }}
  </div>
  {% if hw.attachment %}
  <a href="{{ hw.attachment }}" class="btn btn--primary">Download Attachment</a>
  {% endif %}
</div>
<hr>
{% endfor %}
