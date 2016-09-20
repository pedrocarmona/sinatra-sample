FROM ruby:2.3.1

# Configure the main working directory
RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

# Copy the main application.
COPY . /usr/src/app

# Define mountable directories.
VOLUME ["/usr/src/app"]

RUN gem install sinatra

# Expose port 4567 to the Docker host, so we can access it from the outside.
EXPOSE 4567

# The main command to run when the container starts
CMD ["ruby", "sample.rb"]