using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ASPCV.Startup))]
namespace ASPCV
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
