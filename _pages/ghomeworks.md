---
permalink: /ghomeworks/
title: "Homework for Graduates"
excerpt: ""
author_profile: true
layout: homeworks
redirect_from:
  - /ghomeworks.html
---


# 📚 Big Data Programming

{% assign bdp_homeworks = site.homeworks | where_exp: "homeworks", "homeworks.path contains '/BDP/'" %}
<p>There are {{ bdp_homeworks.size }} BDP homeworks.</p>
{% assign current_date = site.time | date: "%s" %}
{% for hw in bdp_homeworks %}
{% assign due_date = hw.due_date | date: "%s" %}
<div class="homework-item">
  <h3>{{ hw.title }}</h3>
  <div class="meta">
    <span class="due-date">Due: {{ due_date | date: "%Y-%m-%d" }}</span>
    {% if due_date > current_date %}
      <span class="status"> active </span>
    {% else %}
      <span class="status status-closed"> closed </span>
    {% endif %}
  </div>
</div>
{% endfor %}