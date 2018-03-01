within WasteWater.ASM1;
model overall_cost_indicator "Overall cost indicator"

  extends WasteWater.Icons.Overall_cost_indicator;
  extends Interfaces.stoichiometry;

  Modelica.Blocks.Interfaces.RealInput AE annotation (Placement(transformation(extent={{-70,-76},
            {-50,-56}})));
  Modelica.Blocks.Interfaces.RealInput PE annotation (Placement(transformation(extent={{16,-86},
            {36,-66}})));
  Modelica.Blocks.Interfaces.RealInput SP annotation (Placement(transformation(extent={{46,-70},
            {66,-50}})));
  Modelica.Blocks.Interfaces.RealInput ME annotation (Placement(transformation(extent={{-32,-90},
            {-12,-70}})));
  Modelica.Blocks.Interfaces.RealOutput OCI( start=0) annotation (Placement(
        transformation(extent={{88,-10},{108,10}})));

  Real EC = 0;
  //Real T(start=1e-3);

equation
  OCI = AE + PE + 5*SP + 3*EC + ME;

  //der(T) = 1.0;

  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
            {100,100}}), graphics), Diagram(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics={
        Text(
          extent={{-28,-62},{-8,-80}},
          lineColor={28,108,200},
          textString="ME
"),     Text(
          extent={{-66,-46},{-46,-64}},
          lineColor={28,108,200},
          textString="AE
"),     Text(
          extent={{22,-56},{42,-74}},
          lineColor={28,108,200},
          textString="PE
"),     Text(
          extent={{52,-40},{72,-58}},
          lineColor={28,108,200},
          textString="SP
")}));
end overall_cost_indicator;
