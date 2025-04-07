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

{% assign ml_files = site.static_files | where_exp: "file", "file.path contains '/ML/'" %}
{% for file in ml_files %}
  {% assign file_content = file.path | append: "" | file_read %}
  <!-- 处理文件内容 -->
{% endfor %}
