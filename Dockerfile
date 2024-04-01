# syntax=docker/dockerfile:1

FROM node:18-alpine
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 5000

# docker image build -t image_ka_naam:tag_ka_naam .
# docker run -dp 127.0.0.1:8000:8000 image_ka_naam:tag_ka_naam