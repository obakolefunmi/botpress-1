FROM botpress/server:latest

ARG BP_MODULE_NLU_DUCKLINGURL=http://localhost:8000 
ARG BP_MODULE_NLU_LANGUAGESOURCES='[{ "endpoint": "http://localhost:3100"}]' 

CMD ["./duckling &./bp lang --langDir /botpress/data/embeddings &./bp"]

