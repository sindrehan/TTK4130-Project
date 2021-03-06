within WasteWater.ASM1;
model aeration_energy "Ideal sensor to measure chemical oxygen demand (COD)"

  extends WasteWater.Icons.Aeration_energy;

  Modelica.Blocks.Interfaces.RealInput KlaTank5 annotation (Placement(transformation(extent={{-14,
            -102},{6,-82}})));

  Modelica.Blocks.Interfaces.RealOutput AE( start=0) annotation (Placement(
        transformation(extent={{88,-10},{108,10}})));

  Real T(start=1e-3);

  Real KlaTank3 = 240; // 240 originally
  Real KlaTank4 = 240; // 240 originally

  Real So_sat = 8;

equation
  der(T) = 1.0;
  der(AE*T) = So_sat/1.8/1000*1333*(KlaTank3 + KlaTank4 + KlaTank5);

  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics));
end aeration_energy;
