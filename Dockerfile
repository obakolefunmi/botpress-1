-v botpress_dataa: /botpress/data 
-e BP_MODULE_NLU_DUCKLINGURL=http://localhost:8000 
-e BP_MODULE_NLU_LANGUAGESOURCES='[{ "endpoint": "http://localhost:3100"}]' 
FROM botpress/server:latest
CMD ["./duckling &./bp lang --langDir /botpress/data/embeddings &./bp"]
