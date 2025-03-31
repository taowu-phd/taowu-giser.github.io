---
permalink: /homework/
title: "Homework"
author_profile: true
layout: default
---


# 📚 Machine Learning Algorithms

test1312312

<!-- # 📚 Course Homework -->
# 📚 Spatial Data Mining

{% for hw in site.homeworks %}
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