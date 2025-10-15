select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select content_id
from "warehouse"."main"."stg_content"
where content_id is null



      
    ) dbt_internal_test