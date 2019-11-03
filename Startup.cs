using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Shipping_AD.Startup))]
namespace Shipping_AD
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
