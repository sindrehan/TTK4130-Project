within WasteWater.ASM1;
model influent_quality "Influent quality index"

  extends WasteWater.Icons.Influent_quality;
  extends Interfaces.stoichiometry;

  Interfaces.WWFlowAsm1in In annotation (Placement(transformation(extent={{-98,-10},
            {-78,10}})));
  Interfaces.WWFlowAsm1out Out annotation (Placement(transformation(extent={{-10,
            -110},{10,-90}})));
  Modelica.Blocks.Interfaces.RealOutput IQ( start=0) annotation (Placement(
        transformation(extent={{88,-10},{108,10}})));

  Real T(start=1e-3);
  Real B_SS=2;
  Real B_COD=1;
  Real B_NKj=30;
  Real B_NO=10;
  Real B_BOD5=2;
  Real So_sat=8;
  Real S_NKj0;
  Real SS_0;
  Real BOD_50;
  Real COD_0;
equation

  In.Q + Out.Q = 0;

  S_NKj0 = In.Snh + In.Snd + In.Xnd + i_xb * (In.Xbh + In.Xba) + i_xp * (In.Xp + In.Xi);
  SS_0 = 0.75 * (In.Xs + In.Xi + In.Xbh + In.Xba + In.Xp);
  BOD_50 = 0.65 * (In.Ss + In.Xs + (1-f_p) * (In.Xbh + In.Xba));
  COD_0 = In.Ss + In.Si + In.Xi + In.Xbh + In.Xba + In.Xp;
  der(T) = 1.0;
  der(IQ*T) = (1/1000) * (B_SS * SS_0 * B_COD * COD_0 + B_NKj*S_NKj0 + B_NO*In.Sno + B_BOD5*BOD_50)*In.Q;
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
            {100,100}}), graphics), Diagram(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics={Line(
          points={{-78,0},{-50,0}},
          color={0,0,0},
          smooth=Smooth.None)}));
end influent_quality;
