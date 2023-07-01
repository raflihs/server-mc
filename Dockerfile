FROM openjdk:8-jre-alpine

# Install dependencies
RUN apk add --no-cache curl

# Set working directory
WORKDIR /app

# Expose port
EXPOSE 25565

# Set startup command
CMD java -Xms2G -Xmx6G -jar paper.jar --nogui && sleep 10 && java --command "sk reload Boom.sk"
