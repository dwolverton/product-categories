# Product Categories Demo
This demo shows a one-to-many relationship between category and product--each category can have many products.

## Setup
1. Clone project. `git clone https://github.com/dwolverton/product-categories.git`
2. Import to Eclipse as existing Maven project.
3. In `application.properties`,
    1. make sure the database schema, username, and password are correct.
    2. Set `spring.jpa.hibernate.ddl-auto=update`. This will automatically create the database tables on startup.
4. Run `ProductCategoriesApplication.java`.
5. Go to [http://localhost:8080](http://localhost:8080).

## What already works
* A listing page of categories read from the database
* A form for adding categories

## Next Steps
1. A listing page of products read from the database.
    * URL Path: `/products`
    * Product entity should have *name*, *description*, *price*
2. A listing page of products limited to selected category.
3. A form to add a product
    * Includes a &lt;select&gt; for picking the category

## Pull Request
