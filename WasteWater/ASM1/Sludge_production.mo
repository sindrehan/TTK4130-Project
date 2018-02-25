within WasteWater.ASM1;
model sludge_production "Sludge production"

  extends WasteWater.Icons.Sludge_production;
  extends Interfaces.stoichiometry;

  Interfaces.WWFlowAsm1out Out annotation (Placement(transformation(extent={{-10,
            -110},{10,-90}})));
  Modelica.Blocks.Interfaces.RealOutput SP( start=0) annotation (Placement(
        transformation(extent={{88,-10},{108,10}})));

  Real T(start=1e-3);
equation
  der(T) = 1.0;
  der(SP*T) = 0.75*(Out.Xs + Out.Xi + Out.Xbh + Out.Xba + Out.Xp)*Out.Q;
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
            {100,100}}), graphics), Diagram(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics));
end sludge_production;
