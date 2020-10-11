FROM mhart/alpine-node:12.19.0 AS base
RUN apk add --no-cache tini 
ENTRYPOINT ["/sbin/tini", "--"]

FROM base AS install
WORKDIR /code
COPY package.json package-lock.json ./
RUN npm ci --production
COPY src src

FROM install AS start
CMD ["node", "src/app.js"]
