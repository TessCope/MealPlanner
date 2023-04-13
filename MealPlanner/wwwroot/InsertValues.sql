-- Insert a MealPlan
INSERT INTO [MealPlan] ([StartDate], [EndDate])
VALUES ('2023-04-10 00:00:00.0000000', '2023-04-16 00:00:00.0000000');

-- Insert a Meal for the MealPlan
DECLARE @mealPlanId INT = SCOPE_IDENTITY();

INSERT INTO [Meal] ([Name], [MealPlanId])
VALUES ('Breakfast', @mealPlanId);

-- Insert a Recipe for the Meal
DECLARE @mealId INT = SCOPE_IDENTITY();

INSERT INTO [Recipe] ([Name], [Instructions], [MealId])
VALUES ('Omelette', '1. Beat eggs. 2. Add salt and pepper. 3. Cook in a pan.', @mealId);

-- Insert Ingredients for the Recipe
DECLARE @recipeId INT = SCOPE_IDENTITY();

INSERT INTO [Ingredient] ([Name], [Amount], [Unit], [RecipeId])
VALUES ('Eggs', 2, 'units', @recipeId);

INSERT INTO [Ingredient] ([Name], [Amount], [Unit], [RecipeId])
VALUES ('Salt', 1, 'pinch', @recipeId);

INSERT INTO [Ingredient] ([Name], [Amount], [Unit], [RecipeId])
VALUES ('Pepper', 1, 'pinch', @recipeId);
-- Insert a MealPlan
DECLARE @mealPlanId1 INT;
INSERT INTO [MealPlan] ([StartDate], [EndDate])
VALUES ('2023-04-01 00:00:00.0000000', '2023-04-07 00:00:00.0000000');
SET @mealPlanId1 = SCOPE_IDENTITY();

-- Insert a Meal for the MealPlan
DECLARE @mealId1 INT;
INSERT INTO [Meal] ([Name], [MealPlanId])
VALUES ('Lunch', @mealPlanId1);
SET @mealId1 = SCOPE_IDENTITY();

-- Insert a Recipe for the Meal
DECLARE @recipeId1 INT;
INSERT INTO [Recipe] ([Name], [Instructions], [MealId])
VALUES ('Grilled Cheese Sandwich', '1. Butter bread. 2. Add cheese. 3. Grill until cheese melts.', @mealId1);
SET @recipeId1 = SCOPE_IDENTITY();

-- Insert Ingredients for the Recipe
INSERT INTO [Ingredient] ([Name], [Amount], [Unit], [RecipeId])
VALUES ('Bread', 2, 'slices', @recipeId1);

INSERT INTO [Ingredient] ([Name], [Amount], [Unit], [RecipeId])
VALUES ('Cheese', 2, 'slices', @recipeId1);

-- Insert a MealPlan
DECLARE @mealPlanId2 INT;
INSERT INTO [MealPlan] ([StartDate], [EndDate])
VALUES ('2023-04-08 00:00:00.0000000', '2023-04-14 00:00:00.0000000');
SET @mealPlanId2 = SCOPE_IDENTITY();

-- Insert a Meal for the MealPlan
DECLARE @mealId2 INT;
INSERT INTO [Meal] ([Name], [MealPlanId])
VALUES ('Dinner', @mealPlanId2);
SET @mealId2 = SCOPE_IDENTITY();

-- Insert a Recipe for the Meal
DECLARE @recipeId2 INT;
INSERT INTO [Recipe] ([Name], [Instructions], [MealId])
VALUES ('Spaghetti Bolognese', '1. Cook spaghetti. 2. Brown ground beef. 3. Add tomato sauce. 4. Serve over spaghetti.', @mealId2);
SET @recipeId2 = SCOPE_IDENTITY();

-- Insert Ingredients for the Recipe
INSERT INTO [Ingredient] ([Name], [Amount], [Unit], [RecipeId])
VALUES ('Spaghetti', 200, 'g', @recipeId2);

INSERT INTO [Ingredient] ([Name], [Amount], [Unit], [RecipeId])
VALUES ('Ground Beef', 250, 'g', @recipeId2);

INSERT INTO [Ingredient] ([Name], [Amount], [Unit], [RecipeId])
VALUES ('Tomato Sauce', 1, 'can', @recipeId2);