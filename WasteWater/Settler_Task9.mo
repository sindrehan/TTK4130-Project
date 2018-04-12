within WasteWater;
model Settler_Task9
  "Settler based on assumtion of perfect separation"



  WasteWater.ASM1.Interfaces.WWFlowAsm1in Feed annotation (Placement(transformation(extent={{-80,20},
            {-60,40}}),iconTransformation(extent={{-80,20},{-60,40}})));
  WasteWater.ASM1.Interfaces.WWFlowAsm1out Recycle annotation (Placement(transformation(extent={{60,-20},
            {80,0}}),  iconTransformation(extent={{60,-20},{80,0}})));
  WasteWater.ASM1.Interfaces.WWFlowAsm1out Waste annotation (Placement(transformation(extent={{60,-40},
            {80,-20}}),iconTransformation(extent={{60,-40},{80,-20}})));
  WasteWater.ASM1.Interfaces.WWFlowAsm1out Effluent annotation (Placement(transformation(extent={{60,20},
            {80,40}}), iconTransformation(extent={{60,20},{80,40}})));

equation
  // Equation 4
  // Volumetric flowrate in = volumetric flowrate out
  Feed.Q + Waste.Q + Effluent.Q + Recycle.Q = 0;

  // Equation 2
  // Amount of solutes entering = amount of solutes leaving
  Feed.Si*Feed.Q + Waste.Si*Waste.Q  + Effluent.Si*Effluent.Q  + Recycle.Si*Recycle.Q = 0;
  Feed.Ss*Feed.Q + Waste.Ss*Waste.Q  + Effluent.Ss*Effluent.Q  + Recycle.Ss*Recycle.Q = 0;
  Feed.Xi*Feed.Q + Waste.Xi*Waste.Q  + Effluent.Xi*Effluent.Q  + Recycle.Xi*Recycle.Q = 0;
  Feed.Xs*Feed.Q + Waste.Xs*Waste.Q  + Effluent.Xs*Effluent.Q  + Recycle.Xs*Recycle.Q = 0;
  Feed.Xbh*Feed.Q + Waste.Xbh*Waste.Q  + Effluent.Xbh*Effluent.Q  + Recycle.Xbh*Recycle.Q = 0;
  Feed.Xba*Feed.Q + Waste.Xba*Waste.Q  + Effluent.Xba*Effluent.Q  + Recycle.Xba*Recycle.Q = 0;
  Feed.Xp*Feed.Q  + Waste.Xp*Waste.Q  + Effluent.Xp*Effluent.Q  + Recycle.Xp*Recycle.Q = 0;
  Feed.So*Feed.Q  + Waste.So*Waste.Q  + Effluent.So*Effluent.Q  + Recycle.So*Recycle.Q = 0;
  Feed.Sno*Feed.Q + Waste.Sno*Waste.Q  + Effluent.Sno*Effluent.Q  + Recycle.Sno*Recycle.Q = 0;
  Feed.Snh*Feed.Q + Waste.Snh*Waste.Q  + Effluent.Snh*Effluent.Q  + Recycle.Snh*Recycle.Q = 0;
  Feed.Snd*Feed.Q + Waste.Snd*Waste.Q  + Effluent.Snd*Effluent.Q  + Recycle.Snd*Recycle.Q = 0;
  Feed.Xnd*Feed.Q + Waste.Xnd*Waste.Q  + Effluent.Xnd*Effluent.Q  + Recycle.Xnd*Recycle.Q = 0;
  Feed.Salk*Feed.Q + Waste.Salk*Waste.Q  + Effluent.Salk*Effluent.Q  + Recycle.Salk*Recycle.Q = 0;

  // Equation 5
  // Concentrations of Recycle and Waste are identical
  Recycle.Si   = Waste.Si;
  Recycle.Ss   = Waste.Ss;
  Recycle.Xi   = Waste.Xi;
  Recycle.Xs   = Waste.Xs;
  Recycle.Xbh  = Waste.Xbh;
  Recycle.Xba  = Waste.Xba;
  Recycle.Xp   = Waste.Xp;
  Recycle.So   = Waste.So;
  Recycle.Sno  = Waste.Sno;
  Recycle.Snh  = Waste.Snh;
  Recycle.Snd  = Waste.Snd;
  Recycle.Xnd  = Waste.Xnd;
  Recycle.Salk = Waste.Salk;

  // Equation 3
  // Effluent has 0 biomass concentrations
  Effluent.Xi = 0;
  Effluent.Xs = 0;
  Effluent.Xbh = 0;
  Effluent.Xba = 0;
  Effluent.Xp = 0;
  Effluent.Xnd = 0;

  // Equation 6
  // Effluent has the same concentrations of non-biomass components as Recycle and Waste
  Effluent.Si   = Waste.Si;
  Effluent.Ss   = Waste.Ss;
  Effluent.So   = Waste.So;
  Effluent.Sno  = Waste.Sno;
  Effluent.Snh  = Waste.Snh;
  Effluent.Snd  = Waste.Snd;
  Effluent.Salk = Waste.Salk;

  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Line(points={{-50,40},{-50,-40}}, color={28,108,200}),
        Line(points={{-50,-40},{50,-40}}, color={28,108,200}),
        Line(points={{50,-40},{50,40}}, color={28,108,200}),
        Polygon(
          points={{-60,40},{-50,30},{-60,20},{-60,40}},
          lineColor={28,108,200},
          fillColor={28,108,200},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{50,40},{60,30},{50,20},{50,40}},
          lineColor={0,0,0},
          lineThickness=0.5,
          fillColor={28,108,200},
          fillPattern=FillPattern.None),
        Polygon(
          points={{50,-10},{60,-20},{50,-30},{50,-10}},
          lineColor={0,0,0},
          lineThickness=0.5,
          fillColor={28,108,200},
          fillPattern=FillPattern.None),
        Ellipse(
          extent={{-26,26},{-14,14}},
          lineColor={0,0,0},
          lineThickness=0.5,
          fillColor={238,46,47},
          fillPattern=FillPattern.Solid),
        Line(
          points={{30,-40},{30,30}},
          color={0,0,0},
          thickness=0.5,
          pattern=LinePattern.Dot,
          arrow={Arrow.Open,Arrow.Open}),
        Text(
          extent={{22,4},{26,-2}},
          lineColor={0,0,0},
          pattern=LinePattern.Dot,
          lineThickness=0.5,
          fillColor={238,46,47},
          fillPattern=FillPattern.Solid,
          textString="h")}),                                     Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Settler_Task9;
