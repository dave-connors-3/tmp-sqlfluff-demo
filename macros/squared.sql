{% macro squared(column) %}
    {{ column }}^2 as {{ column }}_squared
{% endmacro %}