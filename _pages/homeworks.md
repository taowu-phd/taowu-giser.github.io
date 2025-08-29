---
permalink: /homeworks/
title: "Homework"
excerpt: ""
author_profile: true
layout: homeworks
redirect_from:
  - /homeworks.html
---


# 📚 Object Oriented Programming

{% assign oop_homeworks = site.homeworks | where_exp: "homeworks", "homeworks.path contains '/OOP/'" %}
<p>There are {{ oop_homeworks.size }} OOP homeworks.</p>
{% assign current_date = site.time | date: "%s" %}
{% for hw in oop_homeworks %}
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
    <span class="upload-label">Upload Link：</span>
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
<hr>
{% endfor %}


# 📚 Artificial Intelligence

{% assign ai_homeworks = site.homeworks | where_exp: "homeworks", "homeworks.path contains '/AI/'" %}
<p>There are {{ ai_homeworks.size }} AI homeworks.</p>
{% assign current_date = site.time | date: "%s" %}
{% for hw in ai_homeworks %}
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
    <span class="upload-label">Upload Link：</span>
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
<hr>
{% endfor %}
