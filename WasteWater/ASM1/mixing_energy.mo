within WasteWater.ASM1;
model mixing_energy "Influent quality index"

  extends WasteWater.Icons.Mixing_energy;
  extends Interfaces.stoichiometry;

  Modelica.Blocks.Interfaces.RealInput KlaTank5 annotation (Placement(transformation(extent={{-14,
            -102},{6,-82}})));
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

  Real sum1;
  Real sum2;
  Real sum3;
  Real sum4;
  Real sum5;

  // if (KlaTank2 < 20) then
  //   summation = summation + 0.005*V2;
  // if (KlaTank3 < 20) then
  //   summation = summation + 0.005*V3;
  // if (KlaTank4 < 20) then
  //   summation = summation + 0.005*V4;
  // if (KlaTank5 < 20) then
  //   summation = summation + 0.005*V5;

equation
  if (KlaTank1 < 20) then
    sum1 = 0.005*V1;
  else
    sum1 = 0;
  end if;

  if (KlaTank2 < 20) then
    sum2 = 0.005*V2;
  else
    sum2 = 0;
  end if;

  if (KlaTank3 < 20) then
    sum3 = 0.005*V3;
  else
    sum3 = 0;
  end if;

  if (KlaTank4 < 20) then
    sum4 = 0.005*V4;
  else
    sum4 = 0;
  end if;

  if (KlaTank5 < 20) then
    sum5 = 0.005*V5;
  else
    sum5 = 0;
  end if;

  der(T) = 1.0;

  der(ME*T) =24*(sum1+sum2+sum3+sum4+sum5);
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
            {100,100}}), graphics), Diagram(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics));
end mixing_energy;
