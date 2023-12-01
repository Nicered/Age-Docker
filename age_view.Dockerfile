FROM node:14.16.0

RUN git clone https://github.com/apache/age-viewer /age-viewer

RUN cd /age-viewer && \
  git checkout main && \  
  npm run setup

WORKDIR /age-viewer

CMD ["npm", "run", "start"]