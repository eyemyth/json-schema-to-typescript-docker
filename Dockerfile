FROM node:20

RUN npm install --location=global json-schema-to-typescript
RUN npm install --location=global @yao-pkg/pkg

RUN pkg -t node20-linux --output /root/json2ts /usr/local/lib/node_modules/json-schema-to-typescript/dist/src/cli.js

ENTRYPOINT ["/root/json2ts"]
