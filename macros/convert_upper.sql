{% macro convert_uppercase(colname) %}
UPPER({{colname}})
{% endmacro %}