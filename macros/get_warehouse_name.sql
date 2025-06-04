{% macro get_warehouse_for_model() %}
  {% if 'big' in model.tags %}
    snowflake_learning_wh
  {% else %}
    compute_wh
  {% endif %}
{% endmacro %}