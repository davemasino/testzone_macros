{% macro hello_everyone(names) -%}
{{
config(
materialized = 'table'
)
}}
SELECT
{% for name in names -%}
'Hello {{name}}' AS greeting_{{name}},
{%- endfor %}
{%- endmacro %}