FROM node:18.20.7 AS build

WORKDIR /app

COPY . .

RUN npm install

RUN npm run build

FROM nginx:1.27.4-alpine

COPY --from=build /app/dist /usr/share/nginx/html/

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 5173

CMD ["nginx", "-g", "daemon off;"]


### EXPLANATION ###

# 1. Here in Frontend we con't run application directly using node distroless image, { to Reduce image size } so we can put a build in node image and  
#     Copy the Dist file then using the Nginx image {Minimal image} to Deploy. need to create "nginx.conf"



# 1. Here we run an application using  npm directly for a development environment, npm will hit the pacakage.json file first then search and
#     run the mentioned dev command. " CMD ["npm", "run", "dev"] "


# 2. " CMD ["nginx", "-g", "daemon off;"] " it ensures that NGINX runs in the foreground not in background { Daemon mode }.
             # By default, NGINX runs as a daemon mode, Running NGINX in the foreground (daemon off;) ensures that the container stays alive because
             # the NGINX process remains the main process in the container.



#------------ Without Distroless Image -------------


#FROM node:18.20.7

#WORKDIR /app

#COPY . .

#RUN npm install

#EXPOSE 5173

#CMD ["npm", "run", "dev"]

