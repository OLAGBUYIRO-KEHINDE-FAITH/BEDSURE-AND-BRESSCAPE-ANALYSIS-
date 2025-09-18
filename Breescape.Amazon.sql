-- PRODUCT TABLE
CREATE TABLE Product (
    product_id SERIAL PRIMARY KEY,
    asin VARCHAR(20) NOT NULL,
    brand VARCHAR(100),
    product_name TEXT NOT NULL,
    product_stars DECIMAL(2,1),     
    rating_count INT
);

-- REVIEWER TABLE
CREATE TABLE Reviewer (
    reviewer_id SERIAL PRIMARY KEY,
    reviewer_name VARCHAR(255) NOT NULL,
    country VARCHAR(100)
);

-- REVIEW TABLE
CREATE TABLE Review (
    review_id SERIAL PRIMARY KEY,
    product_id INT NOT NULL,
    reviewer_id INT NOT NULL,
    review_text TEXT NOT NULL,
    review_rating DECIMAL(2,1) NOT NULL,
    review_date DATE NOT NULL,
    helpful_count INT DEFAULT 0,
   
    -- Foreign Keys
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES Product(product_id) ON DELETE CASCADE,
    CONSTRAINT fk_reviewer FOREIGN KEY (reviewer_id) REFERENCES Reviewer(reviewer_id) ON DELETE CASCADE
);

	