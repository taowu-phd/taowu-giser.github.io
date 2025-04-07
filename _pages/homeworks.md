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

{% for homework in site.homeworks %}
  {% if homework.path contains 'ML' %}
  * [{{ homework.title }}]({{ homework.url | relative_url }})
  {% endif %}
{% endfor %}
