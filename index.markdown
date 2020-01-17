---
layout: default
title: Index
permalink: /
---

<ul>
{% assign sorted = site.static_files | where: "extname",".html" | reverse %}
{% for file in sorted  %}
  {% assign filepath = file.path | slice: 0, 5 %}
  {% unless file.path contains 'reveal' %}
  {% assign depth = file.path | split: "/" | size %}
  {% if filepath contains '20' and depth <= 3 %}
    <li><a href="{{site.url}}{{file.path}}"> {{file.path | remove_first: "/" | split: "/" | pop | join: " - "}} </a></li>
  {% endif %}
  {% endunless %}
{% endfor %}
{% for file in sorted  %}
  {% assign filepath = file.path | slice: 0, 5 %}
  {% unless file.path contains 'reveal' %}
  {% unless filepath contains '20' %}
  {% assign depth = file.path | split: "/" | size %}
  {% if depth <= 3 %}
    <li><a href="{{site.url}}{{file.path}}"> {{file.path | remove_first: "/" | split: "/" | pop | join: " - "}} </a></li>
  {% endif %}
  {% endunless %}
  {% endunless %}
{% endfor %}
</ul>	
	
Full [SiteMap.xml](sitemap.xml)
