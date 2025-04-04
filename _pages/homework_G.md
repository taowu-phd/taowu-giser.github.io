---
permalink: /homework_g/
title: "Homework_Graduate"
author_profile: true
layout: default
---


# 📚 Big Data Programming

{% assign dbp_homeworks = site.homeworks_g | where_exp: "item", "item.path contains 'BDP_'" | sort: "due_date" %}
{% for hw in dbp_homeworks %}
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