FROM node:20-alpine

WORKDIR /app

COPY . .

RUN npm install

# npx json-server --host 0.0.0.0 --watch app/data/db.json --port 8000
CMD ["npx", "json-server", "--host", "0.0.0.0", "--watch", "data/db.json", "--port", "8000"]
