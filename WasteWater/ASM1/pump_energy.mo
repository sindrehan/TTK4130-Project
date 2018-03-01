within WasteWater.ASM1;
model pump_energy "Total pump energy"

  extends WasteWater.Icons.Pump_energy;

  Interfaces.WWFlowAsm1in In_a annotation (Placement(transformation(extent={{-50,46},
            {-30,66}})));
  Interfaces.WWFlowAsm1out Out_a annotation (Placement(transformation(extent={{-52,-68},
            {-32,-48}})));
  Interfaces.WWFlowAsm1in In_r annotation (Placement(transformation(extent={{42,46},
            {62,66}})));
  Interfaces.WWFlowAsm1out Out_r annotation (Placement(transformation(extent={{-10,
            -112},{10,-92}})));
  Interfaces.WWFlowAsm1in In_w annotation (Placement(transformation(extent={{62,-38},
            {82,-18}})));
  Interfaces.WWFlowAsm1out Out_w annotation (Placement(transformation(extent={{30,-68},
            {50,-48}})));

  Modelica.Blocks.Interfaces.RealOutput PE( start = 0)
                                                      annotation (Placement(transformation(extent={{88,-10},
            {108,10}})));

  Real T(start=1e-3);
equation

  In_a.Q + Out_a.Q = 0;
  In_r.Q + Out_r.Q = 0;
  In_w.Q + Out_w.Q = 0;

  der(T) = 1.0;
  der(PE*T) = 0.004*In_a.Q + 0.008*In_r.Q + 0.05*In_w.Q;

  // eventually abs(In.Q) to be shure to have pos. signal
  In_a.Si = Out_a.Si;
  In_a.Ss = Out_a.Ss;
  In_a.Xi = Out_a.Xi;
  In_a.Xs = Out_a.Xs;
  In_a.Xbh = Out_a.Xbh;
  In_a.Xba = Out_a.Xba;
  In_a.Xp = Out_a.Xp;
  In_a.So = Out_a.So;
  In_a.Sno = Out_a.Sno;
  In_a.Snh = Out_a.Snh;
  In_a.Snd = Out_a.Snd;
  In_a.Xnd = Out_a.Xnd;
  In_a.Salk = Out_a.Salk;

  In_r.Si = Out_r.Si;
  In_r.Ss = Out_r.Ss;
  In_r.Xi = Out_r.Xi;
  In_r.Xs = Out_r.Xs;
  In_r.Xbh = Out_r.Xbh;
  In_r.Xba = Out_r.Xba;
  In_r.Xp = Out_r.Xp;
  In_r.So = Out_r.So;
  In_r.Sno = Out_r.Sno;
  In_r.Snh = Out_r.Snh;
  In_r.Snd = Out_r.Snd;
  In_r.Xnd = Out_r.Xnd;
  In_r.Salk = Out_r.Salk;

  In_w.Si = Out_w.Si;
  In_w.Ss = Out_w.Ss;
  In_w.Xi = Out_w.Xi;
  In_w.Xs = Out_w.Xs;
  In_w.Xbh = Out_w.Xbh;
  In_w.Xba = Out_w.Xba;
  In_w.Xp = Out_w.Xp;
  In_w.So = Out_w.So;
  In_w.Sno = Out_w.Sno;
  In_w.Snh = Out_w.Snh;
  In_w.Snd = Out_w.Snd;
  In_w.Xnd = Out_w.Xnd;
  In_w.Salk = Out_w.Salk;

    annotation (Placement(transformation(
        origin={0,-98},
        extent={{-10,-10},{10,10}},
        rotation=270)), Diagram(coordinateSystem(preserveAspectRatio=false,
          extent={{-100,-100},{100,100}})),
    Documentation(info="This component measures the flow of an ASM1 wastewater stream and provides
the result as output signal (to be further processed with blocks of
the Modelica.Blocks library).
"));
end pump_energy;
