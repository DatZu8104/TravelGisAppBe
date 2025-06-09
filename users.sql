CREATE TABLE "users" (
"id" SERIAL NOT NULL UNIQUE,
"users" VARCHAR(255) NOT NULL UNIQUE,
"password" VARCHAR(255) NOT NULL,
"email" VARCHAR(255) NOT NULL UNIQUE,
PRIMARY KEY("id")
);

CREATE TABLE "user_registrations" (
  "id" SERIAL PRIMARY KEY,
  "user_id" INTEGER NOT NULL,
  "registration_date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  "ip_address" VARCHAR(45), 
  "activation_token" VARCHAR(255),
  "is_activated" BOOLEAN DEFAULT FALSE,
  FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE CASCADE
);

CREATE TABLE "contacts" (
  "id" SERIAL PRIMARY KEY,
  "full_name" VARCHAR(255) NOT NULL,
  "email" VARCHAR(255) NOT NULL,
  "phone" VARCHAR(20),
  "message" TEXT,
  "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
