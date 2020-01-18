within Modelica.Electrical.QuasiStatic.SinglePhase.Sensors;
model VoltageSensor "Voltage sensor"
  extends Modelica.Electrical.QuasiStatic.SinglePhase.Interfaces.TwoPinElementary;
  extends Modelica.Icons.RoundSensor;
  Modelica.ComplexBlocks.Interfaces.ComplexOutput v(re(unit = "V"), im(unit = "V")) "Complex voltage" annotation (Placement(
        transformation(
        origin={0,-110},
        extent={{-10,-10},{10,10}},
        rotation=270), iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={0,-110})));
  Modelica.SIunits.Voltage abs_v=Modelica.ComplexMath.abs(v) "Magnitude of complex voltage";
  Modelica.SIunits.Angle arg_v=Modelica.ComplexMath.arg(v) "Argument of complex voltage";
  Modelica.SIunits.ComplexCurrent i "Complex current";
equation
  v = pin_p.v - pin_n.v;
  i = pin_p.i;
  i = Complex(0,0);
  Complex(0,0) = pin_p.i + pin_n.i "Current balance";
  annotation (Documentation(info="<html>
<p>
This sensor can be used to measure the complex voltage.
</p>

<h4>See also</h4>

<p>
<a href=\"modelica://Modelica.Electrical.QuasiStatic.SinglePhase.Sensors.ReferenceSensor\">ReferenceSensor</a>,
<a href=\"modelica://Modelica.Electrical.QuasiStatic.SinglePhase.Sensors.FrequencySensor\">FrequencySensor</a>,
<a href=\"modelica://Modelica.Electrical.QuasiStatic.SinglePhase.Sensors.PotentialSensor\">PotentialSensor</a>,
<a href=\"modelica://Modelica.Electrical.QuasiStatic.SinglePhase.Sensors.CurrentSensor\">CurrentSensor</a>,
<a href=\"modelica://Modelica.Electrical.QuasiStatic.SinglePhase.Sensors.PowerSensor\">PowerSensor</a>,
<a href=\"modelica://Modelica.Electrical.QuasiStatic.SinglePhase.Sensors.MultiSensor\">MultiSensor</a>
</p>

</html>"),
       Icon(graphics={
        Text(
          extent={{-30,-10},{30,-70}},
          textColor={64,64,64},
          textString="V"),
        Text(
          extent={{-150,130},{150,90}},
          textString="%name",
          textColor={0,0,255}),
        Line(points={{-100,0},{-70,0}}, color={85,170,255}),
        Line(points={{70,0},{100,0}},   color={85,170,255})}));
end VoltageSensor;
