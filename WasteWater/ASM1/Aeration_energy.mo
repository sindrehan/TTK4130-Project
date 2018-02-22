within WasteWater.ASM1;
model Aeration_energy "Ideal sensor to measure chemical oxygen demand (COD)"

  extends WasteWater.Icons.sensor_COD;
  Modelica.Blocks.Interfaces.RealInput Kla3
    "Monitors Aeration energy for tank 3";
  Modelica.Blocks.Interfaces.RealInput Kla4
    "Monitors Aeration energy for tank 3";
  Modelica.Blocks.Interfaces.RealInput Kla5
    "Monitors Aeration energy for tank 3";

  Modelica.Blocks.Interfaces.RealOutput AE( start=0) annotation (Placement(
        transformation(extent={{88,-10},{108,10}})));

  Real T(start=1e-3);

equation
  der(T) = 1.0;
  der(AE*T) = So_sat/1.8/1000*1333*(Kla3 + Kla4 + Kla5);

end Aeration_energy;
