BEGIN
  IF NOT EXISTS (SELECT * FROM information_schema.tables WHERE table_name = 'users') THEN
    CREATE TABLE users (
      id INT AUTO_INCREMENT PRIMARY KEY,
      email VARCHAR(255) NOT NULL UNIQUE,
      name VARCHAR(255) NOT NULL
    );
  END IF;
END;
