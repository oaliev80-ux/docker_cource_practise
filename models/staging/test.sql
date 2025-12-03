{{ config (materialized='table',
 on_configuration_change="apply",
 indexes=[
        {
            "columns": ["book_date"],
            "unique":  false
            
        }
         ]
   
          )

 }}

      select
        book_date,
        total_amount,
        book_ref


      from {{ source('demo_src', 'bookings') }}

    