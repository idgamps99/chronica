# Chronica

## Video Demo
https://youtu.be/EbJ06y1mV2Y

## Description
Chronica is designed with two key purposes in mind:

1. **A Simple Journaling App** – A personal space for daily reflections, thoughts, and experiences.
2. **A Shared Memory Capsule** – A way to record and share past memories with friends on the app, preserving stories for future generations.

The inspiration behind this app comes from a personal place. My grandfather passed away before I was born, leaving no written record of his life. This absence made me realise the value of keeping a diary—not just for myself, but as a time capsule for those who come after me.

## Features

### Personal Journal
- **Daily Entries**: Record your thoughts, experiences, and reflections
- **Privacy Controls**: Choose what stays private and what can be shared
- **Search & Tags**: Easily find past entries through tags and full-text search

### Memory Capsule
- **Memory Prompts**: Receive thoughtful questions to inspire meaningful reflections
- **Legacy Access**: Designate trusted contacts who can access your memories in the future
- **Memory Collections**: Group related memories into themed collections

### Community Features
- **Friend Connections**: Connect with loved ones to share selected memories

## Technical Implementation

Chronica is built using Ruby on Rails, leveraging its robust MVC architecture to create a seamless user experience. The application utilizes:

- **Ruby on Rails 7**: For backend processing
- **PostgreSQL**: For reliable data storage and retrieval
- **Active Storage**: For managing uploaded media files
- **Devise**: For user authentication and session management
- **Importmaps**: For JavaScript module management

## Project Structure

- `app/models`: Core data models including User, Entry, Memory, and relationships
- `app/controllers`: Logic for handling requests and rendering views
- `app/views`: Frontend templates and components
- `app/assets`: Static files like stylesheets and images
- `app/javascript`: Frontend JavaScript functionality
- `config/routes.rb`: Application routing configuration

## Acknowledgments

This app was developed for the final project of Harvard's online CS50x course, using Ruby on Rails template generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.
