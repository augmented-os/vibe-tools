-- Migration file 005: Default values
-- Description: Sets default values for columns that should have them

-- Set default receipt status
ALTER TABLE receipts 
ALTER COLUMN receipt_status SET DEFAULT 'new';

-- Set default file status
ALTER TABLE receipt_files 
ALTER COLUMN file_status SET DEFAULT 'active';

-- Set default for is_primary flag in receipt_files
ALTER TABLE receipt_files 
ALTER COLUMN is_primary SET DEFAULT false;

-- Set default for active flag in rentals
ALTER TABLE rentals 
ALTER COLUMN active SET DEFAULT true;

-- Set default timezone for upload_date fields
ALTER TABLE receipts 
ALTER COLUMN upload_date SET DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE receipt_files 
ALTER COLUMN upload_date SET DEFAULT CURRENT_TIMESTAMP;

-- Set default creation timestamps
ALTER TABLE tenants 
ALTER COLUMN created_at SET DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN updated_at SET DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE users 
ALTER COLUMN created_at SET DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN updated_at SET DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE hosts 
ALTER COLUMN created_at SET DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN updated_at SET DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE rentals 
ALTER COLUMN created_at SET DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN updated_at SET DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE suppliers 
ALTER COLUMN created_at SET DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN updated_at SET DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE xero_account_codes 
ALTER COLUMN created_at SET DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN updated_at SET DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE xero_tracking_categories 
ALTER COLUMN created_at SET DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN updated_at SET DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE xero_tracking_options 
ALTER COLUMN created_at SET DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN updated_at SET DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE receipts 
ALTER COLUMN created_at SET DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN updated_at SET DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE receipt_files 
ALTER COLUMN created_at SET DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN updated_at SET DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE receipt_line_items 
ALTER COLUMN created_at SET DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN updated_at SET DEFAULT CURRENT_TIMESTAMP; 