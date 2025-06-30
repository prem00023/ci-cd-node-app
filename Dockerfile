# Step 1: Use an official Node.js image as base
FROM node:16

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy package.json and package-lock.json
COPY package*.json ./

# Step 4: Install project dependencies
RUN npm install

# Step 5: Copy the rest of the application
COPY . .

# Step 6: Expose port 3000
EXPOSE 3000

# Step 7: Command to run the app
CMD ["npm", "start"]
