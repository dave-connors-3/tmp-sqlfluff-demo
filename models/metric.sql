select
    *
from {{
    metrics.calculate(
        metric('my_favorite_metric')
    )
}}