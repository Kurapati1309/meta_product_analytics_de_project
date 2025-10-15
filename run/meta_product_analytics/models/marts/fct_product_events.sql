
  
    
    

    create  table
      "warehouse"."main"."fct_product_events__dbt_tmp"
  
    as (
      with e as (select * from "warehouse"."main"."stg_events")
select * from e
    );
  
  