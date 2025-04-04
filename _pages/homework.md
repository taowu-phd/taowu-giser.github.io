---
permalink: /homework/
title: "Homework"
author_profile: true
layout: default
---


# 📚 Machine Learning Algorithms

{% assign ml_homeworks = site.homeworks | where_exp: "item", "item.path contains 'ML_'" | sort: "due_date" %}
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

<!-- # 📚 Course Homework -->
# 📚 Spatial Data Mining

{% assign dm_homeworks = site.homeworks | where_exp: "item", "item.path contains 'DM_'" %}
{% assign sorted_dm = dm_homeworks | sort_by_date %}
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