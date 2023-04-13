namespace MealPlanner.Models
{
    public class Meal
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public List<Recipe> Recipes { get; set; }


        public Meal()
        {
            
        }

        public Meal(int id, string name, List<Recipe> recipes)
        {
            Id = id;
            Name = name;
            Recipes = recipes;
        }
    }
}
