<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.4.0">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="p.peter-logic">
<packages>
<package name="XOR-2-EX2">
<wire x1="-7.25" y1="-6.5" x2="7.25" y2="-6.5" width="0.1" layer="41"/>
<wire x1="7.25" y1="-6.5" x2="7.25" y2="6.5" width="0.1" layer="41"/>
<wire x1="7.25" y1="6.5" x2="-7.25" y2="6.5" width="0.1" layer="41"/>
<wire x1="-7.25" y1="6.5" x2="-7.25" y2="-6.5" width="0.1" layer="41"/>
<wire x1="-7.25" y1="-6.5" x2="7.25" y2="-6.5" width="0.1" layer="51"/>
<wire x1="7.25" y1="-6.5" x2="7.25" y2="6.5" width="0.1" layer="51"/>
<wire x1="7.25" y1="6.5" x2="-7.25" y2="6.5" width="0.1" layer="51"/>
<wire x1="-7.25" y1="6.5" x2="-7.25" y2="-6.5" width="0.1" layer="51"/>
<smd name="A" x="-5.25" y="-5.8" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="OUT1" x="-3.35" y="5.4" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="OUT2" x="-2.35" y="5.4" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="OUT3" x="-1.35" y="5.4" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<wire x1="-6.75" y1="-1" x2="-6.75" y2="0" width="0.1" layer="51"/>
<wire x1="-6.75" y1="0" x2="-5.55" y2="0" width="0.1" layer="51"/>
<wire x1="-5.55" y1="0" x2="-4.95" y2="0" width="0.1" layer="51"/>
<wire x1="-4.95" y1="0" x2="-4.25" y2="0" width="0.1" layer="51"/>
<wire x1="-4.25" y1="0" x2="-4.25" y2="-1" width="0.1" layer="51"/>
<wire x1="-4.25" y1="-1" x2="-4.45" y2="-1" width="0.1" layer="51"/>
<wire x1="-4.45" y1="-1" x2="-4.25" y2="-1" width="0.1" layer="51"/>
<wire x1="-4.25" y1="-1" x2="-4.45" y2="-1" width="0.1" layer="51"/>
<wire x1="-4.45" y1="-1" x2="-4.55" y2="-1" width="0.1" layer="51"/>
<wire x1="-4.55" y1="-1" x2="-6.75" y2="-1" width="0.1" layer="51"/>
<wire x1="-5.25" y1="0.5" x2="-5.75" y2="0.5" width="0.2" layer="51"/>
<rectangle x1="-6.25" y1="-5" x2="-5.25" y2="-4" layer="51"/>
<rectangle x1="-6.25" y1="-3.5" x2="-5.25" y2="-2.5" layer="51"/>
<rectangle x1="-6.55" y1="-1.8" x2="-5.95" y2="-1" layer="51"/>
<rectangle x1="-5.05" y1="-1.8" x2="-4.45" y2="-1" layer="51"/>
<text x="3.8" y="5.55" size="0.7" layer="51" font="vector" ratio="12" align="center">&gt;NAME</text>
<rectangle x1="-4.25" y1="-3.5" x2="-3.25" y2="-2.5" layer="51"/>
<rectangle x1="-4.25" y1="-5" x2="-3.25" y2="-4" layer="51"/>
<rectangle x1="-5.85" y1="0" x2="-5.15" y2="0.9" layer="51"/>
<smd name="B" x="3.75" y="-5.8" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<wire x1="-3.25" y1="-1" x2="-3.25" y2="0" width="0.1" layer="51"/>
<wire x1="-3.25" y1="0" x2="-2.05" y2="0" width="0.1" layer="51"/>
<wire x1="-2.05" y1="0" x2="-1.45" y2="0" width="0.1" layer="51"/>
<wire x1="-1.45" y1="0" x2="-0.75" y2="0" width="0.1" layer="51"/>
<wire x1="-0.75" y1="0" x2="-0.75" y2="-1" width="0.1" layer="51"/>
<wire x1="-0.75" y1="-1" x2="-0.95" y2="-1" width="0.1" layer="51"/>
<wire x1="-0.95" y1="-1" x2="-0.75" y2="-1" width="0.1" layer="51"/>
<wire x1="-0.75" y1="-1" x2="-0.95" y2="-1" width="0.1" layer="51"/>
<wire x1="-0.95" y1="-1" x2="-1.05" y2="-1" width="0.1" layer="51"/>
<wire x1="-1.05" y1="-1" x2="-3.25" y2="-1" width="0.1" layer="51"/>
<wire x1="-1.75" y1="0.5" x2="-2.25" y2="0.5" width="0.2" layer="51"/>
<rectangle x1="-3.05" y1="-1.8" x2="-2.45" y2="-1" layer="51"/>
<rectangle x1="-1.55" y1="-1.8" x2="-0.95" y2="-1" layer="51"/>
<rectangle x1="-2.35" y1="0" x2="-1.65" y2="0.9" layer="51"/>
<smd name="OUT4" x="-0.35" y="5.4" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<wire x1="0.25" y1="-1" x2="0.25" y2="0" width="0.1" layer="51"/>
<wire x1="0.25" y1="0" x2="1.45" y2="0" width="0.1" layer="51"/>
<wire x1="1.45" y1="0" x2="2.05" y2="0" width="0.1" layer="51"/>
<wire x1="2.05" y1="0" x2="2.75" y2="0" width="0.1" layer="51"/>
<wire x1="2.75" y1="0" x2="2.75" y2="-1" width="0.1" layer="51"/>
<wire x1="2.75" y1="-1" x2="2.55" y2="-1" width="0.1" layer="51"/>
<wire x1="2.55" y1="-1" x2="2.75" y2="-1" width="0.1" layer="51"/>
<wire x1="2.75" y1="-1" x2="2.55" y2="-1" width="0.1" layer="51"/>
<wire x1="2.55" y1="-1" x2="2.45" y2="-1" width="0.1" layer="51"/>
<wire x1="2.45" y1="-1" x2="0.25" y2="-1" width="0.1" layer="51"/>
<wire x1="1.75" y1="0.5" x2="1.25" y2="0.5" width="0.2" layer="51"/>
<rectangle x1="0.45" y1="-1.8" x2="1.05" y2="-1" layer="51"/>
<rectangle x1="1.95" y1="-1.8" x2="2.55" y2="-1" layer="51"/>
<rectangle x1="1.15" y1="0" x2="1.85" y2="0.9" layer="51"/>
<wire x1="3.75" y1="-1" x2="3.75" y2="0" width="0.1" layer="51"/>
<wire x1="3.75" y1="0" x2="4.95" y2="0" width="0.1" layer="51"/>
<wire x1="4.95" y1="0" x2="5.55" y2="0" width="0.1" layer="51"/>
<wire x1="5.55" y1="0" x2="6.25" y2="0" width="0.1" layer="51"/>
<wire x1="6.25" y1="0" x2="6.25" y2="-1" width="0.1" layer="51"/>
<wire x1="6.25" y1="-1" x2="6.05" y2="-1" width="0.1" layer="51"/>
<wire x1="6.05" y1="-1" x2="6.25" y2="-1" width="0.1" layer="51"/>
<wire x1="6.25" y1="-1" x2="6.05" y2="-1" width="0.1" layer="51"/>
<wire x1="6.05" y1="-1" x2="5.95" y2="-1" width="0.1" layer="51"/>
<wire x1="5.95" y1="-1" x2="3.75" y2="-1" width="0.1" layer="51"/>
<wire x1="5.25" y1="0.5" x2="4.75" y2="0.5" width="0.2" layer="51"/>
<rectangle x1="3.95" y1="-1.8" x2="4.55" y2="-1" layer="51"/>
<rectangle x1="5.45" y1="-1.8" x2="6.05" y2="-1" layer="51"/>
<rectangle x1="4.65" y1="0" x2="5.35" y2="0.9" layer="51"/>
<rectangle x1="-1.75" y1="-5" x2="-0.75" y2="-4" layer="51"/>
<rectangle x1="-1.75" y1="-3.5" x2="-0.75" y2="-2.5" layer="51"/>
<rectangle x1="0.75" y1="-3.5" x2="1.75" y2="-2.5" layer="51"/>
<rectangle x1="0.75" y1="-5" x2="1.75" y2="-4" layer="51"/>
<rectangle x1="3.25" y1="-5" x2="4.25" y2="-4" layer="51"/>
<rectangle x1="3.25" y1="-3.5" x2="4.25" y2="-2.5" layer="51"/>
<rectangle x1="5.25" y1="-3.5" x2="6.25" y2="-2.5" layer="51"/>
<rectangle x1="5.25" y1="-5" x2="6.25" y2="-4" layer="51"/>
<rectangle x1="-6.25" y1="1.5" x2="-5.25" y2="2.5" layer="51"/>
<rectangle x1="-6.25" y1="3.5" x2="-5.25" y2="4.5" layer="51"/>
<rectangle x1="-4.75" y1="3.5" x2="-3.75" y2="4.5" layer="51"/>
<rectangle x1="-4.75" y1="1.5" x2="-3.75" y2="2.5" layer="51"/>
<rectangle x1="-3.25" y1="1.5" x2="-2.25" y2="2.5" layer="51"/>
<rectangle x1="-1.75" y1="1.5" x2="-0.75" y2="2.5" layer="51"/>
<wire x1="0.25" y1="2.5" x2="0.25" y2="3.5" width="0.1" layer="51"/>
<wire x1="0.25" y1="3.5" x2="1.45" y2="3.5" width="0.1" layer="51"/>
<wire x1="1.45" y1="3.5" x2="2.05" y2="3.5" width="0.1" layer="51"/>
<wire x1="2.05" y1="3.5" x2="2.75" y2="3.5" width="0.1" layer="51"/>
<wire x1="2.75" y1="3.5" x2="2.75" y2="2.5" width="0.1" layer="51"/>
<wire x1="2.75" y1="2.5" x2="2.55" y2="2.5" width="0.1" layer="51"/>
<wire x1="2.55" y1="2.5" x2="2.75" y2="2.5" width="0.1" layer="51"/>
<wire x1="2.75" y1="2.5" x2="2.55" y2="2.5" width="0.1" layer="51"/>
<wire x1="2.55" y1="2.5" x2="2.45" y2="2.5" width="0.1" layer="51"/>
<wire x1="2.45" y1="2.5" x2="0.25" y2="2.5" width="0.1" layer="51"/>
<wire x1="1.75" y1="4" x2="1.25" y2="4" width="0.2" layer="51"/>
<rectangle x1="0.45" y1="1.7" x2="1.05" y2="2.5" layer="51"/>
<rectangle x1="1.95" y1="1.7" x2="2.55" y2="2.5" layer="51"/>
<rectangle x1="1.15" y1="3.5" x2="1.85" y2="4.4" layer="51"/>
<wire x1="3.75" y1="2.5" x2="3.75" y2="3.5" width="0.1" layer="51"/>
<wire x1="3.75" y1="3.5" x2="4.95" y2="3.5" width="0.1" layer="51"/>
<wire x1="4.95" y1="3.5" x2="5.55" y2="3.5" width="0.1" layer="51"/>
<wire x1="5.55" y1="3.5" x2="6.25" y2="3.5" width="0.1" layer="51"/>
<wire x1="6.25" y1="3.5" x2="6.25" y2="2.5" width="0.1" layer="51"/>
<wire x1="6.25" y1="2.5" x2="6.05" y2="2.5" width="0.1" layer="51"/>
<wire x1="6.05" y1="2.5" x2="6.25" y2="2.5" width="0.1" layer="51"/>
<wire x1="6.25" y1="2.5" x2="6.05" y2="2.5" width="0.1" layer="51"/>
<wire x1="6.05" y1="2.5" x2="5.95" y2="2.5" width="0.1" layer="51"/>
<wire x1="5.95" y1="2.5" x2="3.75" y2="2.5" width="0.1" layer="51"/>
<wire x1="5.25" y1="4" x2="4.75" y2="4" width="0.2" layer="51"/>
<rectangle x1="3.95" y1="1.7" x2="4.55" y2="2.5" layer="51"/>
<rectangle x1="5.45" y1="1.7" x2="6.05" y2="2.5" layer="51"/>
<rectangle x1="4.65" y1="3.5" x2="5.35" y2="4.4" layer="51"/>
<wire x1="-5.75" y1="-5.75" x2="-6.25" y2="-5.75" width="0.127" layer="21"/>
<wire x1="-6.25" y1="-5.75" x2="-6.5" y2="-5.5" width="0.127" layer="21"/>
<wire x1="-6.5" y1="-5.5" x2="-6.5" y2="-4" width="0.127" layer="21"/>
<wire x1="-6.5" y1="-4" x2="-6.25" y2="-3.75" width="0.127" layer="21"/>
<wire x1="-6.25" y1="-3.75" x2="-5.25" y2="-3.75" width="0.127" layer="21"/>
<wire x1="-5.25" y1="-3.75" x2="-4.75" y2="-4.25" width="0.127" layer="21"/>
<wire x1="-4.75" y1="-4.25" x2="-4.25" y2="-4.25" width="0.127" layer="21"/>
<wire x1="-5.75" y1="-4.75" x2="-5" y2="-4.75" width="0.127" layer="21"/>
<wire x1="-5" y1="-4.75" x2="-4" y2="-5.75" width="0.127" layer="21"/>
<wire x1="-4" y1="-5.75" x2="-3.75" y2="-6" width="0.127" layer="21"/>
<wire x1="-3.75" y1="-6" x2="3.25" y2="-6" width="0.127" layer="21"/>
<wire x1="4.25" y1="-6" x2="5" y2="-6" width="0.127" layer="21"/>
<wire x1="5" y1="-6" x2="5.75" y2="-5.25" width="0.127" layer="21"/>
<wire x1="5.75" y1="-5.25" x2="5.75" y2="-5" width="0.127" layer="21"/>
<wire x1="3.5" y1="-4.75" x2="2.75" y2="-5.5" width="0.127" layer="21"/>
<wire x1="2.75" y1="-5.5" x2="-3.25" y2="-5.5" width="0.127" layer="21"/>
<wire x1="-3.25" y1="-5.5" x2="-3.5" y2="-5.25" width="0.127" layer="21"/>
<wire x1="-3.5" y1="-5.25" x2="-3.75" y2="-5" width="0.127" layer="21"/>
<wire x1="-0.75" y1="-4.5" x2="-0.25" y2="-4.5" width="0.127" layer="21"/>
<wire x1="-0.25" y1="-4.5" x2="0" y2="-4.25" width="0.127" layer="21"/>
<wire x1="0" y1="-4.25" x2="0" y2="-3" width="0.127" layer="21"/>
<wire x1="0" y1="-3" x2="0.25" y2="-3" width="0.127" layer="21"/>
<wire x1="0.25" y1="-3" x2="0.75" y2="-3" width="0.127" layer="21"/>
<wire x1="1.25" y1="-4.25" x2="1.25" y2="-4" width="0.127" layer="21"/>
<wire x1="1.25" y1="-4" x2="1.5" y2="-3.75" width="0.127" layer="21"/>
<wire x1="1.5" y1="-3.75" x2="4.75" y2="-3.75" width="0.127" layer="21"/>
<wire x1="4.75" y1="-3.75" x2="6" y2="-3.75" width="0.127" layer="21"/>
<wire x1="6" y1="-3.75" x2="6.25" y2="-3.75" width="0.127" layer="21"/>
<wire x1="6.25" y1="-3.75" x2="6.5" y2="-3.5" width="0.127" layer="21"/>
<wire x1="6.5" y1="-3.5" x2="6.5" y2="-1.75" width="0.127" layer="21"/>
<wire x1="6.5" y1="-1.75" x2="6.25" y2="-1.5" width="0.127" layer="21"/>
<wire x1="6.25" y1="-1.5" x2="6" y2="-1.5" width="0.127" layer="21"/>
<wire x1="4.5" y1="-1.75" x2="5.25" y2="-2.5" width="0.127" layer="21"/>
<wire x1="5.25" y1="-2.5" x2="5.5" y2="-2.75" width="0.127" layer="21"/>
<wire x1="4.75" y1="-3.75" x2="4.75" y2="-2.75" width="0.127" layer="21"/>
<wire x1="4.75" y1="-2.75" x2="4.25" y2="-2.25" width="0.127" layer="21"/>
<wire x1="4.25" y1="-2.25" x2="2.5" y2="-2.25" width="0.127" layer="21"/>
<wire x1="2.5" y1="-2.25" x2="2.25" y2="-2" width="0.127" layer="21"/>
<wire x1="2.25" y1="-2" x2="2.25" y2="-1.75" width="0.127" layer="21"/>
<wire x1="3.25" y1="-2.75" x2="2.25" y2="-2.75" width="0.127" layer="21"/>
<wire x1="2.25" y1="-2.75" x2="1.75" y2="-2.25" width="0.127" layer="21"/>
<wire x1="1.75" y1="-2.25" x2="1" y2="-2.25" width="0.127" layer="21"/>
<wire x1="1" y1="-2.25" x2="0.75" y2="-2" width="0.127" layer="21"/>
<wire x1="0.75" y1="-2" x2="0.75" y2="-1.75" width="0.127" layer="21"/>
<wire x1="0" y1="-3" x2="0" y2="-2" width="0.127" layer="21"/>
<wire x1="0" y1="-2" x2="-0.25" y2="-1.75" width="0.127" layer="21"/>
<wire x1="-0.25" y1="-1.75" x2="-1" y2="-1.75" width="0.127" layer="21"/>
<wire x1="-3.5" y1="-2.75" x2="-3.25" y2="-2.75" width="0.127" layer="21"/>
<wire x1="-3.25" y1="-2.75" x2="-2.75" y2="-2.25" width="0.127" layer="21"/>
<wire x1="-2.75" y1="-2.25" x2="-2.75" y2="-1.75" width="0.127" layer="21"/>
<wire x1="-4.75" y1="-0.75" x2="-4.5" y2="-0.5" width="0.127" layer="21"/>
<wire x1="-4.5" y1="-0.5" x2="-2.25" y2="-0.5" width="0.127" layer="21"/>
<wire x1="-2.25" y1="-0.5" x2="-2" y2="-0.25" width="0.127" layer="21"/>
<wire x1="-2" y1="-0.25" x2="-2" y2="0" width="0.127" layer="21"/>
<wire x1="-4.75" y1="-0.75" x2="-4.75" y2="-1" width="0.127" layer="21"/>
<wire x1="-6" y1="-2.75" x2="-6" y2="-1.75" width="0.127" layer="21"/>
<wire x1="-1.5" y1="-2.75" x2="-2" y2="-2.25" width="0.127" layer="21"/>
<wire x1="-2" y1="-2.25" x2="-2" y2="-1" width="0.127" layer="21"/>
<wire x1="-2" y1="-1" x2="-1.5" y2="-0.5" width="0.127" layer="21"/>
<wire x1="-1.5" y1="-0.5" x2="5.5" y2="-0.5" width="0.127" layer="21"/>
<wire x1="5.5" y1="-0.5" x2="5.75" y2="-0.25" width="0.127" layer="21"/>
<wire x1="5.75" y1="-0.25" x2="5.75" y2="1" width="0.127" layer="21"/>
<wire x1="5.75" y1="1" x2="5.5" y2="1.25" width="0.127" layer="21"/>
<wire x1="5.5" y1="1.25" x2="4.5" y2="1.25" width="0.127" layer="21"/>
<wire x1="4.5" y1="1.25" x2="4.25" y2="1.5" width="0.127" layer="21"/>
<wire x1="4.25" y1="1.5" x2="4.25" y2="1.75" width="0.127" layer="21"/>
<wire x1="6" y1="2" x2="6" y2="1.5" width="0.127" layer="21"/>
<wire x1="6" y1="1.5" x2="6.25" y2="1.25" width="0.127" layer="21"/>
<wire x1="6.25" y1="1.25" x2="6.25" y2="-0.75" width="0.127" layer="21"/>
<wire x1="6.25" y1="-0.75" x2="6" y2="-1" width="0.127" layer="21"/>
<wire x1="1.25" y1="0.5" x2="-0.5" y2="0.5" width="0.127" layer="21"/>
<wire x1="-0.5" y1="0.5" x2="-1.25" y2="1.25" width="0.127" layer="21"/>
<wire x1="-1.25" y1="1.25" x2="-1.75" y2="1.25" width="0.127" layer="21"/>
<wire x1="-1.75" y1="1.25" x2="-2" y2="1.5" width="0.127" layer="21"/>
<wire x1="-2" y1="1.5" x2="-2" y2="2" width="0.127" layer="21"/>
<wire x1="-2" y1="2" x2="-2.25" y2="2" width="0.127" layer="21"/>
<wire x1="-2.25" y1="2" x2="-2.75" y2="2" width="0.127" layer="21"/>
<wire x1="-5.5" y1="0.75" x2="-5.5" y2="1" width="0.127" layer="21"/>
<wire x1="-5.5" y1="1" x2="-5.75" y2="1.25" width="0.127" layer="21"/>
<wire x1="-5.75" y1="1.25" x2="-5.75" y2="1.75" width="0.127" layer="21"/>
<wire x1="-5.75" y1="1.75" x2="-5.75" y2="3.25" width="0.127" layer="21"/>
<wire x1="-5.75" y1="3.25" x2="-5.75" y2="3.5" width="0.127" layer="21"/>
<wire x1="-5.75" y1="3.25" x2="-3.75" y2="3.25" width="0.127" layer="21"/>
<wire x1="-3.75" y1="3.25" x2="-3.5" y2="3.5" width="0.127" layer="21"/>
<wire x1="-3.5" y1="3.5" x2="-3.5" y2="5" width="0.127" layer="21"/>
<wire x1="-4.25" y1="4.5" x2="-4.25" y2="5.75" width="0.127" layer="21"/>
<wire x1="-4.25" y1="5.75" x2="-4" y2="6" width="0.127" layer="21"/>
<wire x1="-4" y1="6" x2="-0.25" y2="6" width="0.127" layer="21"/>
<wire x1="-0.25" y1="6" x2="1.25" y2="6" width="0.127" layer="21"/>
<wire x1="1.25" y1="6" x2="1.5" y2="5.75" width="0.127" layer="21"/>
<wire x1="1.5" y1="5.75" x2="1.5" y2="4.5" width="0.127" layer="21"/>
<wire x1="1.5" y1="4.5" x2="1.5" y2="4.25" width="0.127" layer="21"/>
<wire x1="5" y1="4.25" x2="5" y2="4.5" width="0.127" layer="21"/>
<wire x1="5" y1="4.5" x2="1.5" y2="4.5" width="0.127" layer="21"/>
<wire x1="0.75" y1="5" x2="0.75" y2="3.25" width="0.127" layer="21"/>
<wire x1="0.75" y1="3.25" x2="1" y2="3" width="0.127" layer="21"/>
<wire x1="1" y1="3" x2="2.25" y2="3" width="0.127" layer="21"/>
<wire x1="2.25" y1="3" x2="5.5" y2="3" width="0.127" layer="21"/>
<wire x1="5.5" y1="3" x2="5.75" y2="2.75" width="0.127" layer="21"/>
<wire x1="5.75" y1="2.75" x2="5.75" y2="2.5" width="0.127" layer="21"/>
<wire x1="2.25" y1="3" x2="2.25" y2="2.5" width="0.127" layer="21"/>
<wire x1="0.5" y1="2" x2="-1" y2="2" width="0.127" layer="21"/>
<wire x1="-1.25" y1="5" x2="-1.25" y2="3.5" width="0.127" layer="21"/>
<wire x1="-1.25" y1="3.5" x2="-2" y2="2.75" width="0.127" layer="21"/>
<wire x1="-2" y1="2.75" x2="-2" y2="2" width="0.127" layer="21"/>
<wire x1="-3.25" y1="2" x2="-3.75" y2="2" width="0.127" layer="21"/>
<wire x1="-0.25" y1="5.75" x2="-0.25" y2="6" width="0.127" layer="21"/>
<smd name="OUT5" x="0.65" y="5.4" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<wire x1="-2.5" y1="5" x2="-2.5" y2="3.25" width="0.127" layer="21"/>
<wire x1="-2.5" y1="3.25" x2="-2.75" y2="3" width="0.127" layer="21"/>
<wire x1="-2.75" y1="3" x2="-4.75" y2="3" width="0.127" layer="21"/>
<wire x1="-4.75" y1="3" x2="-5" y2="2.75" width="0.127" layer="21"/>
<wire x1="-5" y1="2.75" x2="-5" y2="1.5" width="0.127" layer="21"/>
<wire x1="-5" y1="1.5" x2="-4.75" y2="1.25" width="0.127" layer="21"/>
<wire x1="-4.75" y1="1.25" x2="-4.25" y2="1.25" width="0.127" layer="21"/>
<wire x1="-4.25" y1="1.25" x2="-4" y2="1" width="0.127" layer="21"/>
<wire x1="-4" y1="1" x2="-4" y2="0.25" width="0.127" layer="21"/>
<wire x1="-4" y1="0.25" x2="-4.25" y2="0" width="0.127" layer="21"/>
<wire x1="-4.25" y1="0" x2="-4.75" y2="0" width="0.127" layer="21"/>
<wire x1="-4.75" y1="0" x2="-5" y2="-0.25" width="0.127" layer="21"/>
<wire x1="-5" y1="-0.25" x2="-5.25" y2="-0.5" width="0.127" layer="21"/>
<wire x1="-5.25" y1="-0.5" x2="-5.5" y2="-0.75" width="0.127" layer="21"/>
<wire x1="-5.5" y1="-0.75" x2="-5.5" y2="-1.75" width="0.127" layer="21"/>
<wire x1="-5.5" y1="-1.75" x2="-5" y2="-2.25" width="0.127" layer="21"/>
<wire x1="-5" y1="-2.25" x2="-4.75" y2="-2.5" width="0.127" layer="21"/>
<wire x1="-4.75" y1="-2.5" x2="-4.75" y2="-3.5" width="0.127" layer="21"/>
<wire x1="-4.75" y1="-3.5" x2="-4.5" y2="-3.75" width="0.127" layer="21"/>
<wire x1="-4.5" y1="-3.75" x2="-2.75" y2="-3.75" width="0.127" layer="21"/>
<wire x1="-2.75" y1="-3.75" x2="-2" y2="-4.5" width="0.127" layer="21"/>
<wire x1="-2" y1="-4.5" x2="-1.75" y2="-4.5" width="0.127" layer="21"/>
</package>
<package name="OR-2">
<wire x1="-3.5" y1="-6.5" x2="3.5" y2="-6.5" width="0.1" layer="41"/>
<wire x1="3.5" y1="-6.5" x2="3.5" y2="6.5" width="0.1" layer="41"/>
<wire x1="3.5" y1="6.5" x2="-3.5" y2="6.5" width="0.1" layer="41"/>
<wire x1="-3.5" y1="6.5" x2="-3.5" y2="-6.5" width="0.1" layer="41"/>
<wire x1="-3.5" y1="-6.5" x2="3.5" y2="-6.5" width="0.1" layer="51"/>
<wire x1="3.5" y1="-6.5" x2="3.5" y2="6.5" width="0.1" layer="51"/>
<wire x1="3.5" y1="6.5" x2="-3.5" y2="6.5" width="0.1" layer="51"/>
<wire x1="-3.5" y1="6.5" x2="-3.5" y2="-6.5" width="0.1" layer="51"/>
<smd name="A" x="-0.5" y="-5.8" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="OUT1" x="0.5" y="5.5" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="OUT2" x="1.5" y="5.5" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="OUT3" x="2.5" y="5.5" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<wire x1="-3" y1="-2" x2="-3" y2="-1" width="0.1" layer="51"/>
<wire x1="-3" y1="-1" x2="-1.8" y2="-1" width="0.1" layer="51"/>
<wire x1="-1.8" y1="-1" x2="-1.2" y2="-1" width="0.1" layer="51"/>
<wire x1="-1.2" y1="-1" x2="-0.5" y2="-1" width="0.1" layer="51"/>
<wire x1="-0.5" y1="-1" x2="-0.5" y2="-2" width="0.1" layer="51"/>
<wire x1="-0.5" y1="-2" x2="-0.7" y2="-2" width="0.1" layer="51"/>
<wire x1="-0.7" y1="-2" x2="-0.5" y2="-2" width="0.1" layer="51"/>
<wire x1="-0.5" y1="-2" x2="-0.7" y2="-2" width="0.1" layer="51"/>
<wire x1="-0.7" y1="-2" x2="-0.8" y2="-2" width="0.1" layer="51"/>
<wire x1="-0.8" y1="-2" x2="-3" y2="-2" width="0.1" layer="51"/>
<wire x1="-1.5" y1="-0.5" x2="-2" y2="-0.5" width="0.2" layer="51"/>
<rectangle x1="-3" y1="-5" x2="-2" y2="-4" layer="51"/>
<rectangle x1="-1.5" y1="-5" x2="-0.5" y2="-4" layer="51"/>
<rectangle x1="-2.8" y1="-2.8" x2="-2.2" y2="-2" layer="51"/>
<rectangle x1="-1.3" y1="-2.8" x2="-0.7" y2="-2" layer="51"/>
<text x="-1.7" y="5.8" size="0.7" layer="51" font="vector" ratio="12" align="center">&gt;NAME</text>
<rectangle x1="2" y1="-5" x2="3" y2="-4" layer="51"/>
<rectangle x1="0.5" y1="-5" x2="1.5" y2="-4" layer="51"/>
<rectangle x1="-2.1" y1="-1" x2="-1.4" y2="-0.1" layer="51"/>
<smd name="B" x="2.5" y="-5.8" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<wire x1="0.5" y1="-2" x2="0.5" y2="-1" width="0.1" layer="51"/>
<wire x1="0.5" y1="-1" x2="1.7" y2="-1" width="0.1" layer="51"/>
<wire x1="1.7" y1="-1" x2="2.3" y2="-1" width="0.1" layer="51"/>
<wire x1="2.3" y1="-1" x2="3" y2="-1" width="0.1" layer="51"/>
<wire x1="3" y1="-1" x2="3" y2="-2" width="0.1" layer="51"/>
<wire x1="3" y1="-2" x2="2.8" y2="-2" width="0.1" layer="51"/>
<wire x1="2.8" y1="-2" x2="3" y2="-2" width="0.1" layer="51"/>
<wire x1="3" y1="-2" x2="2.8" y2="-2" width="0.1" layer="51"/>
<wire x1="2.8" y1="-2" x2="2.7" y2="-2" width="0.1" layer="51"/>
<wire x1="2.7" y1="-2" x2="0.5" y2="-2" width="0.1" layer="51"/>
<wire x1="2" y1="-0.5" x2="1.5" y2="-0.5" width="0.2" layer="51"/>
<rectangle x1="0.7" y1="-2.8" x2="1.3" y2="-2" layer="51"/>
<rectangle x1="2.2" y1="-2.8" x2="2.8" y2="-2" layer="51"/>
<rectangle x1="1.4" y1="-1" x2="2.1" y2="-0.1" layer="51"/>
<rectangle x1="-3" y1="0.5" x2="-2" y2="1.5" layer="51"/>
<rectangle x1="-1.5" y1="0.5" x2="-0.5" y2="1.5" layer="51"/>
<rectangle x1="2" y1="0.5" x2="3" y2="1.5" layer="51"/>
<rectangle x1="0.5" y1="0.5" x2="1.5" y2="1.5" layer="51"/>
<rectangle x1="2" y1="2" x2="3" y2="3" layer="51"/>
<rectangle x1="0.5" y1="2" x2="1.5" y2="3" layer="51"/>
<wire x1="-3" y1="3" x2="-3" y2="4" width="0.1" layer="51"/>
<wire x1="-3" y1="4" x2="-1.8" y2="4" width="0.1" layer="51"/>
<wire x1="-1.8" y1="4" x2="-1.2" y2="4" width="0.1" layer="51"/>
<wire x1="-1.2" y1="4" x2="-0.5" y2="4" width="0.1" layer="51"/>
<wire x1="-0.5" y1="4" x2="-0.5" y2="3" width="0.1" layer="51"/>
<wire x1="-0.5" y1="3" x2="-0.7" y2="3" width="0.1" layer="51"/>
<wire x1="-0.7" y1="3" x2="-0.5" y2="3" width="0.1" layer="51"/>
<wire x1="-0.5" y1="3" x2="-0.7" y2="3" width="0.1" layer="51"/>
<wire x1="-0.7" y1="3" x2="-0.8" y2="3" width="0.1" layer="51"/>
<wire x1="-0.8" y1="3" x2="-3" y2="3" width="0.1" layer="51"/>
<wire x1="-1.5" y1="4.5" x2="-2" y2="4.5" width="0.2" layer="51"/>
<rectangle x1="-2.8" y1="2.2" x2="-2.2" y2="3" layer="51"/>
<rectangle x1="-1.3" y1="2.2" x2="-0.7" y2="3" layer="51"/>
<rectangle x1="-2.1" y1="4" x2="-1.4" y2="4.9" layer="51"/>
<wire x1="-2.5" y1="-4.5" x2="-2.5" y2="-2.5" width="0.127" layer="21"/>
<wire x1="-0.5" y1="-5.5" x2="-0.5" y2="-5" width="0.127" layer="21"/>
<wire x1="-0.5" y1="-5" x2="-1" y2="-4.5" width="0.127" layer="21"/>
<wire x1="2.5" y1="-5.5" x2="2.5" y2="-4.5" width="0.127" layer="21"/>
<wire x1="1" y1="-4.5" x2="1" y2="-2.5" width="0.127" layer="21"/>
<wire x1="2.5" y1="-2.5" x2="2.5" y2="-2" width="0.127" layer="21"/>
<wire x1="2.5" y1="-2" x2="2" y2="-1.5" width="0.127" layer="21"/>
<wire x1="2" y1="-1.5" x2="-2" y2="-1.5" width="0.127" layer="21"/>
<wire x1="-2" y1="-1.5" x2="-2.5" y2="-1" width="0.127" layer="21"/>
<wire x1="-2.5" y1="-1" x2="-2.5" y2="0" width="0.127" layer="21"/>
<wire x1="-2.5" y1="0" x2="-2.3" y2="0.2" width="0.127" layer="21"/>
<wire x1="-2.3" y1="0.2" x2="-2" y2="0.2" width="0.127" layer="21"/>
<wire x1="-2" y1="0.2" x2="-1.8" y2="0.4" width="0.127" layer="21"/>
<wire x1="-1.8" y1="0.4" x2="-1.8" y2="2.2" width="0.127" layer="21"/>
<wire x1="-1.8" y1="2.2" x2="-1.5" y2="2.5" width="0.127" layer="21"/>
<wire x1="-1.5" y1="2.5" x2="-1" y2="2.5" width="0.127" layer="21"/>
<wire x1="-1.5" y1="-0.5" x2="-1.3" y2="-0.5" width="0.127" layer="21"/>
<wire x1="-1.3" y1="-0.5" x2="-1" y2="-0.2" width="0.127" layer="21"/>
<wire x1="-1" y1="-0.2" x2="-1" y2="1" width="0.127" layer="21"/>
<wire x1="1" y1="1" x2="1.5" y2="0.5" width="0.127" layer="21"/>
<wire x1="1.5" y1="0.5" x2="1.5" y2="-0.5" width="0.127" layer="21"/>
<wire x1="1" y1="1" x2="-1" y2="1" width="0.127" layer="21"/>
<wire x1="2.5" y1="1" x2="2.5" y2="2.5" width="0.127" layer="21"/>
<wire x1="2.5" y1="2.5" x2="2.5" y2="5" width="0.127" layer="21"/>
<wire x1="1.5" y1="5" x2="1.5" y2="3.7" width="0.127" layer="21"/>
<wire x1="1.5" y1="3.7" x2="1.7" y2="3.5" width="0.127" layer="21"/>
<wire x1="1.7" y1="3.5" x2="1.7" y2="1.9" width="0.127" layer="21"/>
<wire x1="1.7" y1="1.9" x2="1.5" y2="1.7" width="0.127" layer="21"/>
<wire x1="1.5" y1="1.7" x2="-0.7" y2="1.7" width="0.127" layer="21"/>
<wire x1="-0.7" y1="1.7" x2="-1" y2="2" width="0.127" layer="21"/>
<wire x1="-1" y1="2" x2="-1" y2="2.5" width="0.127" layer="21"/>
<wire x1="-1.5" y1="4.5" x2="0" y2="4.5" width="0.127" layer="21"/>
<wire x1="0" y1="4.5" x2="0.5" y2="5" width="0.127" layer="21"/>
</package>
<package name="NOT-VERTICAL">
<wire x1="-2" y1="-5" x2="2" y2="-5" width="0.1" layer="41"/>
<wire x1="2" y1="-5" x2="2" y2="5" width="0.1" layer="41"/>
<wire x1="2" y1="5" x2="-2" y2="5" width="0.1" layer="41"/>
<wire x1="-2" y1="5" x2="-2" y2="-5" width="0.1" layer="41"/>
<wire x1="-2" y1="-5" x2="2" y2="-5" width="0.1" layer="51"/>
<wire x1="2" y1="-5" x2="2" y2="5" width="0.1" layer="51"/>
<wire x1="2" y1="5" x2="-2" y2="5" width="0.1" layer="51"/>
<wire x1="-2" y1="5" x2="-2" y2="-5" width="0.1" layer="51"/>
<smd name="IN" x="1" y="-4.3" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="OUT1" x="-1" y="4.3" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="OUT2" x="0" y="4.3" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="OUT3" x="1" y="4.3" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<wire x1="-1.5" y1="-0.5" x2="-1.5" y2="0.5" width="0.1" layer="51"/>
<wire x1="-1.5" y1="0.5" x2="-0.3" y2="0.5" width="0.1" layer="51"/>
<wire x1="-0.3" y1="0.5" x2="0.3" y2="0.5" width="0.1" layer="51"/>
<wire x1="0.3" y1="0.5" x2="1.5" y2="0.5" width="0.1" layer="51"/>
<wire x1="1.5" y1="0.5" x2="1.5" y2="-0.5" width="0.1" layer="51"/>
<wire x1="1.5" y1="-0.5" x2="1.3" y2="-0.5" width="0.1" layer="51"/>
<wire x1="1.3" y1="-0.5" x2="0.7" y2="-0.5" width="0.1" layer="51"/>
<wire x1="0.7" y1="-0.5" x2="-0.7" y2="-0.5" width="0.1" layer="51"/>
<wire x1="-0.7" y1="-0.5" x2="-1" y2="-0.5" width="0.1" layer="51"/>
<wire x1="-1" y1="-0.5" x2="-1.3" y2="-0.5" width="0.1" layer="51"/>
<wire x1="-1.3" y1="-0.5" x2="-1.5" y2="-0.5" width="0.1" layer="51"/>
<wire x1="1" y1="-4" x2="1" y2="-2.9" width="0.2" layer="51"/>
<wire x1="1" y1="-0.7" x2="1" y2="1" width="0.2" layer="51"/>
<wire x1="1" y1="1" x2="0.5" y2="1.5" width="0.2" layer="51"/>
<wire x1="0.5" y1="1.5" x2="0" y2="2" width="0.2" layer="51"/>
<wire x1="0" y1="2" x2="0" y2="4" width="0.2" layer="51"/>
<wire x1="0" y1="1" x2="-0.5" y2="1" width="0.2" layer="51"/>
<wire x1="-0.5" y1="1" x2="-1" y2="1.5" width="0.2" layer="51"/>
<wire x1="-1" y1="1.5" x2="-1" y2="3" width="0.2" layer="51"/>
<wire x1="1" y1="3" x2="1" y2="4" width="0.2" layer="51"/>
<rectangle x1="-1.2" y1="-3.5" x2="-0.2" y2="-2.5" layer="51"/>
<rectangle x1="0.3" y1="-3.5" x2="1.3" y2="-2.5" layer="51"/>
<rectangle x1="-1.3" y1="2.5" x2="-0.3" y2="3.5" layer="51"/>
<rectangle x1="0.3" y1="2.5" x2="1.3" y2="3.5" layer="51"/>
<rectangle x1="-0.3" y1="0.5" x2="0.3" y2="1.3" layer="51"/>
<rectangle x1="-1.3" y1="-1.3" x2="-0.7" y2="-0.5" layer="51"/>
<rectangle x1="0.7" y1="-1.3" x2="1.3" y2="-0.5" layer="51"/>
<text x="0.3" y="-1.9" size="0.7" layer="25" font="vector" ratio="12" align="center">&gt;NAME</text>
<wire x1="-0.8" y1="-3" x2="-1.3" y2="-3" width="0.2" layer="51"/>
<wire x1="-1.3" y1="-3" x2="-1.6" y2="-2.7" width="0.2" layer="51"/>
<wire x1="-1.6" y1="-2.7" x2="-1.6" y2="-1.1" width="0.2" layer="51"/>
<wire x1="-1.6" y1="-1.1" x2="-1.4" y2="-0.9" width="0.2" layer="51"/>
<wire x1="-1.4" y1="-0.9" x2="-1" y2="-0.9" width="0.2" layer="51"/>
</package>
<package name="AND">
<wire x1="-3.5" y1="-6.5" x2="3.5" y2="-6.5" width="0.1" layer="41"/>
<wire x1="3.5" y1="-6.5" x2="3.5" y2="6.5" width="0.1" layer="41"/>
<wire x1="3.5" y1="6.5" x2="-3.5" y2="6.5" width="0.1" layer="41"/>
<wire x1="-3.5" y1="6.5" x2="-3.5" y2="-6.5" width="0.1" layer="41"/>
<wire x1="-3.5" y1="-6.5" x2="3.5" y2="-6.5" width="0.1" layer="51"/>
<wire x1="3.5" y1="-6.5" x2="3.5" y2="6.5" width="0.1" layer="51"/>
<wire x1="3.5" y1="6.5" x2="-3.5" y2="6.5" width="0.1" layer="51"/>
<wire x1="-3.5" y1="6.5" x2="-3.5" y2="-6.5" width="0.1" layer="51"/>
<smd name="A" x="-0.5" y="-5.8" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="OUT1" x="0.5" y="5.5" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="OUT2" x="1.5" y="5.5" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="OUT3" x="2.5" y="5.5" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<wire x1="-3" y1="-2" x2="-3" y2="-1" width="0.1" layer="51"/>
<wire x1="-3" y1="-1" x2="-1.8" y2="-1" width="0.1" layer="51"/>
<wire x1="-1.8" y1="-1" x2="-1.2" y2="-1" width="0.1" layer="51"/>
<wire x1="-1.2" y1="-1" x2="-0.5" y2="-1" width="0.1" layer="51"/>
<wire x1="-0.5" y1="-1" x2="-0.5" y2="-2" width="0.1" layer="51"/>
<wire x1="-0.5" y1="-2" x2="-0.7" y2="-2" width="0.1" layer="51"/>
<wire x1="-0.7" y1="-2" x2="-0.5" y2="-2" width="0.1" layer="51"/>
<wire x1="-0.5" y1="-2" x2="-0.7" y2="-2" width="0.1" layer="51"/>
<wire x1="-0.7" y1="-2" x2="-0.8" y2="-2" width="0.1" layer="51"/>
<wire x1="-0.8" y1="-2" x2="-3" y2="-2" width="0.1" layer="51"/>
<wire x1="-1.5" y1="-0.5" x2="-2" y2="-0.5" width="0.2" layer="51"/>
<rectangle x1="-3" y1="-5" x2="-2" y2="-4" layer="51"/>
<rectangle x1="-1.5" y1="-5" x2="-0.5" y2="-4" layer="51"/>
<rectangle x1="-2.8" y1="-2.8" x2="-2.2" y2="-2" layer="51"/>
<rectangle x1="-1.3" y1="-2.8" x2="-0.7" y2="-2" layer="51"/>
<text x="-1.7" y="5.8" size="0.7" layer="51" font="vector" ratio="12" align="center">&gt;NAME</text>
<rectangle x1="2" y1="-5" x2="3" y2="-4" layer="51"/>
<rectangle x1="0.5" y1="-5" x2="1.5" y2="-4" layer="51"/>
<rectangle x1="-2.1" y1="-1" x2="-1.4" y2="-0.1" layer="51"/>
<smd name="B" x="2.5" y="-5.8" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<wire x1="0.5" y1="-2" x2="0.5" y2="-1" width="0.1" layer="51"/>
<wire x1="0.5" y1="-1" x2="1.7" y2="-1" width="0.1" layer="51"/>
<wire x1="1.7" y1="-1" x2="2.3" y2="-1" width="0.1" layer="51"/>
<wire x1="2.3" y1="-1" x2="3" y2="-1" width="0.1" layer="51"/>
<wire x1="3" y1="-1" x2="3" y2="-2" width="0.1" layer="51"/>
<wire x1="3" y1="-2" x2="2.8" y2="-2" width="0.1" layer="51"/>
<wire x1="2.8" y1="-2" x2="3" y2="-2" width="0.1" layer="51"/>
<wire x1="3" y1="-2" x2="2.8" y2="-2" width="0.1" layer="51"/>
<wire x1="2.8" y1="-2" x2="2.7" y2="-2" width="0.1" layer="51"/>
<wire x1="2.7" y1="-2" x2="0.5" y2="-2" width="0.1" layer="51"/>
<wire x1="2" y1="-0.5" x2="1.5" y2="-0.5" width="0.2" layer="51"/>
<rectangle x1="0.7" y1="-2.8" x2="1.3" y2="-2" layer="51"/>
<rectangle x1="2.2" y1="-2.8" x2="2.8" y2="-2" layer="51"/>
<rectangle x1="1.4" y1="-1" x2="2.1" y2="-0.1" layer="51"/>
<rectangle x1="-3" y1="0.5" x2="-2" y2="1.5" layer="51"/>
<rectangle x1="-1.5" y1="0.5" x2="-0.5" y2="1.5" layer="51"/>
<rectangle x1="2" y1="0.5" x2="3" y2="1.5" layer="51"/>
<rectangle x1="0.5" y1="0.5" x2="1.5" y2="1.5" layer="51"/>
<rectangle x1="2" y1="2" x2="3" y2="3" layer="51"/>
<rectangle x1="0.5" y1="2" x2="1.5" y2="3" layer="51"/>
<wire x1="-3" y1="3" x2="-3" y2="4" width="0.1" layer="51"/>
<wire x1="-3" y1="4" x2="-1.8" y2="4" width="0.1" layer="51"/>
<wire x1="-1.8" y1="4" x2="-1.2" y2="4" width="0.1" layer="51"/>
<wire x1="-1.2" y1="4" x2="-0.5" y2="4" width="0.1" layer="51"/>
<wire x1="-0.5" y1="4" x2="-0.5" y2="3" width="0.1" layer="51"/>
<wire x1="-0.5" y1="3" x2="-0.7" y2="3" width="0.1" layer="51"/>
<wire x1="-0.7" y1="3" x2="-0.5" y2="3" width="0.1" layer="51"/>
<wire x1="-0.5" y1="3" x2="-0.7" y2="3" width="0.1" layer="51"/>
<wire x1="-0.7" y1="3" x2="-0.8" y2="3" width="0.1" layer="51"/>
<wire x1="-0.8" y1="3" x2="-3" y2="3" width="0.1" layer="51"/>
<wire x1="-1.5" y1="4.5" x2="-2" y2="4.5" width="0.2" layer="51"/>
<rectangle x1="-2.8" y1="2.2" x2="-2.2" y2="3" layer="51"/>
<rectangle x1="-1.3" y1="2.2" x2="-0.7" y2="3" layer="51"/>
<rectangle x1="-2.1" y1="4" x2="-1.4" y2="4.9" layer="51"/>
<wire x1="-2.5" y1="-4.5" x2="-2.5" y2="-2.5" width="0.127" layer="21"/>
<wire x1="-0.5" y1="-5.5" x2="-0.5" y2="-5" width="0.127" layer="21"/>
<wire x1="-0.5" y1="-5" x2="-1" y2="-4.5" width="0.127" layer="21"/>
<wire x1="2.5" y1="-5.5" x2="2.5" y2="-4.5" width="0.127" layer="21"/>
<wire x1="1" y1="-4.5" x2="1" y2="-2.5" width="0.127" layer="21"/>
<wire x1="2.5" y1="-2.5" x2="2.5" y2="-2" width="0.127" layer="21"/>
<wire x1="2.5" y1="-2" x2="2" y2="-1.5" width="0.127" layer="21"/>
<wire x1="2" y1="-1.5" x2="0.5" y2="-1.5" width="0.127" layer="21"/>
<wire x1="0.5" y1="-1.5" x2="-0.5" y2="-0.5" width="0.127" layer="21"/>
<wire x1="-0.5" y1="-0.5" x2="-1.5" y2="-0.5" width="0.127" layer="21"/>
<wire x1="-1" y1="-2.5" x2="-1" y2="-2" width="0.127" layer="21"/>
<wire x1="-1" y1="-2" x2="-1.5" y2="-1.5" width="0.127" layer="21"/>
<wire x1="-1.5" y1="-1.5" x2="-2" y2="-1.5" width="0.127" layer="21"/>
<wire x1="-2" y1="-1.5" x2="-2.5" y2="-1" width="0.127" layer="21"/>
<wire x1="-2.5" y1="-1" x2="-2.5" y2="-0.2" width="0.127" layer="21"/>
<wire x1="-2.5" y1="-0.2" x2="-2.1" y2="0.2" width="0.127" layer="21"/>
<wire x1="-2.1" y1="0.2" x2="-2" y2="0.2" width="0.127" layer="21"/>
<wire x1="-2" y1="0.2" x2="-1.8" y2="0.4" width="0.127" layer="21"/>
<wire x1="-1.8" y1="0.4" x2="-1.8" y2="2.2" width="0.127" layer="21"/>
<wire x1="-1.8" y1="2.2" x2="-1.5" y2="2.5" width="0.127" layer="21"/>
<wire x1="-1.5" y1="2.5" x2="-1" y2="2.5" width="0.127" layer="21"/>
<wire x1="-2.5" y1="1" x2="-2.5" y2="2.5" width="0.127" layer="21"/>
<wire x1="-1" y1="1" x2="1" y2="1" width="0.127" layer="21"/>
<wire x1="1.5" y1="-0.5" x2="1.5" y2="0.5" width="0.127" layer="21"/>
<wire x1="1.5" y1="0.5" x2="1" y2="1" width="0.127" layer="21"/>
<wire x1="2.5" y1="1" x2="2.5" y2="2.5" width="0.127" layer="21"/>
<wire x1="2.5" y1="2.5" x2="2.5" y2="5.5" width="0.127" layer="21"/>
<wire x1="1.5" y1="5" x2="1.5" y2="3.8" width="0.127" layer="21"/>
<wire x1="1.5" y1="3.8" x2="1.8" y2="3.5" width="0.127" layer="21"/>
<wire x1="1.8" y1="3.5" x2="1.8" y2="2" width="0.127" layer="21"/>
<wire x1="1.8" y1="2" x2="1.5" y2="1.7" width="0.127" layer="21"/>
<wire x1="1.5" y1="1.7" x2="-0.2" y2="1.7" width="0.127" layer="21"/>
<wire x1="-0.2" y1="1.7" x2="-0.5" y2="2" width="0.127" layer="21"/>
<wire x1="-0.5" y1="2" x2="-1" y2="2.5" width="0.127" layer="21"/>
<wire x1="-1.5" y1="4.5" x2="0" y2="4.5" width="0.127" layer="21"/>
<wire x1="0" y1="4.5" x2="0.5" y2="4.5" width="0.127" layer="21"/>
<wire x1="0.5" y1="4.5" x2="0.5" y2="5.5" width="0.127" layer="21"/>
<wire x1="0.5" y1="4.5" x2="0.5" y2="4" width="0.127" layer="21"/>
<wire x1="0.5" y1="4" x2="1" y2="3.5" width="0.127" layer="21"/>
<wire x1="1" y1="3.5" x2="1" y2="3" width="0.127" layer="21"/>
</package>
<package name="AND-2-UNBUF">
<wire x1="-3.5" y1="-4.5" x2="3.5" y2="-4.5" width="0.1" layer="41"/>
<wire x1="3.5" y1="-4.5" x2="3.5" y2="4.5" width="0.1" layer="41"/>
<wire x1="3.5" y1="4.5" x2="-3.5" y2="4.5" width="0.1" layer="41"/>
<wire x1="-3.5" y1="4.5" x2="-3.5" y2="-4.5" width="0.1" layer="41"/>
<wire x1="-3.5" y1="-4.5" x2="3.5" y2="-4.5" width="0.1" layer="51"/>
<wire x1="3.5" y1="-4.5" x2="3.5" y2="4.5" width="0.1" layer="51"/>
<wire x1="3.5" y1="4.5" x2="-3.5" y2="4.5" width="0.1" layer="51"/>
<wire x1="-3.5" y1="4.5" x2="-3.5" y2="-4.5" width="0.1" layer="51"/>
<smd name="A" x="-0.5" y="-3.8" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="OUT1" x="0.5" y="3.5" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="OUT2" x="1.5" y="3.5" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="OUT3" x="2.5" y="3.5" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<wire x1="-3" y1="0" x2="-3" y2="1" width="0.1" layer="51"/>
<wire x1="-3" y1="1" x2="-1.8" y2="1" width="0.1" layer="51"/>
<wire x1="-1.8" y1="1" x2="-1.2" y2="1" width="0.1" layer="51"/>
<wire x1="-1.2" y1="1" x2="-0.5" y2="1" width="0.1" layer="51"/>
<wire x1="-0.5" y1="1" x2="-0.5" y2="0" width="0.1" layer="51"/>
<wire x1="-0.5" y1="0" x2="-0.7" y2="0" width="0.1" layer="51"/>
<wire x1="-0.7" y1="0" x2="-0.5" y2="0" width="0.1" layer="51"/>
<wire x1="-0.5" y1="0" x2="-0.7" y2="0" width="0.1" layer="51"/>
<wire x1="-0.7" y1="0" x2="-0.8" y2="0" width="0.1" layer="51"/>
<wire x1="-0.8" y1="0" x2="-3" y2="0" width="0.1" layer="51"/>
<wire x1="-1.5" y1="1.5" x2="-2" y2="1.5" width="0.2" layer="51"/>
<rectangle x1="-3" y1="-3" x2="-2" y2="-2" layer="51"/>
<rectangle x1="-1.5" y1="-3" x2="-0.5" y2="-2" layer="51"/>
<rectangle x1="-2.8" y1="-0.8" x2="-2.2" y2="0" layer="51"/>
<rectangle x1="-1.3" y1="-0.8" x2="-0.7" y2="0" layer="51"/>
<text x="-1.7" y="5.05" size="0.7" layer="51" font="vector" ratio="12" align="center">&gt;NAME</text>
<rectangle x1="2" y1="-3" x2="3" y2="-2" layer="51"/>
<rectangle x1="0.5" y1="-3" x2="1.5" y2="-2" layer="51"/>
<rectangle x1="-2.1" y1="1" x2="-1.4" y2="1.9" layer="51"/>
<smd name="B" x="2.5" y="-3.8" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<wire x1="0.5" y1="0" x2="0.5" y2="1" width="0.1" layer="51"/>
<wire x1="0.5" y1="1" x2="1.7" y2="1" width="0.1" layer="51"/>
<wire x1="1.7" y1="1" x2="2.3" y2="1" width="0.1" layer="51"/>
<wire x1="2.3" y1="1" x2="3" y2="1" width="0.1" layer="51"/>
<wire x1="3" y1="1" x2="3" y2="0" width="0.1" layer="51"/>
<wire x1="3" y1="0" x2="2.8" y2="0" width="0.1" layer="51"/>
<wire x1="2.8" y1="0" x2="3" y2="0" width="0.1" layer="51"/>
<wire x1="3" y1="0" x2="2.8" y2="0" width="0.1" layer="51"/>
<wire x1="2.8" y1="0" x2="2.7" y2="0" width="0.1" layer="51"/>
<wire x1="2.7" y1="0" x2="0.5" y2="0" width="0.1" layer="51"/>
<wire x1="2" y1="1.5" x2="1.5" y2="1.5" width="0.2" layer="51"/>
<rectangle x1="0.7" y1="-0.8" x2="1.3" y2="0" layer="51"/>
<rectangle x1="2.2" y1="-0.8" x2="2.8" y2="0" layer="51"/>
<rectangle x1="1.4" y1="1" x2="2.1" y2="1.9" layer="51"/>
<rectangle x1="-3" y1="2.5" x2="-2" y2="3.5" layer="51"/>
<rectangle x1="-1.5" y1="2.5" x2="-0.5" y2="3.5" layer="51"/>
<wire x1="-0.5" y1="-3.5" x2="-0.5" y2="-3" width="0.127" layer="21"/>
<wire x1="-0.5" y1="-3" x2="-0.75" y2="-2.75" width="0.127" layer="21"/>
<wire x1="2.5" y1="-3.5" x2="2.5" y2="-3" width="0.127" layer="21"/>
<wire x1="-2.5" y1="-2" x2="-2.5" y2="-0.75" width="0.127" layer="21"/>
<wire x1="1" y1="-2" x2="1" y2="-0.75" width="0.127" layer="21"/>
<wire x1="-1.5" y1="1.5" x2="-0.75" y2="1.5" width="0.127" layer="21"/>
<wire x1="-0.75" y1="1.5" x2="0.25" y2="0.5" width="0.127" layer="21"/>
<wire x1="0.25" y1="0.5" x2="2.25" y2="0.5" width="0.127" layer="21"/>
<wire x1="2.25" y1="0.5" x2="2.5" y2="0.25" width="0.127" layer="21"/>
<wire x1="2.5" y1="0.25" x2="2.5" y2="0" width="0.127" layer="21"/>
<wire x1="-1" y1="0" x2="-1" y2="0.25" width="0.127" layer="21"/>
<wire x1="-1" y1="0.25" x2="-1.25" y2="0.5" width="0.127" layer="21"/>
<wire x1="-1.25" y1="0.5" x2="-2.5" y2="0.5" width="0.127" layer="21"/>
<wire x1="-2.5" y1="0.5" x2="-2.75" y2="0.75" width="0.127" layer="21"/>
<wire x1="-2.75" y1="0.75" x2="-2.75" y2="2.25" width="0.127" layer="21"/>
<wire x1="-2.75" y1="2.25" x2="-2.75" y2="2.5" width="0.127" layer="21"/>
<wire x1="-0.5" y1="3" x2="0.25" y2="3" width="0.127" layer="21"/>
<wire x1="0.25" y1="3" x2="0.5" y2="3.25" width="0.127" layer="21"/>
<wire x1="2" y1="1.5" x2="2.25" y2="1.5" width="0.127" layer="21"/>
<wire x1="2.25" y1="1.5" x2="2.5" y2="1.75" width="0.127" layer="21"/>
<wire x1="2.5" y1="1.75" x2="2.5" y2="3.25" width="0.127" layer="21"/>
<wire x1="1.5" y1="3.25" x2="1.5" y2="2.5" width="0.127" layer="21"/>
<wire x1="1.5" y1="2.5" x2="1.25" y2="2.25" width="0.127" layer="21"/>
<wire x1="1.25" y1="2.25" x2="-2.75" y2="2.25" width="0.127" layer="21"/>
</package>
<package name="SELECTOR-8_BIT-NOMUX">
<wire x1="0" y1="-0.01" x2="39.5" y2="-0.01" width="0.1" layer="41"/>
<wire x1="39.5" y1="-0.01" x2="39.5" y2="13.99" width="0.1" layer="41"/>
<wire x1="39.5" y1="13.99" x2="0" y2="13.99" width="0.1" layer="41"/>
<wire x1="0" y1="13.99" x2="0" y2="-0.01" width="0.1" layer="41"/>
<wire x1="0" y1="-0.01" x2="39.5" y2="-0.01" width="0.1" layer="51"/>
<wire x1="39.5" y1="-0.01" x2="39.5" y2="13.99" width="0.1" layer="51"/>
<wire x1="39.5" y1="13.99" x2="0" y2="13.99" width="0.1" layer="51"/>
<wire x1="0" y1="13.99" x2="0" y2="-0.01" width="0.1" layer="51"/>
<smd name="SEL1" x="1.2" y="0.7" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<text x="2" y="13.09" size="0.7" layer="51" font="vector" ratio="12" align="center">&gt;NAME</text>
<smd name="IN1" x="3.4" y="0.7" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<wire x1="3.4" y1="1.2" x2="3.4" y2="3.5" width="0.127" layer="51"/>
<wire x1="1.2" y1="1.2" x2="1.2" y2="4.5" width="0.127" layer="51"/>
<wire x1="1.2" y1="4.5" x2="2.4" y2="4.5" width="0.127" layer="51"/>
<wire x1="2.4" y1="4.5" x2="2.4" y2="3.5" width="0.127" layer="51"/>
<wire x1="2.4" y1="3.5" x2="2.4" y2="5.5" width="0.127" layer="51"/>
<wire x1="3.4" y1="5.5" x2="3.4" y2="12" width="0.127" layer="51"/>
<circle x="3.4" y="3.5" radius="0.1" width="0.127" layer="51"/>
<circle x="3.4" y="5.5" radius="0.1" width="0.127" layer="51"/>
<circle x="2.4" y="4.5" radius="0.1" width="0.127" layer="51"/>
<smd name="SEL2" x="5.6" y="0.7" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="IN2" x="7.8" y="0.7" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<wire x1="7.8" y1="1.2" x2="7.8" y2="3.5" width="0.127" layer="51"/>
<wire x1="5.6" y1="1.2" x2="5.6" y2="4.5" width="0.127" layer="51"/>
<wire x1="5.6" y1="4.5" x2="6.8" y2="4.5" width="0.127" layer="51"/>
<wire x1="6.8" y1="4.5" x2="6.8" y2="3.5" width="0.127" layer="51"/>
<wire x1="6.8" y1="3.5" x2="6.8" y2="5.5" width="0.127" layer="51"/>
<wire x1="7.8" y1="5.5" x2="7.8" y2="12" width="0.127" layer="51"/>
<circle x="7.8" y="3.5" radius="0.1" width="0.127" layer="51"/>
<circle x="7.8" y="5.5" radius="0.1" width="0.127" layer="51"/>
<circle x="6.8" y="4.5" radius="0.1" width="0.127" layer="51"/>
<smd name="SEL3" x="10" y="0.7" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="IN3" x="12.2" y="0.7" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<wire x1="12.2" y1="1.2" x2="12.2" y2="3.5" width="0.127" layer="51"/>
<wire x1="10" y1="1.2" x2="10" y2="4.5" width="0.127" layer="51"/>
<wire x1="10" y1="4.5" x2="11.2" y2="4.5" width="0.127" layer="51"/>
<wire x1="11.2" y1="4.5" x2="11.2" y2="3.5" width="0.127" layer="51"/>
<wire x1="11.2" y1="3.5" x2="11.2" y2="5.5" width="0.127" layer="51"/>
<wire x1="12.2" y1="5.5" x2="12.2" y2="12" width="0.127" layer="51"/>
<circle x="12.2" y="3.5" radius="0.1" width="0.127" layer="51"/>
<circle x="12.2" y="5.5" radius="0.1" width="0.127" layer="51"/>
<circle x="11.2" y="4.5" radius="0.1" width="0.127" layer="51"/>
<smd name="SEL4" x="14.4" y="0.7" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="IN4" x="16.6" y="0.7" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<wire x1="16.6" y1="1.2" x2="16.6" y2="3.5" width="0.127" layer="51"/>
<wire x1="14.4" y1="1.2" x2="14.4" y2="4.5" width="0.127" layer="51"/>
<wire x1="14.4" y1="4.5" x2="15.6" y2="4.5" width="0.127" layer="51"/>
<wire x1="15.6" y1="4.5" x2="15.6" y2="3.5" width="0.127" layer="51"/>
<wire x1="15.6" y1="3.5" x2="15.6" y2="5.5" width="0.127" layer="51"/>
<wire x1="16.6" y1="5.5" x2="16.6" y2="12" width="0.127" layer="51"/>
<circle x="16.6" y="3.5" radius="0.1" width="0.127" layer="51"/>
<circle x="16.6" y="5.5" radius="0.1" width="0.127" layer="51"/>
<circle x="15.6" y="4.5" radius="0.1" width="0.127" layer="51"/>
<smd name="SEL5" x="18.8" y="0.7" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="IN5" x="21" y="0.7" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<wire x1="21" y1="1.2" x2="21" y2="3.5" width="0.127" layer="51"/>
<wire x1="18.8" y1="1.2" x2="18.8" y2="4.5" width="0.127" layer="51"/>
<wire x1="18.8" y1="4.5" x2="20" y2="4.5" width="0.127" layer="51"/>
<wire x1="20" y1="4.5" x2="20" y2="3.5" width="0.127" layer="51"/>
<wire x1="20" y1="3.5" x2="20" y2="5.5" width="0.127" layer="51"/>
<wire x1="21" y1="5.5" x2="21" y2="12" width="0.127" layer="51"/>
<circle x="21" y="3.5" radius="0.1" width="0.127" layer="51"/>
<circle x="21" y="5.5" radius="0.1" width="0.127" layer="51"/>
<circle x="20" y="4.5" radius="0.1" width="0.127" layer="51"/>
<smd name="SEL6" x="23.2" y="0.7" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="IN6" x="25.4" y="0.7" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<wire x1="25.4" y1="1.2" x2="25.4" y2="3.5" width="0.127" layer="51"/>
<wire x1="23.2" y1="1.2" x2="23.2" y2="4.5" width="0.127" layer="51"/>
<wire x1="23.2" y1="4.5" x2="24.4" y2="4.5" width="0.127" layer="51"/>
<wire x1="24.4" y1="4.5" x2="24.4" y2="3.5" width="0.127" layer="51"/>
<wire x1="24.4" y1="3.5" x2="24.4" y2="5.5" width="0.127" layer="51"/>
<wire x1="25.4" y1="5.5" x2="25.4" y2="12" width="0.127" layer="51"/>
<circle x="25.4" y="3.5" radius="0.1" width="0.127" layer="51"/>
<circle x="25.4" y="5.5" radius="0.1" width="0.127" layer="51"/>
<circle x="24.4" y="4.5" radius="0.1" width="0.127" layer="51"/>
<smd name="SEL7" x="27.6" y="0.7" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="IN7" x="29.8" y="0.7" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<wire x1="29.8" y1="1.2" x2="29.8" y2="3.5" width="0.127" layer="51"/>
<wire x1="27.6" y1="1.2" x2="27.6" y2="4.5" width="0.127" layer="51"/>
<wire x1="27.6" y1="4.5" x2="28.8" y2="4.5" width="0.127" layer="51"/>
<wire x1="28.8" y1="4.5" x2="28.8" y2="3.5" width="0.127" layer="51"/>
<wire x1="28.8" y1="3.5" x2="28.8" y2="5.5" width="0.127" layer="51"/>
<wire x1="29.8" y1="5.5" x2="29.8" y2="12" width="0.127" layer="51"/>
<circle x="29.8" y="3.5" radius="0.1" width="0.127" layer="51"/>
<circle x="29.8" y="5.5" radius="0.1" width="0.127" layer="51"/>
<circle x="28.8" y="4.5" radius="0.1" width="0.127" layer="51"/>
<smd name="SEL8" x="32" y="0.7" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="IN8" x="34.2" y="0.7" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<wire x1="34.2" y1="1.2" x2="34.2" y2="3.5" width="0.127" layer="51"/>
<wire x1="32" y1="1.2" x2="32" y2="4.5" width="0.127" layer="51"/>
<wire x1="32" y1="4.5" x2="33.2" y2="4.5" width="0.127" layer="51"/>
<wire x1="33.2" y1="4.5" x2="33.2" y2="3.5" width="0.127" layer="51"/>
<wire x1="33.2" y1="3.5" x2="33.2" y2="5.5" width="0.127" layer="51"/>
<wire x1="34.2" y1="5.5" x2="34.2" y2="12" width="0.127" layer="51"/>
<circle x="34.2" y="3.5" radius="0.1" width="0.127" layer="51"/>
<circle x="34.2" y="5.5" radius="0.1" width="0.127" layer="51"/>
<circle x="33.2" y="4.5" radius="0.1" width="0.127" layer="51"/>
<wire x1="3.4" y1="12" x2="35" y2="12" width="0.127" layer="51"/>
<smd name="GND" x="35.8" y="0.7" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="OUT" x="36.8" y="0.7" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="V+" x="37.8" y="0.7" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<wire x1="36.8" y1="1.2" x2="36.8" y2="11.4" width="0.127" layer="51"/>
<wire x1="36.8" y1="11.4" x2="36.2" y2="12" width="0.127" layer="51"/>
<wire x1="36.2" y1="12" x2="35" y2="12" width="0.127" layer="51"/>
<wire x1="35.8" y1="1.2" x2="35.8" y2="2.4" width="0.127" layer="51"/>
<wire x1="35.2" y1="2.4" x2="36.4" y2="2.4" width="0.127" layer="51"/>
<wire x1="35.4" y1="2.6" x2="36.2" y2="2.6" width="0.127" layer="51"/>
<wire x1="35.6" y1="2.8" x2="36" y2="2.8" width="0.127" layer="51"/>
<wire x1="37.8" y1="1.2" x2="37.8" y2="2.4" width="0.127" layer="51"/>
<wire x1="37.8" y1="2.4" x2="37.8" y2="2.8" width="0.127" layer="51"/>
<wire x1="37.8" y1="2.8" x2="37.4" y2="2.4" width="0.127" layer="51"/>
<wire x1="37.8" y1="2.8" x2="38.2" y2="2.4" width="0.127" layer="51"/>
<wire x1="37.8" y1="2.4" x2="37.4" y2="2" width="0.127" layer="51"/>
<wire x1="37.8" y1="2.4" x2="38.2" y2="2" width="0.127" layer="51"/>
<circle x="7.8" y="12" radius="0.1" width="0.127" layer="51"/>
<circle x="12.2" y="12" radius="0.1" width="0.127" layer="51"/>
<circle x="16.6" y="12" radius="0.1" width="0.127" layer="51"/>
<circle x="21" y="12" radius="0.1" width="0.127" layer="51"/>
<circle x="25.4" y="12" radius="0.1" width="0.127" layer="51"/>
<circle x="29.8" y="12" radius="0.1" width="0.127" layer="51"/>
<circle x="34.2" y="12" radius="0.1" width="0.127" layer="51"/>
</package>
<package name="NOT-HORIZONTAL">
<wire x1="-3.25" y1="-3.25" x2="3.25" y2="-3.25" width="0.1" layer="41"/>
<wire x1="3.25" y1="-3.25" x2="3.25" y2="3.25" width="0.1" layer="41"/>
<wire x1="3.25" y1="3.25" x2="-3.25" y2="3.25" width="0.1" layer="41"/>
<wire x1="-3.25" y1="3.25" x2="-3.25" y2="-3.25" width="0.1" layer="41"/>
<wire x1="-3.25" y1="-3.25" x2="3.25" y2="-3.25" width="0.1" layer="51"/>
<wire x1="3.25" y1="-3.25" x2="3.25" y2="3.25" width="0.1" layer="51"/>
<wire x1="3.25" y1="3.25" x2="-3.25" y2="3.25" width="0.1" layer="51"/>
<wire x1="-3.25" y1="3.25" x2="-3.25" y2="-3.25" width="0.1" layer="51"/>
<smd name="IN" x="-1.75" y="-2.55" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="OUT1" x="0.25" y="-2.55" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="OUT2" x="1.25" y="-2.55" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="OUT3" x="2.25" y="-2.55" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<rectangle x1="-2.75" y1="-1.65" x2="-1.75" y2="-0.65" layer="51"/>
<rectangle x1="1.85" y1="-0.65" x2="2.45" y2="0.15" layer="51" rot="R90"/>
<rectangle x1="-0.45" y1="-1.65" x2="0.15" y2="-0.85" layer="51" rot="R90"/>
<text x="-1.45" y="2.65" size="0.7" layer="25" font="vector" ratio="12" align="center">&gt;NAME</text>
<rectangle x1="-0.45" y1="0.35" x2="0.15" y2="1.15" layer="51" rot="R90"/>
<rectangle x1="-2.75" y1="-0.15" x2="-1.75" y2="0.85" layer="51"/>
<rectangle x1="1.05" y1="1.75" x2="2.05" y2="2.75" layer="51"/>
<rectangle x1="-0.45" y1="1.75" x2="0.55" y2="2.75" layer="51"/>
<wire x1="0.25" y1="-1.75" x2="1.75" y2="-1.75" width="0.2" layer="51"/>
<wire x1="1.75" y1="-1.75" x2="1.75" y2="1.25" width="0.2" layer="51"/>
<wire x1="1.75" y1="1.25" x2="0.25" y2="1.25" width="0.2" layer="51"/>
<wire x1="0.25" y1="1.25" x2="0.25" y2="-1.75" width="0.2" layer="51"/>
<wire x1="-1.75" y1="-2.25" x2="-1.75" y2="-1.75" width="0.2" layer="51"/>
<wire x1="-1.75" y1="-1.75" x2="-2.25" y2="-1.25" width="0.2" layer="51"/>
<wire x1="-2.25" y1="0.75" x2="-0.25" y2="0.75" width="0.2" layer="51"/>
<wire x1="0.25" y1="-2.25" x2="-0.25" y2="-1.75" width="0.2" layer="51"/>
<wire x1="-0.25" y1="-1.75" x2="-0.25" y2="-1.25" width="0.2" layer="51"/>
<wire x1="1.25" y1="-2.25" x2="1.25" y2="1.25" width="0.2" layer="51"/>
<wire x1="1.25" y1="1.25" x2="0.75" y2="1.75" width="0.2" layer="51"/>
<wire x1="0.75" y1="1.75" x2="0.25" y2="2.25" width="0.2" layer="51"/>
<wire x1="2.25" y1="-2.25" x2="2.25" y2="-0.25" width="0.2" layer="51"/>
<wire x1="1.75" y1="2.25" x2="1.75" y2="1.75" width="0.2" layer="51"/>
<wire x1="1.75" y1="1.75" x2="2.25" y2="1.25" width="0.2" layer="51"/>
<wire x1="2.25" y1="1.25" x2="2.25" y2="-0.25" width="0.2" layer="51"/>
</package>
<package name="SELECTOR-2-LANE-NOMUX">
<wire x1="0" y1="-0.01" x2="11.5" y2="-0.01" width="0.1" layer="41"/>
<wire x1="11.5" y1="-0.01" x2="11.5" y2="14.99" width="0.1" layer="41"/>
<wire x1="11.5" y1="14.99" x2="0" y2="14.99" width="0.1" layer="41"/>
<wire x1="0" y1="14.99" x2="0" y2="-0.01" width="0.1" layer="41"/>
<wire x1="0" y1="-0.01" x2="11.5" y2="-0.01" width="0.1" layer="51"/>
<wire x1="11.5" y1="-0.01" x2="11.5" y2="14.99" width="0.1" layer="51"/>
<wire x1="11.5" y1="14.99" x2="0" y2="14.99" width="0.1" layer="51"/>
<wire x1="0" y1="14.99" x2="0" y2="-0.01" width="0.1" layer="51"/>
<smd name="SEL" x="1" y="0.7" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<text x="2" y="14.09" size="0.7" layer="51" font="vector" ratio="12" align="center">&gt;NAME</text>
<smd name="IN1" x="1" y="1.7" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="IN2" x="1" y="2.7" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="GND" x="9" y="0.7" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="OUT" x="10" y="0.7" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="V+" x="11" y="0.7" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<wire x1="9" y1="1.4" x2="9" y2="2.6" width="0.127" layer="51"/>
<wire x1="8.4" y1="2.6" x2="9.6" y2="2.6" width="0.127" layer="51"/>
<wire x1="8.6" y1="2.8" x2="9.4" y2="2.8" width="0.127" layer="51"/>
<wire x1="8.8" y1="3" x2="9.2" y2="3" width="0.127" layer="51"/>
<wire x1="11" y1="1.4" x2="11" y2="2.6" width="0.127" layer="51"/>
<wire x1="11" y1="2.6" x2="11" y2="3" width="0.127" layer="51"/>
<wire x1="11" y1="3" x2="10.6" y2="2.6" width="0.127" layer="51"/>
<wire x1="11" y1="3" x2="11.4" y2="2.6" width="0.127" layer="51"/>
<wire x1="11" y1="2.6" x2="10.6" y2="2.2" width="0.127" layer="51"/>
<wire x1="11" y1="2.6" x2="11.4" y2="2.2" width="0.127" layer="51"/>
<wire x1="1.6" y1="1.7" x2="3" y2="1.7" width="0.127" layer="51"/>
<wire x1="3" y1="1.7" x2="3" y2="2" width="0.127" layer="51"/>
<wire x1="1.5" y1="0.7" x2="4.5" y2="0.7" width="0.127" layer="51"/>
<wire x1="4.5" y1="0.7" x2="4.5" y2="1" width="0.127" layer="51"/>
<wire x1="1" y1="3.3" x2="1" y2="4" width="0.127" layer="51"/>
<wire x1="3" y1="2" x2="3" y2="7.5" width="0.127" layer="51"/>
<wire x1="10" y1="1.5" x2="10" y2="9.5" width="0.127" layer="51"/>
<wire x1="10" y1="9.5" x2="4" y2="9.5" width="0.127" layer="51"/>
<wire x1="4" y1="9.5" x2="3.5" y2="9" width="0.127" layer="51"/>
<wire x1="3.5" y1="9" x2="2.5" y2="8" width="0.127" layer="51"/>
<wire x1="1" y1="4" x2="1" y2="13" width="0.127" layer="51"/>
<wire x1="1" y1="13" x2="3" y2="13" width="0.127" layer="51"/>
<wire x1="3" y1="13" x2="3" y2="11.5" width="0.127" layer="51"/>
<wire x1="4.5" y1="1" x2="4.5" y2="8" width="0.127" layer="51"/>
<wire x1="4.5" y1="8" x2="4" y2="8.5" width="0.127" layer="51"/>
<wire x1="4" y1="8.5" x2="3.5" y2="9" width="0.127" layer="51"/>
<circle x="3" y="7.5" radius="0.1" width="0.127" layer="51"/>
<circle x="3" y="11.5" radius="0.1" width="0.127" layer="51"/>
<circle x="2.5" y="8" radius="0.1" width="0.127" layer="51"/>
</package>
<package name="NAND-2">
<wire x1="-3.5" y1="-4.5" x2="3.5" y2="-4.5" width="0.1" layer="41"/>
<wire x1="3.5" y1="-4.5" x2="3.5" y2="4.5" width="0.1" layer="41"/>
<wire x1="3.5" y1="4.5" x2="-3.5" y2="4.5" width="0.1" layer="41"/>
<wire x1="-3.5" y1="4.5" x2="-3.5" y2="-4.5" width="0.1" layer="41"/>
<wire x1="-3.5" y1="-4.5" x2="3.5" y2="-4.5" width="0.1" layer="51"/>
<wire x1="3.5" y1="-4.5" x2="3.5" y2="4.5" width="0.1" layer="51"/>
<wire x1="3.5" y1="4.5" x2="-3.5" y2="4.5" width="0.1" layer="51"/>
<wire x1="-3.5" y1="4.5" x2="-3.5" y2="-4.5" width="0.1" layer="51"/>
<smd name="A" x="-0.5" y="-3.8" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="OUT1" x="0.5" y="3.5" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="OUT2" x="1.5" y="3.5" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<smd name="OUT3" x="2.5" y="3.5" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<wire x1="-3" y1="0" x2="-3" y2="1" width="0.1" layer="51"/>
<wire x1="-3" y1="1" x2="-1.8" y2="1" width="0.1" layer="51"/>
<wire x1="-1.8" y1="1" x2="-1.2" y2="1" width="0.1" layer="51"/>
<wire x1="-1.2" y1="1" x2="-0.5" y2="1" width="0.1" layer="51"/>
<wire x1="-0.5" y1="1" x2="-0.5" y2="0" width="0.1" layer="51"/>
<wire x1="-0.5" y1="0" x2="-0.7" y2="0" width="0.1" layer="51"/>
<wire x1="-0.7" y1="0" x2="-0.5" y2="0" width="0.1" layer="51"/>
<wire x1="-0.5" y1="0" x2="-0.7" y2="0" width="0.1" layer="51"/>
<wire x1="-0.7" y1="0" x2="-0.8" y2="0" width="0.1" layer="51"/>
<wire x1="-0.8" y1="0" x2="-3" y2="0" width="0.1" layer="51"/>
<wire x1="-1.5" y1="1.5" x2="-2" y2="1.5" width="0.2" layer="51"/>
<rectangle x1="-3" y1="-3" x2="-2" y2="-2" layer="51"/>
<rectangle x1="-1.5" y1="-3" x2="-0.5" y2="-2" layer="51"/>
<rectangle x1="-2.8" y1="-0.8" x2="-2.2" y2="0" layer="51"/>
<rectangle x1="-1.3" y1="-0.8" x2="-0.7" y2="0" layer="51"/>
<text x="-1.7" y="5.05" size="0.7" layer="51" font="vector" ratio="12" align="center">&gt;NAME</text>
<rectangle x1="2" y1="-3" x2="3" y2="-2" layer="51"/>
<rectangle x1="0.5" y1="-3" x2="1.5" y2="-2" layer="51"/>
<rectangle x1="-2.1" y1="1" x2="-1.4" y2="1.9" layer="51"/>
<smd name="B" x="2.5" y="-3.8" dx="0.7" dy="0.7" layer="1" roundness="100"/>
<wire x1="0.5" y1="0" x2="0.5" y2="1" width="0.1" layer="51"/>
<wire x1="0.5" y1="1" x2="1.7" y2="1" width="0.1" layer="51"/>
<wire x1="1.7" y1="1" x2="2.3" y2="1" width="0.1" layer="51"/>
<wire x1="2.3" y1="1" x2="3" y2="1" width="0.1" layer="51"/>
<wire x1="3" y1="1" x2="3" y2="0" width="0.1" layer="51"/>
<wire x1="3" y1="0" x2="2.8" y2="0" width="0.1" layer="51"/>
<wire x1="2.8" y1="0" x2="3" y2="0" width="0.1" layer="51"/>
<wire x1="3" y1="0" x2="2.8" y2="0" width="0.1" layer="51"/>
<wire x1="2.8" y1="0" x2="2.7" y2="0" width="0.1" layer="51"/>
<wire x1="2.7" y1="0" x2="0.5" y2="0" width="0.1" layer="51"/>
<wire x1="2" y1="1.5" x2="1.5" y2="1.5" width="0.2" layer="51"/>
<rectangle x1="0.7" y1="-0.8" x2="1.3" y2="0" layer="51"/>
<rectangle x1="2.2" y1="-0.8" x2="2.8" y2="0" layer="51"/>
<rectangle x1="1.4" y1="1" x2="2.1" y2="1.9" layer="51"/>
<rectangle x1="-3" y1="2.5" x2="-2" y2="3.5" layer="51"/>
<rectangle x1="-1.5" y1="2.5" x2="-0.5" y2="3.5" layer="51"/>
<wire x1="2.5" y1="-3.5" x2="2.5" y2="-3" width="0.127" layer="21"/>
<wire x1="-0.5" y1="-3.5" x2="-0.5" y2="-3" width="0.127" layer="21"/>
<wire x1="-0.5" y1="-3" x2="-0.75" y2="-2.75" width="0.127" layer="21"/>
<wire x1="-2.5" y1="-2" x2="-2.5" y2="-0.75" width="0.127" layer="21"/>
<wire x1="-1" y1="0" x2="-1" y2="0.25" width="0.127" layer="21"/>
<wire x1="-1" y1="0.25" x2="-0.75" y2="0.5" width="0.127" layer="21"/>
<wire x1="-0.75" y1="0.5" x2="1.5" y2="0.5" width="0.127" layer="21"/>
<wire x1="1.5" y1="0.5" x2="1.75" y2="0.75" width="0.127" layer="21"/>
<wire x1="1.75" y1="0.75" x2="1.75" y2="1" width="0.127" layer="21"/>
<wire x1="1" y1="-2" x2="1" y2="-0.75" width="0.127" layer="21"/>
<wire x1="2.5" y1="0" x2="2.5" y2="3" width="0.127" layer="21"/>
<wire x1="1.5" y1="3" x2="1.5" y2="2.75" width="0.127" layer="21"/>
<wire x1="1.5" y1="2.75" x2="1.25" y2="2.5" width="0.127" layer="21"/>
<wire x1="1.25" y1="2.5" x2="0.25" y2="1.5" width="0.127" layer="21"/>
<wire x1="0.25" y1="1.5" x2="-1.5" y2="1.5" width="0.127" layer="21"/>
<wire x1="-1.75" y1="1.75" x2="-1.75" y2="2.25" width="0.127" layer="21"/>
<wire x1="-1.75" y1="2.25" x2="-2.25" y2="2.75" width="0.127" layer="21"/>
<wire x1="-0.5" y1="3" x2="0.25" y2="3" width="0.127" layer="21"/>
<wire x1="0.25" y1="3" x2="0.5" y2="3.25" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="GENERIC-PWR">
<pin name="VCC" x="0" y="10.16" visible="pin" length="short" rot="R270"/>
<pin name="GND" x="0" y="-10.16" visible="pin" length="short" rot="R90"/>
<text x="-2.54" y="0" size="1.27" layer="95" font="vector" ratio="12" rot="R90" align="center">&gt;NAME</text>
</symbol>
<symbol name="EX2-XOR-2">
<pin name="A" x="-5.08" y="2.54" visible="off" length="short" swaplevel="1"/>
<pin name="B" x="-5.08" y="-2.54" visible="off" length="short" swaplevel="1"/>
<pin name="OUT" x="7.62" y="0" visible="off" length="short" rot="R180"/>
<wire x1="-2.54" y1="5.08" x2="0" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="5.08" y2="0" width="0.254" layer="94" curve="-90"/>
<wire x1="0" y1="-5.08" x2="-2.54" y2="-5.08" width="0.254" layer="94"/>
<text x="-0.508" y="-1.016" size="2.032" layer="94" ratio="12">XOR</text>
<wire x1="0" y1="-5.08" x2="5.08" y2="0" width="0.254" layer="94" curve="90"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="-5.08" width="0.254" layer="94" curve="-77.319617"/>
<wire x1="-2.54" y1="2.54" x2="-1.27" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-1.27" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-3.302" y1="5.08" x2="-3.302" y2="-5.08" width="0.254" layer="94" curve="-77.319617"/>
<text x="-2.54" y="5.588" size="1.778" layer="95">&gt;NAME</text>
<pin name="NOR" x="7.62" y="5.08" visible="off" length="short" rot="R180"/>
<text x="2.413" y="2.921" size="0.8128" layer="94" ratio="12" align="center">NOR</text>
<wire x1="5.08" y1="5.08" x2="3.556" y2="3.556" width="0.1524" layer="94"/>
<pin name="AND" x="7.62" y="-5.08" visible="off" length="short" rot="R180"/>
<wire x1="3.556" y1="-3.556" x2="5.08" y2="-5.08" width="0.1524" layer="94"/>
<text x="2.413" y="-2.921" size="0.8128" layer="94" ratio="12" align="center">AND</text>
</symbol>
<symbol name="OR-2">
<pin name="A" x="-5.08" y="2.54" visible="off" length="short" swaplevel="1"/>
<pin name="B" x="-5.08" y="-2.54" visible="off" length="short" swaplevel="1"/>
<pin name="OUT" x="7.62" y="0" visible="off" length="short" rot="R180"/>
<wire x1="-2.54" y1="5.08" x2="0" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="5.08" y2="0" width="0.254" layer="94" curve="-90"/>
<wire x1="0" y1="-5.08" x2="-2.54" y2="-5.08" width="0.254" layer="94"/>
<text x="0.254" y="-1.016" size="2.032" layer="94" ratio="12">OR</text>
<wire x1="0" y1="-5.08" x2="5.08" y2="0" width="0.254" layer="94" curve="90"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="-5.08" width="0.254" layer="94" curve="-77.319617"/>
<wire x1="-2.54" y1="2.54" x2="-1.27" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-1.27" y2="-2.54" width="0.1524" layer="94"/>
<text x="-2.54" y="5.588" size="1.778" layer="95">&gt;NAME</text>
</symbol>
<symbol name="NOT">
<pin name="IN" x="-5.08" y="0" visible="off" length="short"/>
<pin name="OUT" x="5.08" y="0" visible="off" length="point" rot="R180"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<circle x="3.048" y="0" radius="0.508" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="3.556" y2="0" width="0.1524" layer="94"/>
<text x="-2.54" y="3.048" size="1.778" layer="95">&gt;NAME</text>
</symbol>
<symbol name="XOR-2">
<pin name="A" x="-5.08" y="2.54" visible="off" length="short" swaplevel="1"/>
<pin name="B" x="-5.08" y="-2.54" visible="off" length="short" swaplevel="1"/>
<pin name="OUT" x="7.62" y="0" visible="off" length="short" rot="R180"/>
<wire x1="-2.54" y1="5.08" x2="0" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="5.08" y2="0" width="0.254" layer="94" curve="-90"/>
<wire x1="0" y1="-5.08" x2="-2.54" y2="-5.08" width="0.254" layer="94"/>
<text x="-0.508" y="-1.016" size="2.032" layer="94" ratio="12">XOR</text>
<wire x1="0" y1="-5.08" x2="5.08" y2="0" width="0.254" layer="94" curve="90"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="-5.08" width="0.254" layer="94" curve="-77.319617"/>
<wire x1="-2.54" y1="2.54" x2="-1.27" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-1.27" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-3.302" y1="5.08" x2="-3.302" y2="-5.08" width="0.254" layer="94" curve="-77.319617"/>
<text x="-2.54" y="5.588" size="1.778" layer="95">&gt;NAME</text>
</symbol>
<symbol name="AND-2_INPUT">
<pin name="A" x="-5.08" y="2.54" visible="off" length="short" swaplevel="1"/>
<pin name="B" x="-5.08" y="-2.54" visible="off" length="short" swaplevel="1"/>
<pin name="OUT" x="7.62" y="0" visible="off" length="short" rot="R180"/>
<wire x1="-2.54" y1="-5.08" x2="-2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="0" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="5.08" y2="0" width="0.254" layer="94" curve="-90"/>
<wire x1="0" y1="-5.08" x2="-2.54" y2="-5.08" width="0.254" layer="94"/>
<text x="0.254" y="-1.016" size="2.54" layer="94" ratio="12">&amp;</text>
<wire x1="0" y1="-5.08" x2="5.08" y2="0" width="0.254" layer="94" curve="90"/>
<text x="-2.54" y="5.588" size="1.778" layer="95">&gt;NAME</text>
</symbol>
<symbol name="SELECTOR-8_BIT-NOMUX">
<pin name="IN1" x="-10.16" y="27.94" visible="off" length="short" swaplevel="1"/>
<pin name="IN2" x="-10.16" y="20.32" visible="off" length="short" swaplevel="1"/>
<pin name="IN3" x="-10.16" y="12.7" visible="off" length="short" swaplevel="1"/>
<pin name="IN4" x="-10.16" y="5.08" visible="off" length="short" swaplevel="1"/>
<pin name="IN5" x="-10.16" y="-2.54" visible="off" length="short" swaplevel="1"/>
<pin name="IN6" x="-10.16" y="-10.16" visible="off" length="short" swaplevel="1"/>
<pin name="IN7" x="-10.16" y="-17.78" visible="off" length="short" swaplevel="1"/>
<pin name="IN8" x="-10.16" y="-25.4" visible="off" length="short" swaplevel="1"/>
<pin name="SEL1" x="-10.16" y="25.4" visible="off" length="short" swaplevel="2"/>
<pin name="SEL2" x="-10.16" y="17.78" visible="off" length="short" swaplevel="2"/>
<pin name="SEL3" x="-10.16" y="10.16" visible="off" length="short" swaplevel="2"/>
<pin name="SEL4" x="-10.16" y="2.54" visible="off" length="short" swaplevel="2"/>
<pin name="SEL5" x="-10.16" y="-5.08" visible="off" length="short" swaplevel="2"/>
<pin name="SEL6" x="-10.16" y="-12.7" visible="off" length="short" swaplevel="2"/>
<pin name="SEL7" x="-10.16" y="-20.32" visible="off" length="short" swaplevel="2"/>
<pin name="SEL8" x="-10.16" y="-27.94" visible="off" length="short" swaplevel="2"/>
<wire x1="-7.62" y1="30.48" x2="-7.62" y2="27.94" width="0.254" layer="94"/>
<wire x1="-7.62" y1="27.94" x2="-7.62" y2="25.4" width="0.254" layer="94"/>
<wire x1="-7.62" y1="25.4" x2="-7.62" y2="-30.48" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-30.48" x2="5.08" y2="-30.48" width="0.254" layer="94"/>
<wire x1="5.08" y1="-30.48" x2="5.08" y2="-27.94" width="0.254" layer="94"/>
<wire x1="5.08" y1="-27.94" x2="5.08" y2="30.48" width="0.254" layer="94"/>
<wire x1="5.08" y1="30.48" x2="-7.62" y2="30.48" width="0.254" layer="94"/>
<wire x1="-7.62" y1="27.94" x2="-5.08" y2="27.94" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="25.4" x2="-3.81" y2="25.4" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="25.4" x2="-3.81" y2="26.67" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="26.67" x2="-5.08" y2="26.67" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="26.67" x2="-2.54" y2="26.67" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="27.94" x2="0" y2="27.94" width="0.1524" layer="94"/>
<wire x1="0" y1="27.94" x2="0" y2="-27.94" width="0.1524" layer="94"/>
<wire x1="0" y1="-27.94" x2="5.08" y2="-27.94" width="0.1524" layer="94"/>
<circle x="-5.08" y="27.94" radius="0.127" width="0.254" layer="94"/>
<circle x="-2.54" y="27.94" radius="0.127" width="0.254" layer="94"/>
<circle x="-3.81" y="26.67" radius="0.127" width="0.254" layer="94"/>
<wire x1="-7.62" y1="20.32" x2="-5.08" y2="20.32" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="17.78" x2="-3.81" y2="17.78" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="17.78" x2="-3.81" y2="19.05" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="19.05" x2="-5.08" y2="19.05" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="19.05" x2="-2.54" y2="19.05" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="20.32" x2="0" y2="20.32" width="0.1524" layer="94"/>
<circle x="-5.08" y="20.32" radius="0.127" width="0.254" layer="94"/>
<circle x="-2.54" y="20.32" radius="0.127" width="0.254" layer="94"/>
<circle x="-3.81" y="19.05" radius="0.127" width="0.254" layer="94"/>
<wire x1="-7.62" y1="12.7" x2="-5.08" y2="12.7" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="10.16" x2="-3.81" y2="10.16" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="10.16" x2="-3.81" y2="11.43" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="11.43" x2="-5.08" y2="11.43" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="11.43" x2="-2.54" y2="11.43" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="12.7" x2="0" y2="12.7" width="0.1524" layer="94"/>
<circle x="-5.08" y="12.7" radius="0.127" width="0.254" layer="94"/>
<circle x="-2.54" y="12.7" radius="0.127" width="0.254" layer="94"/>
<circle x="-3.81" y="11.43" radius="0.127" width="0.254" layer="94"/>
<wire x1="-7.62" y1="5.08" x2="-5.08" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="2.54" x2="-3.81" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="2.54" x2="-3.81" y2="3.81" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="3.81" x2="-5.08" y2="3.81" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="3.81" x2="-2.54" y2="3.81" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="0" y2="5.08" width="0.1524" layer="94"/>
<circle x="-5.08" y="5.08" radius="0.127" width="0.254" layer="94"/>
<circle x="-2.54" y="5.08" radius="0.127" width="0.254" layer="94"/>
<circle x="-3.81" y="3.81" radius="0.127" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-2.54" x2="-5.08" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="-3.81" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="-5.08" x2="-3.81" y2="-3.81" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="-3.81" x2="-5.08" y2="-3.81" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="-3.81" x2="-2.54" y2="-3.81" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<circle x="-5.08" y="-2.54" radius="0.127" width="0.254" layer="94"/>
<circle x="-2.54" y="-2.54" radius="0.127" width="0.254" layer="94"/>
<circle x="-3.81" y="-3.81" radius="0.127" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-10.16" x2="-5.08" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="-12.7" x2="-3.81" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="-12.7" x2="-3.81" y2="-11.43" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="-11.43" x2="-5.08" y2="-11.43" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="-11.43" x2="-2.54" y2="-11.43" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-10.16" x2="0" y2="-10.16" width="0.1524" layer="94"/>
<circle x="-5.08" y="-10.16" radius="0.127" width="0.254" layer="94"/>
<circle x="-2.54" y="-10.16" radius="0.127" width="0.254" layer="94"/>
<circle x="-3.81" y="-11.43" radius="0.127" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-17.78" x2="-5.08" y2="-17.78" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="-20.32" x2="-3.81" y2="-20.32" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="-20.32" x2="-3.81" y2="-19.05" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="-19.05" x2="-5.08" y2="-19.05" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="-19.05" x2="-2.54" y2="-19.05" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-17.78" x2="0" y2="-17.78" width="0.1524" layer="94"/>
<circle x="-5.08" y="-17.78" radius="0.127" width="0.254" layer="94"/>
<circle x="-2.54" y="-17.78" radius="0.127" width="0.254" layer="94"/>
<circle x="-3.81" y="-19.05" radius="0.127" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-25.4" x2="-5.08" y2="-25.4" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="-27.94" x2="-3.81" y2="-27.94" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="-27.94" x2="-3.81" y2="-26.67" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="-26.67" x2="-5.08" y2="-26.67" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="-26.67" x2="-2.54" y2="-26.67" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-25.4" x2="0" y2="-25.4" width="0.1524" layer="94"/>
<circle x="-5.08" y="-25.4" radius="0.127" width="0.254" layer="94"/>
<circle x="-2.54" y="-25.4" radius="0.127" width="0.254" layer="94"/>
<circle x="-3.81" y="-26.67" radius="0.127" width="0.254" layer="94"/>
<circle x="0" y="20.32" radius="0.127" width="0.254" layer="94"/>
<circle x="0" y="12.7" radius="0.127" width="0.254" layer="94"/>
<circle x="0" y="5.08" radius="0.127" width="0.254" layer="94"/>
<circle x="0" y="-2.54" radius="0.127" width="0.254" layer="94"/>
<circle x="0" y="-10.16" radius="0.127" width="0.254" layer="94"/>
<circle x="0" y="-17.78" radius="0.127" width="0.254" layer="94"/>
<circle x="0" y="-25.4" radius="0.127" width="0.254" layer="94"/>
<pin name="OUT" x="7.62" y="-27.94" visible="off" length="short" rot="R180"/>
<text x="-7.62" y="30.988" size="1.27" layer="95" ratio="12">&gt;NAME</text>
</symbol>
<symbol name="SELECTOR-2_LANES-MUXED">
<pin name="IN1" x="-7.62" y="0" visible="off" length="short" swaplevel="1"/>
<pin name="IN2" x="-7.62" y="-5.08" visible="off" length="short" swaplevel="1"/>
<pin name="SEL" x="-7.62" y="5.08" visible="off" length="short" swaplevel="2"/>
<pin name="OUT" x="7.62" y="-2.54" visible="off" length="short" rot="R180"/>
<text x="-2.54" y="8.128" size="1.27" layer="95" ratio="12">&gt;NAME</text>
<wire x1="5.08" y1="-2.54" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="-3.175" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-5.08" y1="0" x2="-2.54" y2="0" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="-2.54" y2="-5.08" width="0.254" layer="94"/>
<circle x="-2.54" y="0" radius="0.254" width="0.254" layer="94"/>
<circle x="-2.54" y="-5.08" radius="0.254" width="0.254" layer="94"/>
<circle x="-3.175" y="-1.27" radius="0.254" width="0.254" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="0" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-5.08" y1="7.62" x2="-5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-7.62" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="-7.62" x2="5.08" y2="7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="7.62" x2="-5.08" y2="7.62" width="0.254" layer="94"/>
</symbol>
<symbol name="NAND-2">
<pin name="A" x="-5.08" y="2.54" visible="off" length="short" swaplevel="1"/>
<pin name="B" x="-5.08" y="-2.54" visible="off" length="short" swaplevel="1"/>
<pin name="OUT" x="7.62" y="0" visible="off" length="point" rot="R180"/>
<wire x1="-2.54" y1="-5.08" x2="-2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="0" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="5.08" y2="0" width="0.254" layer="94" curve="-90"/>
<wire x1="0" y1="-5.08" x2="-2.54" y2="-5.08" width="0.254" layer="94"/>
<text x="0.254" y="-1.016" size="2.54" layer="94" ratio="12">&amp;</text>
<wire x1="0" y1="-5.08" x2="5.08" y2="0" width="0.254" layer="94" curve="90"/>
<circle x="5.588" y="0" radius="0.359209375" width="0.254" layer="94"/>
<wire x1="7.62" y1="0" x2="6.096" y2="0" width="0.1524" layer="94"/>
<text x="-2.54" y="5.588" size="1.778" layer="95">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="EX-XOR" prefix="XOR">
<gates>
<gate name="_PWR" symbol="GENERIC-PWR" x="-15.24" y="0"/>
<gate name="-G" symbol="EX2-XOR-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="XOR-2-EX2">
<connects>
<connect gate="-G" pin="A" pad="A"/>
<connect gate="-G" pin="AND" pad="OUT2"/>
<connect gate="-G" pin="B" pad="B"/>
<connect gate="-G" pin="NOR" pad="OUT3"/>
<connect gate="-G" pin="OUT" pad="OUT4"/>
<connect gate="_PWR" pin="GND" pad="OUT5"/>
<connect gate="_PWR" pin="VCC" pad="OUT1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="OR" prefix="OR">
<gates>
<gate name="-G" symbol="OR-2" x="0" y="0"/>
<gate name="_PWR" symbol="GENERIC-PWR" x="-15.24" y="0"/>
</gates>
<devices>
<device name="" package="OR-2">
<connects>
<connect gate="-G" pin="A" pad="A"/>
<connect gate="-G" pin="B" pad="B"/>
<connect gate="-G" pin="OUT" pad="OUT1"/>
<connect gate="_PWR" pin="GND" pad="OUT2"/>
<connect gate="_PWR" pin="VCC" pad="OUT3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="NOT" prefix="NOT">
<gates>
<gate name="-G" symbol="NOT" x="0" y="0"/>
<gate name="_PWR" symbol="GENERIC-PWR" x="-15.24" y="2.54"/>
</gates>
<devices>
<device name="-HORIZONTAL" package="NOT-HORIZONTAL">
<connects>
<connect gate="-G" pin="IN" pad="IN"/>
<connect gate="-G" pin="OUT" pad="OUT3"/>
<connect gate="_PWR" pin="GND" pad="OUT1"/>
<connect gate="_PWR" pin="VCC" pad="OUT2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-VERTICAL" package="NOT-VERTICAL">
<connects>
<connect gate="-G" pin="IN" pad="IN"/>
<connect gate="-G" pin="OUT" pad="OUT1"/>
<connect gate="_PWR" pin="GND" pad="OUT2"/>
<connect gate="_PWR" pin="VCC" pad="OUT3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="XOR" prefix="XOR">
<gates>
<gate name="-G" symbol="XOR-2" x="0" y="0"/>
<gate name="_PWR" symbol="GENERIC-PWR" x="-12.7" y="0"/>
</gates>
<devices>
<device name="" package="XOR-2-EX2">
<connects>
<connect gate="-G" pin="A" pad="A"/>
<connect gate="-G" pin="B" pad="B"/>
<connect gate="-G" pin="OUT" pad="OUT4"/>
<connect gate="_PWR" pin="GND" pad="OUT5"/>
<connect gate="_PWR" pin="VCC" pad="OUT1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="AND" prefix="AND">
<gates>
<gate name="-G" symbol="AND-2_INPUT" x="2.54" y="5.08"/>
<gate name="_PWR" symbol="GENERIC-PWR" x="-12.7" y="5.08"/>
</gates>
<devices>
<device name="-1SIDED" package="AND">
<connects>
<connect gate="-G" pin="A" pad="A"/>
<connect gate="-G" pin="B" pad="B"/>
<connect gate="-G" pin="OUT" pad="OUT1"/>
<connect gate="_PWR" pin="GND" pad="OUT2"/>
<connect gate="_PWR" pin="VCC" pad="OUT3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-UNBUF" package="AND-2-UNBUF">
<connects>
<connect gate="-G" pin="A" pad="B"/>
<connect gate="-G" pin="B" pad="A"/>
<connect gate="-G" pin="OUT" pad="OUT2"/>
<connect gate="_PWR" pin="GND" pad="OUT1"/>
<connect gate="_PWR" pin="VCC" pad="OUT3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SELECTOR" prefix="SEL">
<gates>
<gate name="-G" symbol="SELECTOR-8_BIT-NOMUX" x="0" y="0"/>
<gate name="-PWR" symbol="GENERIC-PWR" x="-17.78" y="0"/>
</gates>
<devices>
<device name="" package="SELECTOR-8_BIT-NOMUX">
<connects>
<connect gate="-G" pin="IN1" pad="IN1"/>
<connect gate="-G" pin="IN2" pad="IN2"/>
<connect gate="-G" pin="IN3" pad="IN3"/>
<connect gate="-G" pin="IN4" pad="IN4"/>
<connect gate="-G" pin="IN5" pad="IN5"/>
<connect gate="-G" pin="IN6" pad="IN6"/>
<connect gate="-G" pin="IN7" pad="IN7"/>
<connect gate="-G" pin="IN8" pad="IN8"/>
<connect gate="-G" pin="OUT" pad="OUT"/>
<connect gate="-G" pin="SEL1" pad="SEL1"/>
<connect gate="-G" pin="SEL2" pad="SEL2"/>
<connect gate="-G" pin="SEL3" pad="SEL3"/>
<connect gate="-G" pin="SEL4" pad="SEL4"/>
<connect gate="-G" pin="SEL5" pad="SEL5"/>
<connect gate="-G" pin="SEL6" pad="SEL6"/>
<connect gate="-G" pin="SEL7" pad="SEL7"/>
<connect gate="-G" pin="SEL8" pad="SEL8"/>
<connect gate="-PWR" pin="GND" pad="GND"/>
<connect gate="-PWR" pin="VCC" pad="V+"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SELECTOR-2_LANES" prefix="SEL" uservalue="yes">
<gates>
<gate name="-G" symbol="SELECTOR-2_LANES-MUXED" x="0" y="0"/>
<gate name="-PWR" symbol="GENERIC-PWR" x="-20.32" y="0"/>
</gates>
<devices>
<device name="" package="SELECTOR-2-LANE-NOMUX">
<connects>
<connect gate="-G" pin="IN1" pad="IN1"/>
<connect gate="-G" pin="IN2" pad="IN2"/>
<connect gate="-G" pin="OUT" pad="OUT"/>
<connect gate="-G" pin="SEL" pad="SEL"/>
<connect gate="-PWR" pin="GND" pad="GND"/>
<connect gate="-PWR" pin="VCC" pad="V+"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="NAND" prefix="NAND">
<gates>
<gate name="-G" symbol="NAND-2" x="0" y="0"/>
<gate name="_PWR" symbol="GENERIC-PWR" x="-12.7" y="2.54"/>
</gates>
<devices>
<device name="" package="NAND-2">
<connects>
<connect gate="-G" pin="A" pad="B"/>
<connect gate="-G" pin="B" pad="A"/>
<connect gate="-G" pin="OUT" pad="OUT2"/>
<connect gate="_PWR" pin="GND" pad="OUT3"/>
<connect gate="_PWR" pin="VCC" pad="OUT1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="+5V">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+5V" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="XOR1" library="p.peter-logic" deviceset="EX-XOR" device=""/>
<part name="XOR2" library="p.peter-logic" deviceset="EX-XOR" device=""/>
<part name="OR1" library="p.peter-logic" deviceset="OR" device=""/>
<part name="P+1" library="supply1" deviceset="+5V" device=""/>
<part name="P+2" library="supply1" deviceset="+5V" device=""/>
<part name="P+3" library="supply1" deviceset="+5V" device=""/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="NOT1" library="p.peter-logic" deviceset="NOT" device="-VERTICAL"/>
<part name="P+4" library="supply1" deviceset="+5V" device=""/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
<part name="P+5" library="supply1" deviceset="+5V" device=""/>
<part name="GND5" library="supply1" deviceset="GND" device=""/>
<part name="XOR3" library="p.peter-logic" deviceset="XOR" device=""/>
<part name="XOR4" library="p.peter-logic" deviceset="XOR" device=""/>
<part name="P+6" library="supply1" deviceset="+5V" device=""/>
<part name="GND6" library="supply1" deviceset="GND" device=""/>
<part name="AND1" library="p.peter-logic" deviceset="AND" device="-UNBUF"/>
<part name="GND7" library="supply1" deviceset="GND" device=""/>
<part name="GND8" library="supply1" deviceset="GND" device=""/>
<part name="P+7" library="supply1" deviceset="+5V" device=""/>
<part name="P+8" library="supply1" deviceset="+5V" device=""/>
<part name="AND2" library="p.peter-logic" deviceset="AND" device="-UNBUF"/>
<part name="NOT2" library="p.peter-logic" deviceset="NOT" device="-VERTICAL"/>
<part name="P+9" library="supply1" deviceset="+5V" device=""/>
<part name="GND9" library="supply1" deviceset="GND" device=""/>
<part name="SEL1" library="p.peter-logic" deviceset="SELECTOR" device=""/>
<part name="P+10" library="supply1" deviceset="+5V" device=""/>
<part name="GND10" library="supply1" deviceset="GND" device=""/>
<part name="OR2" library="p.peter-logic" deviceset="OR" device=""/>
<part name="P+11" library="supply1" deviceset="+5V" device=""/>
<part name="GND11" library="supply1" deviceset="GND" device=""/>
<part name="SEL2" library="p.peter-logic" deviceset="SELECTOR-2_LANES" device=""/>
<part name="P+12" library="supply1" deviceset="+5V" device=""/>
<part name="GND12" library="supply1" deviceset="GND" device=""/>
<part name="NAND1" library="p.peter-logic" deviceset="NAND" device=""/>
<part name="P+13" library="supply1" deviceset="+5V" device=""/>
<part name="GND13" library="supply1" deviceset="GND" device=""/>
<part name="SEL3" library="p.peter-logic" deviceset="SELECTOR-2_LANES" device=""/>
<part name="P+14" library="supply1" deviceset="+5V" device=""/>
<part name="GND14" library="supply1" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="-81.28" y="22.86" size="2.54" layer="97" ratio="12">XNOR = CMP</text>
<text x="-81.28" y="15.24" size="2.54" layer="97" ratio="12">A and /B = More
A nor /B = Less</text>
<text x="-81.28" y="10.16" size="2.54" layer="97" ratio="12">JUMPER for carry = 1 on Sub</text>
<text x="-81.28" y="-17.78" size="2.54" layer="97" ratio="12">All slices identical
- all have left / right in
- all output overflow
- all output carry
- all output equal state
only difference in backplane</text>
<text x="27.94" y="-15.24" size="2.54" layer="97" ratio="12">Inputs:
- A
- B
- Left in
- Right in
- Equal

Outputs:
- Result
- Left out
- Right out
- Carry
- Overflow
- Equal
</text>
<text x="58.42" y="17.78" size="2.54" layer="97" ratio="12">COMPARE:

Subtract A - B

EQUAL = NOT(OR(sum))
LESS = sign
MORE = LESS NAND EQUAL</text>
<text x="58.42" y="-15.24" size="2.54" layer="97" ratio="12">OVERFLOW:

Most signifigant bits are equal, carry bit is different
A NAND B NAND NOT(sum)
NOR
NOT(A) NAND NOT(B) NAND sum

calculated offsite</text>
</plain>
<instances>
<instance part="XOR1" gate="_PWR" x="-96.52" y="111.76"/>
<instance part="XOR1" gate="-G" x="-5.08" y="132.08" rot="MR180"/>
<instance part="XOR2" gate="-G" x="22.86" y="119.38" rot="MR180"/>
<instance part="OR1" gate="-G" x="38.1" y="127"/>
<instance part="OR1" gate="_PWR" x="-111.76" y="147.32"/>
<instance part="XOR2" gate="_PWR" x="-91.44" y="111.76"/>
<instance part="P+1" gate="1" x="-91.44" y="127"/>
<instance part="P+2" gate="1" x="-96.52" y="127"/>
<instance part="P+3" gate="1" x="-111.76" y="162.56"/>
<instance part="GND1" gate="1" x="-111.76" y="132.08"/>
<instance part="GND2" gate="1" x="-96.52" y="96.52"/>
<instance part="GND3" gate="1" x="-91.44" y="96.52"/>
<instance part="NOT1" gate="-G" x="12.7" y="142.24"/>
<instance part="NOT1" gate="_PWR" x="-96.52" y="147.32"/>
<instance part="P+4" gate="1" x="-96.52" y="162.56"/>
<instance part="GND4" gate="1" x="-96.52" y="132.08"/>
<instance part="P+5" gate="1" x="-86.36" y="127"/>
<instance part="GND5" gate="1" x="-86.36" y="96.52"/>
<instance part="XOR3" gate="-G" x="-27.94" y="124.46"/>
<instance part="XOR3" gate="_PWR" x="-86.36" y="111.76"/>
<instance part="XOR4" gate="-G" x="-5.08" y="48.26"/>
<instance part="XOR4" gate="_PWR" x="-81.28" y="111.76"/>
<instance part="P+6" gate="1" x="-81.28" y="127"/>
<instance part="GND6" gate="1" x="-81.28" y="96.52"/>
<instance part="AND1" gate="_PWR" x="-111.76" y="111.76"/>
<instance part="GND7" gate="1" x="-111.76" y="96.52"/>
<instance part="GND8" gate="1" x="-106.68" y="96.52"/>
<instance part="P+7" gate="1" x="-111.76" y="127"/>
<instance part="P+8" gate="1" x="-106.68" y="127"/>
<instance part="NOT2" gate="_PWR" x="-91.44" y="147.32"/>
<instance part="AND2" gate="_PWR" x="-106.68" y="111.76"/>
<instance part="P+9" gate="1" x="-91.44" y="162.56"/>
<instance part="GND9" gate="1" x="-91.44" y="132.08"/>
<instance part="SEL1" gate="-G" x="-22.86" y="78.74"/>
<instance part="SEL1" gate="-PWR" x="-81.28" y="147.32"/>
<instance part="P+10" gate="1" x="-81.28" y="162.56"/>
<instance part="GND10" gate="1" x="-81.28" y="132.08"/>
<instance part="OR2" gate="-G" x="25.4" y="93.98"/>
<instance part="OR2" gate="_PWR" x="-106.68" y="147.32"/>
<instance part="P+11" gate="1" x="-106.68" y="162.56"/>
<instance part="GND11" gate="1" x="-106.68" y="132.08"/>
<instance part="SEL2" gate="-G" x="-58.42" y="71.12"/>
<instance part="SEL2" gate="-PWR" x="-86.36" y="147.32"/>
<instance part="P+12" gate="1" x="-86.36" y="162.56"/>
<instance part="GND12" gate="1" x="-86.36" y="132.08"/>
<instance part="NAND1" gate="-G" x="-25.4" y="38.1"/>
<instance part="NAND1" gate="_PWR" x="-111.76" y="76.2"/>
<instance part="NOT2" gate="-G" x="-38.1" y="40.64"/>
<instance part="P+13" gate="1" x="-111.76" y="91.44"/>
<instance part="GND13" gate="1" x="-111.76" y="60.96"/>
<instance part="SEL3" gate="-G" x="27.94" y="73.66"/>
<instance part="SEL3" gate="-PWR" x="-106.68" y="76.2"/>
<instance part="P+14" gate="1" x="-106.68" y="91.44"/>
<instance part="GND14" gate="1" x="-106.68" y="60.96"/>
</instances>
<busses>
</busses>
<nets>
<net name="A" class="0">
<segment>
<pinref part="XOR1" gate="-G" pin="B"/>
<wire x1="-10.16" y1="134.62" x2="-35.56" y2="134.62" width="0.1524" layer="91"/>
<label x="-35.56" y="134.62" size="1.27" layer="95" ratio="12" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="SEL1" gate="-G" pin="IN1"/>
<wire x1="-33.02" y1="106.68" x2="-35.56" y2="106.68" width="0.1524" layer="91"/>
<label x="-35.56" y="106.68" size="1.27" layer="95" ratio="12" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="SEL3" gate="-G" pin="IN2"/>
<wire x1="20.32" y1="68.58" x2="17.78" y2="68.58" width="0.1524" layer="91"/>
<label x="17.78" y="68.58" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="XOR" class="0">
<segment>
<pinref part="XOR1" gate="-G" pin="OUT"/>
<wire x1="2.54" y1="132.08" x2="15.24" y2="132.08" width="0.1524" layer="91"/>
<wire x1="15.24" y1="132.08" x2="15.24" y2="121.92" width="0.1524" layer="91"/>
<pinref part="XOR2" gate="-G" pin="B"/>
<wire x1="15.24" y1="121.92" x2="17.78" y2="121.92" width="0.1524" layer="91"/>
<wire x1="15.24" y1="132.08" x2="17.78" y2="132.08" width="0.1524" layer="91"/>
<junction x="15.24" y="132.08"/>
<label x="17.78" y="132.08" size="1.27" layer="95" ratio="12" xref="yes"/>
</segment>
<segment>
<pinref part="SEL1" gate="-G" pin="IN4"/>
<wire x1="-33.02" y1="83.82" x2="-35.56" y2="83.82" width="0.1524" layer="91"/>
<label x="-35.56" y="83.82" size="1.27" layer="95" ratio="12" rot="R180" xref="yes"/>
</segment>
</net>
<net name="CARRY_IN" class="0">
<segment>
<pinref part="XOR2" gate="-G" pin="A"/>
<wire x1="17.78" y1="116.84" x2="-35.56" y2="116.84" width="0.1524" layer="91"/>
<label x="-35.56" y="116.84" size="1.27" layer="95" ratio="12" rot="R180" xref="yes"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="XOR1" gate="-G" pin="AND"/>
<wire x1="2.54" y1="137.16" x2="5.08" y2="137.16" width="0.1524" layer="91"/>
<wire x1="5.08" y1="137.16" x2="30.48" y2="137.16" width="0.1524" layer="91"/>
<wire x1="30.48" y1="137.16" x2="30.48" y2="129.54" width="0.1524" layer="91"/>
<wire x1="30.48" y1="129.54" x2="33.02" y2="129.54" width="0.1524" layer="91"/>
<pinref part="OR1" gate="-G" pin="A"/>
<wire x1="5.08" y1="137.16" x2="5.08" y2="139.7" width="0.1524" layer="91"/>
<wire x1="5.08" y1="139.7" x2="5.08" y2="142.24" width="0.1524" layer="91"/>
<wire x1="5.08" y1="142.24" x2="7.62" y2="142.24" width="0.1524" layer="91"/>
<junction x="5.08" y="137.16"/>
<pinref part="NOT1" gate="-G" pin="IN"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="XOR2" gate="-G" pin="AND"/>
<wire x1="30.48" y1="124.46" x2="33.02" y2="124.46" width="0.1524" layer="91"/>
<wire x1="33.02" y1="124.46" x2="30.48" y2="124.46" width="0.1524" layer="91"/>
<wire x1="30.48" y1="124.46" x2="33.02" y2="124.46" width="0.1524" layer="91"/>
<pinref part="OR1" gate="-G" pin="B"/>
</segment>
</net>
<net name="SUM" class="0">
<segment>
<pinref part="OR1" gate="-G" pin="OUT"/>
<wire x1="45.72" y1="127" x2="48.26" y2="127" width="0.1524" layer="91"/>
<label x="48.26" y="127" size="1.27" layer="95" ratio="12" xref="yes"/>
</segment>
<segment>
<pinref part="SEL1" gate="-G" pin="IN5"/>
<wire x1="-33.02" y1="76.2" x2="-35.56" y2="76.2" width="0.1524" layer="91"/>
<label x="-35.56" y="76.2" size="1.27" layer="95" ratio="12" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="OR2" gate="-G" pin="A"/>
<wire x1="20.32" y1="96.52" x2="17.78" y2="96.52" width="0.1524" layer="91"/>
<label x="17.78" y="96.52" size="1.27" layer="95" ratio="12" rot="R180" xref="yes"/>
</segment>
</net>
<net name="CARRY" class="0">
<segment>
<pinref part="XOR2" gate="-G" pin="OUT"/>
<wire x1="30.48" y1="119.38" x2="48.26" y2="119.38" width="0.1524" layer="91"/>
<label x="48.26" y="119.38" size="1.27" layer="95" ratio="12" xref="yes"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="XOR2" gate="_PWR" pin="VCC"/>
<pinref part="P+1" gate="1" pin="+5V"/>
<wire x1="-91.44" y1="124.46" x2="-91.44" y2="121.92" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="XOR1" gate="_PWR" pin="VCC"/>
<pinref part="P+2" gate="1" pin="+5V"/>
<wire x1="-96.52" y1="121.92" x2="-96.52" y2="124.46" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="OR1" gate="_PWR" pin="VCC"/>
<pinref part="P+3" gate="1" pin="+5V"/>
<wire x1="-111.76" y1="160.02" x2="-111.76" y2="157.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="NOT1" gate="_PWR" pin="VCC"/>
<pinref part="P+4" gate="1" pin="+5V"/>
<wire x1="-96.52" y1="160.02" x2="-96.52" y2="157.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+5" gate="1" pin="+5V"/>
<wire x1="-86.36" y1="124.46" x2="-86.36" y2="121.92" width="0.1524" layer="91"/>
<pinref part="XOR3" gate="_PWR" pin="VCC"/>
</segment>
<segment>
<pinref part="XOR4" gate="_PWR" pin="VCC"/>
<pinref part="P+6" gate="1" pin="+5V"/>
<wire x1="-81.28" y1="124.46" x2="-81.28" y2="121.92" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="AND1" gate="_PWR" pin="VCC"/>
<pinref part="P+7" gate="1" pin="+5V"/>
<wire x1="-111.76" y1="124.46" x2="-111.76" y2="121.92" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+8" gate="1" pin="+5V"/>
<wire x1="-106.68" y1="124.46" x2="-106.68" y2="121.92" width="0.1524" layer="91"/>
<pinref part="AND2" gate="_PWR" pin="VCC"/>
</segment>
<segment>
<pinref part="NOT2" gate="_PWR" pin="VCC"/>
<pinref part="P+9" gate="1" pin="+5V"/>
<wire x1="-91.44" y1="160.02" x2="-91.44" y2="157.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SEL1" gate="-PWR" pin="VCC"/>
<pinref part="P+10" gate="1" pin="+5V"/>
<wire x1="-81.28" y1="160.02" x2="-81.28" y2="157.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="OR2" gate="_PWR" pin="VCC"/>
<pinref part="P+11" gate="1" pin="+5V"/>
<wire x1="-106.68" y1="160.02" x2="-106.68" y2="157.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SEL2" gate="-PWR" pin="VCC"/>
<pinref part="P+12" gate="1" pin="+5V"/>
<wire x1="-86.36" y1="160.02" x2="-86.36" y2="157.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="NAND1" gate="_PWR" pin="VCC"/>
<pinref part="P+13" gate="1" pin="+5V"/>
<wire x1="-111.76" y1="86.36" x2="-111.76" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SEL3" gate="-PWR" pin="VCC"/>
<pinref part="P+14" gate="1" pin="+5V"/>
<wire x1="-106.68" y1="88.9" x2="-106.68" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="OR1" gate="_PWR" pin="GND"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="-111.76" y1="137.16" x2="-111.76" y2="134.62" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="XOR1" gate="_PWR" pin="GND"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="-96.52" y1="101.6" x2="-96.52" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="XOR2" gate="_PWR" pin="GND"/>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="-91.44" y1="101.6" x2="-91.44" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="NOT1" gate="_PWR" pin="GND"/>
<pinref part="GND4" gate="1" pin="GND"/>
<wire x1="-96.52" y1="134.62" x2="-96.52" y2="137.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND5" gate="1" pin="GND"/>
<wire x1="-86.36" y1="99.06" x2="-86.36" y2="101.6" width="0.1524" layer="91"/>
<pinref part="XOR3" gate="_PWR" pin="GND"/>
</segment>
<segment>
<pinref part="XOR4" gate="_PWR" pin="GND"/>
<pinref part="GND6" gate="1" pin="GND"/>
<wire x1="-81.28" y1="99.06" x2="-81.28" y2="101.6" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="AND1" gate="_PWR" pin="GND"/>
<pinref part="GND7" gate="1" pin="GND"/>
<wire x1="-111.76" y1="99.06" x2="-111.76" y2="101.6" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND8" gate="1" pin="GND"/>
<wire x1="-106.68" y1="99.06" x2="-106.68" y2="101.6" width="0.1524" layer="91"/>
<pinref part="AND2" gate="_PWR" pin="GND"/>
</segment>
<segment>
<pinref part="NOT2" gate="_PWR" pin="GND"/>
<pinref part="GND9" gate="1" pin="GND"/>
<wire x1="-91.44" y1="134.62" x2="-91.44" y2="137.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SEL1" gate="-PWR" pin="GND"/>
<pinref part="GND10" gate="1" pin="GND"/>
<wire x1="-81.28" y1="137.16" x2="-81.28" y2="134.62" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="OR2" gate="_PWR" pin="GND"/>
<pinref part="GND11" gate="1" pin="GND"/>
<wire x1="-106.68" y1="134.62" x2="-106.68" y2="137.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SEL2" gate="-PWR" pin="GND"/>
<pinref part="GND12" gate="1" pin="GND"/>
<wire x1="-86.36" y1="134.62" x2="-86.36" y2="137.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="NAND1" gate="_PWR" pin="GND"/>
<pinref part="GND13" gate="1" pin="GND"/>
<wire x1="-111.76" y1="63.5" x2="-111.76" y2="66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SEL3" gate="-PWR" pin="GND"/>
<pinref part="GND14" gate="1" pin="GND"/>
<wire x1="-106.68" y1="63.5" x2="-106.68" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="NOR" class="0">
<segment>
<pinref part="XOR1" gate="-G" pin="NOR"/>
<wire x1="2.54" y1="127" x2="5.08" y2="127" width="0.1524" layer="91"/>
<label x="5.08" y="127" size="1.27" layer="95" ratio="12" xref="yes"/>
</segment>
<segment>
<pinref part="SEL1" gate="-G" pin="IN3"/>
<wire x1="-33.02" y1="91.44" x2="-35.56" y2="91.44" width="0.1524" layer="91"/>
<label x="-35.56" y="91.44" size="1.27" layer="95" ratio="12" rot="R180" xref="yes"/>
</segment>
</net>
<net name="NAND" class="0">
<segment>
<pinref part="NOT1" gate="-G" pin="OUT"/>
<wire x1="17.78" y1="142.24" x2="20.32" y2="142.24" width="0.1524" layer="91"/>
<label x="20.32" y="142.24" size="1.27" layer="95" ratio="12" xref="yes"/>
</segment>
<segment>
<pinref part="SEL1" gate="-G" pin="IN2"/>
<wire x1="-33.02" y1="99.06" x2="-35.56" y2="99.06" width="0.1524" layer="91"/>
<label x="-35.56" y="99.06" size="1.27" layer="95" ratio="12" rot="R180" xref="yes"/>
</segment>
</net>
<net name="B_INT" class="0">
<segment>
<pinref part="XOR1" gate="-G" pin="A"/>
<pinref part="XOR3" gate="-G" pin="OUT"/>
<wire x1="-10.16" y1="129.54" x2="-15.24" y2="129.54" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="129.54" x2="-15.24" y2="124.46" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="124.46" x2="-20.32" y2="124.46" width="0.1524" layer="91"/>
<label x="-15.24" y="129.54" size="1.27" layer="95" ratio="12"/>
</segment>
</net>
<net name="B" class="0">
<segment>
<pinref part="XOR3" gate="-G" pin="A"/>
<wire x1="-33.02" y1="127" x2="-35.56" y2="127" width="0.1524" layer="91"/>
<label x="-35.56" y="127" size="1.27" layer="95" ratio="12" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="SEL1" gate="-G" pin="IN8"/>
<wire x1="-33.02" y1="53.34" x2="-35.56" y2="53.34" width="0.1524" layer="91"/>
<label x="-35.56" y="53.34" size="1.27" layer="95" ratio="12" rot="R180" xref="yes"/>
</segment>
</net>
<net name="OUT" class="0">
<segment>
<pinref part="XOR4" gate="-G" pin="A"/>
<wire x1="-10.16" y1="50.8" x2="-15.24" y2="50.8" width="0.1524" layer="91"/>
<pinref part="SEL1" gate="-G" pin="OUT"/>
</segment>
</net>
<net name="OUT_INV" class="0">
<segment>
<pinref part="XOR4" gate="-G" pin="OUT"/>
<wire x1="2.54" y1="48.26" x2="5.08" y2="48.26" width="0.1524" layer="91"/>
<label x="5.08" y="48.26" size="1.27" layer="95" ratio="12" xref="yes"/>
</segment>
</net>
<net name="INV_OUT" class="0">
<segment>
<pinref part="SEL2" gate="-G" pin="SEL"/>
<wire x1="-66.04" y1="76.2" x2="-68.58" y2="76.2" width="0.1524" layer="91"/>
<label x="-68.58" y="76.2" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="NOT2" gate="-G" pin="IN"/>
<wire x1="-43.18" y1="40.64" x2="-45.72" y2="40.64" width="0.1524" layer="91"/>
<label x="-45.72" y="40.64" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="INV_ADD" class="0">
<segment>
<pinref part="XOR3" gate="-G" pin="B"/>
<wire x1="-33.02" y1="121.92" x2="-35.56" y2="121.92" width="0.1524" layer="91"/>
<label x="-35.56" y="121.92" size="1.27" layer="95" ratio="12" rot="R180" xref="yes"/>
</segment>
</net>
<net name="LEFT_IN" class="0">
<segment>
<pinref part="SEL2" gate="-G" pin="IN1"/>
<wire x1="-66.04" y1="71.12" x2="-68.58" y2="71.12" width="0.1524" layer="91"/>
<label x="-68.58" y="71.12" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="SEL1" gate="-G" pin="IN7"/>
<wire x1="-33.02" y1="60.96" x2="-35.56" y2="60.96" width="0.1524" layer="91"/>
<label x="-35.56" y="60.96" size="1.27" layer="95" ratio="12" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="SEL3" gate="-G" pin="IN1"/>
<wire x1="20.32" y1="73.66" x2="17.78" y2="73.66" width="0.1524" layer="91"/>
<label x="17.78" y="73.66" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="SEL_ID" class="0">
<segment>
<pinref part="SEL1" gate="-G" pin="SEL1"/>
<wire x1="-33.02" y1="104.14" x2="-35.56" y2="104.14" width="0.1524" layer="91"/>
<label x="-35.56" y="104.14" size="1.27" layer="95" ratio="12" rot="R180" xref="yes"/>
</segment>
</net>
<net name="SEL_AND" class="0">
<segment>
<pinref part="SEL1" gate="-G" pin="SEL2"/>
<wire x1="-33.02" y1="96.52" x2="-35.56" y2="96.52" width="0.1524" layer="91"/>
<label x="-35.56" y="96.52" size="1.27" layer="95" ratio="12" rot="R180" xref="yes"/>
</segment>
</net>
<net name="SEL_OR" class="0">
<segment>
<pinref part="SEL1" gate="-G" pin="SEL3"/>
<wire x1="-33.02" y1="88.9" x2="-35.56" y2="88.9" width="0.1524" layer="91"/>
<label x="-35.56" y="88.9" size="1.27" layer="95" ratio="12" rot="R180" xref="yes"/>
</segment>
</net>
<net name="SEL_XOR" class="0">
<segment>
<pinref part="SEL1" gate="-G" pin="SEL4"/>
<wire x1="-33.02" y1="81.28" x2="-35.56" y2="81.28" width="0.1524" layer="91"/>
<label x="-35.56" y="81.28" size="1.27" layer="95" ratio="12" rot="R180" xref="yes"/>
</segment>
</net>
<net name="SEL_ADD" class="0">
<segment>
<pinref part="SEL1" gate="-G" pin="SEL5"/>
<wire x1="-33.02" y1="73.66" x2="-35.56" y2="73.66" width="0.1524" layer="91"/>
<label x="-35.56" y="73.66" size="1.27" layer="95" ratio="12" rot="R180" xref="yes"/>
</segment>
</net>
<net name="SEL_SHIFT" class="0">
<segment>
<pinref part="SEL1" gate="-G" pin="SEL6"/>
<wire x1="-33.02" y1="66.04" x2="-35.56" y2="66.04" width="0.1524" layer="91"/>
<label x="-35.56" y="66.04" size="1.27" layer="95" ratio="12" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="NAND1" gate="-G" pin="B"/>
<wire x1="-30.48" y1="35.56" x2="-45.72" y2="35.56" width="0.1524" layer="91"/>
<label x="-45.72" y="35.56" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="SEL_CMP" class="0">
<segment>
<pinref part="SEL1" gate="-G" pin="SEL7"/>
<wire x1="-33.02" y1="58.42" x2="-35.56" y2="58.42" width="0.1524" layer="91"/>
<label x="-35.56" y="58.42" size="1.27" layer="95" ratio="12" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="SEL3" gate="-G" pin="SEL"/>
<wire x1="20.32" y1="78.74" x2="17.78" y2="78.74" width="0.1524" layer="91"/>
<label x="17.78" y="78.74" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="SEL_LOAD" class="0">
<segment>
<pinref part="SEL1" gate="-G" pin="SEL8"/>
<wire x1="-33.02" y1="50.8" x2="-35.56" y2="50.8" width="0.1524" layer="91"/>
<label x="-35.56" y="50.8" size="1.27" layer="95" ratio="12" rot="R180" xref="yes"/>
</segment>
</net>
<net name="EQUAL_IN" class="0">
<segment>
<pinref part="OR2" gate="-G" pin="B"/>
<wire x1="20.32" y1="91.44" x2="17.78" y2="91.44" width="0.1524" layer="91"/>
<label x="17.78" y="91.44" size="1.27" layer="95" ratio="12" rot="R180" xref="yes"/>
</segment>
</net>
<net name="EQUAL_OUT" class="0">
<segment>
<pinref part="OR2" gate="-G" pin="OUT"/>
<wire x1="33.02" y1="93.98" x2="35.56" y2="93.98" width="0.1524" layer="91"/>
<label x="35.56" y="93.98" size="1.27" layer="95" ratio="12" xref="yes"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="SEL1" gate="-G" pin="IN6"/>
<pinref part="SEL2" gate="-G" pin="OUT"/>
<wire x1="-33.02" y1="68.58" x2="-50.8" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RIGHT_IN" class="0">
<segment>
<pinref part="SEL2" gate="-G" pin="IN2"/>
<wire x1="-66.04" y1="66.04" x2="-68.58" y2="66.04" width="0.1524" layer="91"/>
<label x="-68.58" y="66.04" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="NAND1" gate="-G" pin="OUT"/>
<wire x1="-17.78" y1="38.1" x2="-15.24" y2="38.1" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="38.1" x2="-15.24" y2="45.72" width="0.1524" layer="91"/>
<pinref part="XOR4" gate="-G" pin="B"/>
<wire x1="-15.24" y1="45.72" x2="-10.16" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="NAND1" gate="-G" pin="A"/>
<pinref part="NOT2" gate="-G" pin="OUT"/>
<wire x1="-30.48" y1="40.64" x2="-33.02" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RIGHT_OUT" class="0">
<segment>
<pinref part="SEL3" gate="-G" pin="OUT"/>
<wire x1="35.56" y1="71.12" x2="38.1" y2="71.12" width="0.1524" layer="91"/>
<label x="38.1" y="71.12" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
</compatibility>
</eagle>
