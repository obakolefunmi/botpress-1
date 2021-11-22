FROM docker pull botpress/server:v12_24_0

# ARG BP_MODULE_NLU_DUCKLINGURL=http://localhost:8000 
# ARG BP_MODULE_NLU_LANGUAGESOURCES='[{ "endpoint": "http://localhost:3100"}]' 

CMD ["./bp", "&" ,"./duckling"]


# ADD file:5d68d27cc15a80653c93d3a0b262a28112d47a46326ff5fc2dfbf7fa3b9a0ce8 in / 
# CMD ["bash"]
# ADD . /botpress # buildkit
# WORKDIR /botpress
# RUN /bin/sh -c apt update && 	apt install -y wget ca-certificates && 	update-ca-certificates && 	wget -O duckling https://s3.amazonaws.com/botpress-binaries/duckling-example-exe && 	chmod +x duckling && 	chmod +x bp && 	chgrp -R 0 /botpress && 	chmod -R g=u /botpress && 	apt install -y tzdata && 	ln -fs /usr/share/zoneinfo/UTC /etc/localtime && 	dpkg-reconfigure --frontend noninteractive tzdata && 	./bp extract # buildkit
# ENV BP_MODULE_NLU_DUCKLINGURL=http://localhost:8000
# ENV BP_MODULE_NLU_LANGUAGESOURCES='[{ "endpoint": "http://localhost:3100"}]' 
# ENV BP_IS_DOCKER=true
# ENV LANG=C.UTF-8
# EXPOSE map[3000/tcp:{}]
# CMD ["./duckling &./bp lang --langDir /botpress/data/embeddings &./bp"]
# # CMD ["/bin/sh" "-c" "./duckling & ./bp"]
