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

{% assign ml_homeworks = site.static_files | where_exp: "file", "file.path contains '/ML/'" %}
<p>There are {{ml_homeworks.size}} homeworks.</p>
{% for hw in ml_homeworks %}
<div class="homework-item">
  <h3>{{ hw.title }}</h3>
</div>
{% endfor %}
