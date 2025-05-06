FROM node:18.20.7 AS build

WORKDIR /app

COPY . .

RUN npm install 

FROM gcr.io/distroless/nodejs18-debian12:debug

WORKDIR /app

COPY --from=build /app .

EXPOSE 5050

CMD ["server.js"]



#### EXPLANATION #### [node Flow]

# 1. Using the distroless image we can reduce the Final image size.
# 2. here we just Copy the source code files and including node modules which present all installed dependencies, because in 'Distroless
#     image it does not contain "npm" or other packages it only contain "Node Runtime environment".

# 3. In Normal image method we run a" CMD ["npm", "start"] " here npm will start the node server { note: like API will Run in an surver }
#     npm will hit the pacakage.json first and search the mentioned command  Start.

# 4. But in Distroless image it already contain "Node Entrypoint", using node it will directly hit the server.js or app.js file to run 
#      the node server. " CMD ["server.js"] "

# 5. We can run an application using npm and Node depons on environment.



# ---------  Without Distroless Image ---------#

#FROM node:18.20.7 

#WORKDIR /app

#COPY . .

#RUN npm install 

#EXPOSE 5050

#CMD ["npm", "start"]

