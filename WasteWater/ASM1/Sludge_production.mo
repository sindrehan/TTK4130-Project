within WasteWater.ASM1;
model sludge_production "Sludge production"

  extends WasteWater.Icons.Sludge_production;
  extends Interfaces.stoichiometry;

  Interfaces.WWFlowAsm1in In annotation (Placement(transformation(extent={{-80,-10},
            {-60,10}})));
  Interfaces.WWFlowAsm1out Out annotation (Placement(transformation(extent={{-10,
            -110},{10,-90}})));
  Modelica.Blocks.Interfaces.RealOutput SP( start=0) annotation (Placement(
        transformation(extent={{88,-10},{108,10}})));

  Real T(start=1e-3);
equation

  In.Q + Out.Q = 0;

  In.Si = Out.Si;
  In.Ss = Out.Ss;
  In.Xi = Out.Xi;
  In.Xs = Out.Xs;
  In.Xbh = Out.Xbh;
  In.Xba = Out.Xba;
  In.Xp = Out.Xp;
  In.So = Out.So;
  In.Sno = Out.Sno;
  In.Snh = Out.Snh;
  In.Snd = Out.Snd;
  In.Xnd = Out.Xnd;
  In.Salk = Out.Salk;

  der(T) = 1.0;
  der(SP*T) = 0.75*(In.Xs + In.Xi + In.Xbh + In.Xba + In.Xp)*In.Q;
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
            {100,100}}), graphics), Diagram(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics));
end sludge_production;
