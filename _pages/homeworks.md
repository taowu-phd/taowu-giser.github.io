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

{% assign ml_homeworks = site.homeworks | where_exp: "item", "item.path contains 'ML_'" | sort: "due_date" %}
<p>Found {{ ml_homeworks.size }} machine learning homeworks</p>
