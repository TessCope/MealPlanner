﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using MealPlanner.Models;

namespace MealPlanner.Data
{
    public class MealPlannerContext : DbContext
    {
        public MealPlannerContext (DbContextOptions<MealPlannerContext> options)
            : base(options)
        {
        }

        public DbSet<MealPlanner.Models.Ingredient> Ingredient { get; set; } = default!;

        public DbSet<MealPlanner.Models.Meal>? Meal { get; set; }

        public DbSet<MealPlanner.Models.MealPlan>? MealPlan { get; set; }

        public DbSet<MealPlanner.Models.Recipe>? Recipe { get; set; }
    }
}
