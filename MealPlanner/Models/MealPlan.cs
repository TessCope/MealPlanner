namespace MealPlanner.Models
{
    public class MealPlan
    {
        public int Id { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public List<Meal> Meals { get; set; }

        public MealPlan()
        {
            
        }

        public MealPlan(int id, DateTime startDate, DateTime endDate, List<Meal> meals)
        {
            Id = id;
            StartDate = startDate;
            EndDate = endDate;
            Meals = meals;
        }
    }
}
