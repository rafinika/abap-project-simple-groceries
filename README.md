# Simple Grocery App using ABAP RAP
ABAP Project by Yoga Rafinika

This project is a simple grocery application developed using ABAP RESTful Application Programming Model (RAP). The application allows users to manage and track grocery items.

## Introduction
The Simple Grocery App is designed to help users manage their grocery items efficiently. It is built using ABAP RAP, providing a modern and scalable approach to application development in SAP.

## Features

- Add new grocery items
- Update existing grocery items
- Delete grocery items
- View all or filter a list of grocery items
- **Check expiration dates** of grocery items

## Architecture
The application follows the ABAP RESTful Application Programming Model (RAP), which includes the following components:

- **Business Object (BO)**: Defines the data model and business logic.
- **Service Definition**: Exposes the BO as a service.
- **Service Binding**: Binds the service to a specific protocol (e.g., OData).

## Getting Started

### Prerequisites

- SAP NetWeaver AS ABAP 7.52 or higher
- ABAP Development Tools (ADT) in Eclipse
- SAP Universal ID to interact with the Fiori App

### Installation

1. Clone the repository to your local machine:

`git clone https://github.com/rafinika/abap-project-simple-groceries.git`

2. Import the project into your ABAP development environment.

3. Activate all the objects in the project.

### Usage
1. Open the application in your browser.

2. Use the interface to add, update, delete, and view grocery items.

3. To check the expiration date of a grocery item, select the item from the list and view its details. The expiration date will be displayed if available.

### Fiori App
You can directly interact with the app using the following Fiori app link:

[Fiori App Link](https://23bf02f0-9d4d-4fe7-ae57-cab54ffafb1e.abap-web.us10.hana.ondemand.com/sap/bc/adt/businessservices/odatav4/feap/C%C2%87u%C2%84C%C2%83%C2%84%C2%89C%C2%83xu%C2%88uHC%C2%87u%C2%84C%C2%8E%C2%8D%C2%86s%C2%89%7Ds%7B%C2%86%C2%83wy%C2%86%C2%8Ds%C2%83HC%C2%87%C2%86%C2%8AxC%C2%87u%C2%84C%C2%8E%C2%8D%C2%86s%C2%89%7Ds%7B%C2%86%C2%83wy%C2%86%C2%8Ds%C2%83HCDDDEC77nmfsWs%5BfcWYfm777777nmfsi%5Ds%5BfcWYfmscH77DDDE77nmfsi%5Ds%5BfcWYfmscH/index.html?sap-ui-xx-viewCache=false&sap-ui-language=EN&sap-client=100 "Simple Grocery App")

Screenshot from the Fiori App
![Screenshot Grocery App](/ss-grocery-app.png "Grocery App")
## Test Cases
1. **Test Case: Add New Grocery Item**

    - **Test ID**: TC001
    - **Description**: Verify that a new grocery item can be added successfully.
    - **Preconditions**: None
    - **Steps**:

      a. Open the application.

      b. Navigate to the "Create" button.

      c. Enter the item details (name, quantity, expiration date, etc).

      d. Click on the "Create" button.

    - **Expected Result**: The new item should be added to the list of grocery items.

2. **Test Case: Update Existing Grocery Item**

    - **Test ID**: TC002
    - **Description**: Verify that an existing grocery item can be updated successfully.
    - **Preconditions**: A grocery item exists in the list.
    - **Steps**:

      a. Open the application.

      b. Select an item from the list.

      c. Click on the "Edit" button.

      d. Modify the item details (name, quantity, expiration date, etc).

      e. Click on the "Save" button.
  
    - **Expected Result**: The item details should be updated in the list.
  
3. **Test Case: Delete Grocery Item**

    - **Test ID**: TC003
    - **Description**: Verify that a grocery item can be deleted successfully.
    - **Preconditions**: A grocery item exists in the list.
    - **Steps**:

      a. Open the application.

      b. Select an item from the list.

      c. Click on the "Delete" button.

      d. Confirm the deletion.
    
    - **Expected Result**: The item should be removed from the list.

4. **Test Case: View All Grocery Items**

    - **Test ID**: TC004
    - **Description**: Verify that all grocery items can be viewed successfully.
    - **Preconditions**: None
    - **Steps**:

      a. Open the application.

      b. Navigate to the "Adapt Filters" section to filter the list.

      c. Click on the "Go" button

    - **Expected Result**: A list of all grocery items should be displayed.
      
5. **Test Case: Check Expiration Date**

    - **Test ID**: TC005
    - **Description**: Verify that the expiration date of a grocery item can be checked.
    - **Preconditions**: A grocery item with an expiration date exists in the list.
    - **Steps**:

      a. Open the application.

      b. Select an item from the list.

      c. Click on the "Check for Expiration" button
      
    - **Expected Result**: The expiration date of the item should be updated.

## Project Structure
src/: Contains the source code for the application.

## Contributing
Contributions are welcome! Please fork the repository and create a pull request with your changes.

## Contact
If you have any questions, feel free to reach out to [rafinika](https://github.com/rafinika "ABAP Developer").

Feel free to let me know if you need any additional changes or information!
