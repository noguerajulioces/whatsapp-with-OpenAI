# ReminderIA - RoR

## Description

This project is a ReminderIA, allowing users to manage reminders via WhatsApp using AI (OpenAI) to interpret natural language commands. The application is built with Ruby on Rails and leverages services to maintain modular and clean code.

## Features

- **WhatsApp Integration**: Users can send text messages to create, edit, or delete reminders.
- **AI for Natural Language Processing**: Utilizes OpenAI to interpret user commands and create reminders.
- **Reminder Management**: Users can manage their reminders, including creating, editing, and deleting.
- **Context Handling**: The app maintains conversation context to provide more accurate responses.

## Project Structure

- **Models**
    - `User`: Stores user information.
    - `Reminder`: Stores user reminders.
    - `Message`: Logs sent and received messages.
    - `Conversation`: Stores conversation context.

- **Services**
    - `OpenAIService`: Handles interaction with the OpenAI API.
    - `ReminderService`: Manages the creation of reminders based on OpenAI responses.

- **Controllers**
    - `RemindersController`: Handles CRUD actions for reminders.
    - `MessagesController`: Processes incoming WhatsApp messages and sends responses.

## Installation

1. Clone this repository:

   ```bash
    git clone https://github.com/noguerajulioces/whatsapp-with-OpenAI.git
    ```

2. Install dependencies:

   ```bash
   bundle install
   ```

3. Set up the database:

   ```bash
   rails db:create db:migrate
   ```

4. Configure your OpenAI and Twilio credentials in your `.env` file.

5. Run the server:

   ```bash
   rails s
   ```

## Usage

1. Set up your WhatsApp account to send messages to the app.
2. Send messages with natural commands like "Remind me to buy milk tomorrow at 10 AM."
3. The app will process the command, create a reminder, and respond with a confirmation.

## Contributions

Contributions are welcome. Please follow these steps:

1. Fork the project.
2. Create a new branch (`git checkout -b feature/new-feature`).
3. Make your changes and commit (`git commit -m 'Add new feature'`).
4. Push to the branch (`git push origin feature/new-feature`).
5. Open a Pull Request.

## License

This project is licensed under the MIT License.

---