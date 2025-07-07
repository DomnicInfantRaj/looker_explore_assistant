view: incremental_pdt {
    derived_table: {
      explore_source: order_items {
        column: order_id {}
        column: sale_price {}
        column: created_date {}
        column: created_week {}
        column: created_month {}
        column: state { field: users.state }
      }
    }
    dimension: order_id {
      description: ""
      primary_key: yes
      type: number
    }
    dimension: sale_price {
      description: ""
      type: number
    }
    dimension: created_date {
      description: ""
      type: date
    }
    dimension: created_week {
      description: ""
      type: date_week
    }
    dimension: created_month {
      description: ""
      type: date_month
    }
    dimension: state {
      description: ""
    }

    measure: average_sale_price {
      type: average
      sql: ${sale_price} ;;
      value_format_name: usd
    }

  measure: total_revenue {
    type: sum
    sql: ${sale_price} ;;
    value_format_name: usd
  }
  }
