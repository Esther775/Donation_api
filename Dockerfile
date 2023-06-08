# Use the official Ruby image as the base
FROM ruby:latest

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    postgresql-client

# Set the working directory in the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock to the container
COPY Gemfile Gemfile.lock ./

# Install gems
RUN gem install bundler && bundle install 

# Copy the application code to the container
COPY . .

# Expose port 3000
EXPOSE 3000

# Set the entrypoint command
CMD ["rails", "server", "-b", "0.0.0.0"]
