-- Row-Level Security Policies for Supabase

-- Example policy to allow users to see their own data
CREATE POLICY "Select own data" 
ON your_table_name
FOR SELECT
USING (user_id = auth.uid());

-- Example policy to allow users to insert their own data
CREATE POLICY "Insert own data"
ON your_table_name
FOR INSERT
WITH CHECK (user_id = auth.uid());

-- Example policy to allow users to update their own data
CREATE POLICY "Update own data"
ON your_table_name
FOR UPDATE
USING (user_id = auth.uid());

-- Example policy to allow users to delete their own data
CREATE POLICY "Delete own data"
ON your_table_name
FOR DELETE
USING (user_id = auth.uid());
