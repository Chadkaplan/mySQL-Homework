// Require dependencies
var mysql = require("mysql");
var inquirer = require("inquirer");
// Connection to database into a variable
var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "root",
    database: "bamazon_db"
})

let item;
// Connection and loading the items
connection.connect(function (err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId);
    displayInventory();
});
function displayInventory() {

    connection.query("SELECT item_id, product_name, department_name, price, stock_quantity FROM inventory", function (err, res) {
        if (err) throw err;

        //Style the terminal and greet customer
        console.log("---------------------------------------")
        console.log("Bamazon");
        console.log("---------------------------------------")

        //displays items
        console.table(res);
        //function prompts the customer for an item
        promptCustomerForItem();
    })
}

function promptCustomerForItem() {

    //Ask the customer the ID of the product they would like to buy.
    inquirer
        .prompt([
            {
                name: "id",
                type: "input",
                message: "Choose an item by ID:",
                validate: function (value) {
                    if (isNaN(value) === false) {
                        return true;
                    }
                    return false;
                }
            }
        ])
        .then(function (answer) {
            //Pick an item by ID
            item = answer.id
            var query = "SELECT * FROM inventory WHERE ?";
            connection.query(query, { item_id: item }, function (err, res) {
                if (err) throw err;
                itemName = res[0].product_name;
                console.table(res);
                itemQuantity();
            })
        });
};

function itemQuantity() {
    inquirer
        .prompt([
            {
                name: "quantity",
                type: "input",
                message: `How many would you like to purchase?`,
                validate: function (value) {
                    if (isNaN(value) === false) {
                        return true;
                    }
                    return false;
                }
            }
        ])
        .then(function (answer) {

            var query = "SELECT * FROM inventory WHERE ?";
            connection.query(query, { item_id: item }, function (err, res) {
                if (err) throw err;

                //if they are asking for less than in stock, run it
                if (answer.quantity <= res[0].stock_quantity) {
                    var newQuantity = res[0].stock_quantity - answer.quantity;
                    //   Update table
                    connection.query("UPDATE inventory SET stock_quantity=? WHERE item_id= ?", [newQuantity, item])

                    console.log("Your purchase was successful! Your order total is $" + (answer.quantity * res[0].price));
                }

                // if quantity unavailable then prompt quantity again
                else {
                    console.log("Insufficient quantity!");
                    displayInventory();
                }
            })
        });
}