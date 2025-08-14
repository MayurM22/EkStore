# 📄 Document Upload Platform

A Ruby on Rails application that allows users to:
- Authenticate via Devise
- Upload and manage documents
- Share documents via public short URLs

---

## 🛠 Tech Stack

- **Ruby:** 3.3.1  
- **Rails:** 8.0.2  
- **Bundler:** 2.5.9  
- **Database:** PostgreSQL  
- **Authentication:** Devise  
- **File Handling:** Active Storage (Local in development, can be extended to S3 for production)

---

## 📦 Step-by-Step Setup

Follow these steps to run the project on your local machine.

### 1️⃣ Prerequisites

Make sure you have installed:
- Ruby **3.3.1**
- Rails **8.0.2**
- Bundler **2.5.9**
- PostgreSQL

Check your versions:
```bash
ruby -v
rails -v
bundle -v
psql --version

2️⃣ Clone the Repository

git clone [repo_link]
cd EkStore

3️⃣ Install Gems

First, make sure you are using Bundler 2.5.9:

gem install bundler -v 2.5.9

Then install dependencies:

bundle install

4️⃣ Database Setup

We have already included the config/database.yml file in the repository, so you just need to create the database:

rails db:create
rails db:migrate

5️⃣ Setup Active Storage

Active Storage is already installed.
By default, development uses local storage (storage/ folder).
No extra configuration is needed unless you want cloud storage.
6️⃣ Start the Server

rails server

Visit: http://localhost:3000
🚀 Features
Authentication

    Sign up, login, logout using Devise.

Document Management

    Upload documents with title & description.

    View your uploaded files.

    Delete your documents.

Public Sharing

    Generate short shareable links.

    Anyone with the link can view/download the file.
