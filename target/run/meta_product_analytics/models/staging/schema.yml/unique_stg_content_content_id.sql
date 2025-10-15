select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    content_id as unique_field,
    count(*) as n_records

from "warehouse"."main"."stg_content"
where content_id is not null
group by content_id
having count(*) > 1



      
    ) dbt_internal_test