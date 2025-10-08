# ---- Stage 1: Build the Next.js app ----
FROM node:18-alpine AS builder

# Set working directory
WORKDIR /app

# Copy package files
COPY my-nextjs-app/package*.json ./my-nextjs-app/

# Move into the app directory
WORKDIR /app/my-nextjs-app

# Install dependencies
RUN npm install

# Copy the rest of the app source code
COPY my-nextjs-app/ .

# Build the Next.js app
RUN npm run build

# ---- Stage 2: Run the production server ----
FROM node:18-alpine AS runner

WORKDIR /app

# Copy only the necessary files from builder stage
COPY --from=builder /app/my-nextjs-app ./

# Expose the Next.js default port
EXPOSE 3000

# Start the Next.js app
CMD ["npm", "start"]
