FROM node:14-alpine

WORKDIR /app

ENTRYPOINT [ "npm" ]

# CMD ["npm", "init"]  //We can do this but we want to run npm init in cmd for being more specific.