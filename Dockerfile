# Use the official Node.js 24 image as the base image
FROM node:24

# Set the working directory in the container
WORKDIR /app

# Copy package.json and pnpm-lock.yaml
COPY package.json pnpm-lock.yaml ./

# Enable pnpm via Corepack and pin a version
RUN corepack enable && corepack prepare pnpm@9.15.5 --activate

# Enable pnpm via Corepack, then install dependencies with frozen lockfile to ensure consistency
RUN pnpm install --frozen-lockfile

# Copy the rest of the application code (non-ignored)
COPY . .

# Set ENV variables (optional, can be overridden at runtime)
ENV NODE_ENV=production
ENV PORT=8000

# Expose the port the app runs on
EXPOSE 8000

# Start the application
CMD ["pnpm", "start"]

