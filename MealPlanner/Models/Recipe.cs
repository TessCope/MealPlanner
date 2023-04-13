namespace MealPlanner.Models
{
    public class Recipe
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Instructions { get; set; }
        public List<Ingredient> Ingredients { get; set; }

        public Recipe()
        {
            
        }

        public Recipe(int id, string name, string instructions, List<Ingredient> ingredients)
        {
            Id = id;
            Name = name;
            Instructions = instructions;
            Ingredients = ingredients;
        }
    }
}