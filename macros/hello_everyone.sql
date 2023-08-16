{% macro hello_everyone(names) -%}
{{
config(
materialized = 'table'
)
}}
SELECT
{% for name in names -%}
    {% set first = True -%}
    {% if first -%}
        'Hello {{name}}' AS greeting_{{name}}
        {% set first = False -%}
    {% else -%}
        ,'Hello {{name}}' AS greeting_{{name}}
    {% endif -%}
{%- endfor %}
{%- endmacro %}