FROM openjdk:8-jre-alpine

# Install dependencies
RUN apk add --no-cache curl

# Set working directory
WORKDIR /app

# Expose port
EXPOSE 25565

# Set startup command
CMD start.bat && sleep 10 && java -jar paper.jar --nogui --command "sk reload Boom.sk"
