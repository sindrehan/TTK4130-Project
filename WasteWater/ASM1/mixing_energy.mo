within WasteWater.ASM1;
model mixing_energy "Influent quality index"

  extends WasteWater.Icons.Influent_quality;
  extends Interfaces.stoichiometry;

  Interfaces.WWFlowAsm1in In annotation (Placement(transformation(extent={{-10,
            -110},{10,-90}})));

  Modelica.Blocks.Interfaces.RealInput KlaTank5 annotation (Placement(transformation(extent={{40,-68},
            {60,-48}})));
  Modelica.Blocks.Interfaces.RealOutput ME( start=0) annotation (Placement(
        transformation(extent={{88,-10},{108,10}})));

  Real T(start=1e-3);

  Real KlaTank1 = 0;
  Real KlaTank2 = 0;
  Real KlaTank3 = 240;
  Real KlaTank4 = 240;

  Real V1 = 1000;
  Real V2 = 1000;
  Real V3 = 1333;
  Real V4 = 1333;
  Real V5 = 1333;

  Real summation = 0;

equation
  if KlaTank1 < 20 then
    summation = summation + 0.005*V1;
  end if;
  if KlaTank2 < 20 then
    summation = summation + 0.005*V2;
  end if;
  if KlaTank3 < 20 then
    summation = summation + 0.005*V3;
  end if;
  if KlaTank4 < 20 then
    summation = summation + 0.005*V4;
  end if;
  if KlaTank5 < 20 then
    summation = summation + 0.005*V5;
  end if;

  der(T) = 1.0;

  der(ME*T) =24*summation;
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
            {100,100}}), graphics), Diagram(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics));
end mixing_energy;
