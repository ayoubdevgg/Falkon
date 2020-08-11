#include <Falkon.h>

class SandBoxApp : public Falkon::Application 
{
public:
   SandBoxApp() 
   {

   }
   ~SandBoxApp()
   {

   }
};

	
Falkon::Application* Falkon::CreateApplication() {

	return new SandBoxApp();
}