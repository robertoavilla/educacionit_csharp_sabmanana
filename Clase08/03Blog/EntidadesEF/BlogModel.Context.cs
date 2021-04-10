﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EntidadesEF
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class BlogEntities : DbContext
    {
        public BlogEntities()
            : base("name=BlogEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Categoria> Categorias { get; set; }
        public virtual DbSet<Comentario> Comentarios { get; set; }
        public virtual DbSet<Post> Posts { get; set; }
    
        public virtual ObjectResult<SP_Categorias_Result> SP_Categorias(Nullable<int> parametroNumerico, string parametroTexto)
        {
            var parametroNumericoParameter = parametroNumerico.HasValue ?
                new ObjectParameter("ParametroNumerico", parametroNumerico) :
                new ObjectParameter("ParametroNumerico", typeof(int));
    
            var parametroTextoParameter = parametroTexto != null ?
                new ObjectParameter("ParametroTexto", parametroTexto) :
                new ObjectParameter("ParametroTexto", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_Categorias_Result>("SP_Categorias", parametroNumericoParameter, parametroTextoParameter);
        }
    }
}
