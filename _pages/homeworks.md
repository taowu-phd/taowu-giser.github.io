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
