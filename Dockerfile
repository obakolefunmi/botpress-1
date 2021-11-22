# ENV BP_MODULE_NLU_DUCKLINGURL=http://localhost:8000 
# ENV BP_MODULE_NLU_LANGUAGESOURCES='[{ "endpoint": "http://localhost:3100"}]' 
#FROM botpress/server:latest
#CMD ["./duckling &./bp lang --langDir /botpress/data/embeddings &./bp"]

CMD ["docker run -d --name bp -p 3000:3000 -p 3100:3100 -v botpress_data:/botpress/data -e BP_MODULE_NLU_DUCKLINGURL=http://localhost:8000 -e BP_MODULE_NLU_LANGUAGESOURCES='[{ "endpoint": "http://localhost:3100" }]' botpress/server:$TAG bash -c "./duckling & ./bp lang --langDir /botpress/data/embeddings & ./bp""]
