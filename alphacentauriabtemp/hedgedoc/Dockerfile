# Use the official HedgeDoc image as a base
FROM quay.io/hedgedoc/hedgedoc:1.9.9-alpine

# Install git for sqlite3
RUN apk add git

# Install sqlite3
RUN npm install sqlite3@5.1.6 --legacy-peer-deps

RUN mkdir /data

RUN chown -R hedgedoc /data

# Continue with the default command
CMD ["npm", "start"]
