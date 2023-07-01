FROM openjdk:8-jre-alpine

# Install dependencies
RUN apk add --no-cache curl

# Set working directory
WORKDIR /app

# Download and install Minecraft server
RUN curl -o paper.jar https://papermc.io/api/v2/projects/paper/versions/1.20.1/builds/413/downloads/paper-1.20.1-413.jar

# Copy Skript file
COPY scripts/Boom.sk /app/plugins/Boom.sk

# Expose port
EXPOSE 25565

# Set startup command
CMD java -Xms2G -Xmx6G -jar paper.jar --nogui && sleep 10 && java -jar paper.jar --nogui --command "sk reload Boom.sk"
