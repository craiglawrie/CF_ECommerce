using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CF_ECommerce.Startup))]
namespace CF_ECommerce
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
