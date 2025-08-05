# Hunguryy - Frontend

This directory contains the frontend for the Hunguryy restaurant ordering system, built with HTML, CSS, and vanilla JavaScript.

## Overview

The frontend provides the user interface for customers to browse the menu, place orders, and make payments. It also includes an admin panel for restaurant staff to manage orders.

## Features

* **Dynamic Menu:** Fetches and displays the menu from the backend API.
* **Shopping Cart:** Allows users to add, remove, and update items in their cart.
* **Order Placement:** Submits orders to the backend and handles the payment process with Razorpay.
* **Order Status Tracking:** Shows the real-time status of a customer's order.
* **Admin Dashboard:** A view for staff to see and manage incoming orders.

## Running the Frontend

There are two ways to run the frontend:

### 1. Directly in the Browser

Since the frontend is built with static files, you can simply open the `.html` files (e.g., `index.html`, `menu.html`) in your web browser.

**Note:** For the API calls to the backend to work, the backend server must be running (by default at `http://127.0.0.1:5000`). You may also need to handle CORS (Cross-Origin Resource Sharing) issues, which can be done by using a browser extension for development or by ensuring the Flask backend is configured to allow requests from the frontend's origin.

### 2. Using the Docker Container

A `Dockerfile` is provided to run the frontend in a containerized Nginx server.

1.  **Build the Docker image:**
    ```bash
    docker build -t hungury-frontend .
    ```

2.  **Run the Docker container:**
    ```bash
    docker run -d -p 8080:80 --name hungury-frontend-container hungury-frontend
    ```

The frontend will then be accessible at `http://localhost:8080`. This method is recommended as it mimics a production environment and avoids potential CORS issues.

## Backend Connection

The JavaScript files are configured to connect to the backend API at `http://127.0.0.1:5000/api`. If your backend is running on a different address, you will need to update the `API_URL` constant in the `<script>` sections of the HTML files.
