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
      <span class="status status-active"> active </span>
    {% else %}
      <span class="status status-closed"> closed </span>
    {% endif %}
  </div>
  <div class="upload">
    <h2>Upload Link:</h2>
    {% if due_date > current_date %}
      <a href="{{ hw.upload_link }}" class="upload-link active-link">作业上传连接（点这里）</a>
    {% else %}
      <span class="upload-link disabled-link">英雄请明年再来</span>
    {% endif %}
  </div>
  <div class="content">
    {{ hw.content | markdownify }}
  </div>
  {% if hw.attachment %}
  <a href="{{ hw.attachment }}" class="btn btn--primary">Download Attachment</a>
  {% endif %}
</div>
{% endfor %}