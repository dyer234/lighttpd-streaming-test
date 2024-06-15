# Lighttpd Video Streaming with Docker

This project sets up a Lighttpd server using Docker to stream video files. Follow the instructions below to get started.

This is a simple example of using a video player (video.js) with a web server that supports byte ranges as part of the request to stream video

Note: BYOV - Bring Your Own Video Files


## Prerequisites

- Docker
- Docker Compose

## Setup Instructions

1. **Create the Video Directory**

   Create a `videos` directory in the root of the project:

   ```bash
   mkdir videos
   ```

2. Add a video called test.mp4 to the videos folder

3. **Start the Lighttpd server**
   ```bash
   docker compose up
   ```  
