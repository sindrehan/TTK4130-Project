within WasteWater.ASM1;
model Settler_Task10
  "A settler that calculates the surface area to allow for perfect separation"
  extends Settler_Task9;

Real A(start=10.0, fixed=false);     // The variable surface area of the settler
Real T(start=1000.0, fixed=false);   // The time spent in the settler
Real v(start=1000.0, fixed=false);   // The velocity of the particle
Real rhop = 1200.0;                  // The density of the particle
Real rhof = 1000.0;                  // The density of the liquid
Real d = 0.0005;                     // The diameter of the particle
Real mu = 0.001;                     // The viscosity of the liquid
Real h = 4.0;                        // Height of settler
Real g = 9.81;                       // Gravitational constant

equation
  //Equation 15
  T = A*h/Feed.Q*60*60*24;  // Q is the inflow rate, 60*60*24 to make it in sek

  //Equation 16
  T = h/v;

  //Equation 13
  v = (g*(rhop - rhof)*d*d)/(18*mu);

end Settler_Task10;
