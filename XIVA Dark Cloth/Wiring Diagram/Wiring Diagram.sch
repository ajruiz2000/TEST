<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
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
<layer number="53" name="tGND_GNDA" color="7" fill="9" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="1" fill="9" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
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
<library name="frames" urn="urn:adsk.eagle:library:229">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="A3L-LOC" urn="urn:adsk.eagle:symbol:13881/1" library_version="1">
<wire x1="288.29" y1="3.81" x2="342.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="342.265" y1="3.81" x2="373.38" y2="3.81" width="0.1016" layer="94"/>
<wire x1="373.38" y1="3.81" x2="383.54" y2="3.81" width="0.1016" layer="94"/>
<wire x1="383.54" y1="3.81" x2="383.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="383.54" y1="8.89" x2="383.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="383.54" y1="13.97" x2="383.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="383.54" y1="19.05" x2="383.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="288.29" y1="3.81" x2="288.29" y2="24.13" width="0.1016" layer="94"/>
<wire x1="288.29" y1="24.13" x2="342.265" y2="24.13" width="0.1016" layer="94"/>
<wire x1="342.265" y1="24.13" x2="383.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="373.38" y1="3.81" x2="373.38" y2="8.89" width="0.1016" layer="94"/>
<wire x1="373.38" y1="8.89" x2="383.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="373.38" y1="8.89" x2="342.265" y2="8.89" width="0.1016" layer="94"/>
<wire x1="342.265" y1="8.89" x2="342.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="342.265" y1="8.89" x2="342.265" y2="13.97" width="0.1016" layer="94"/>
<wire x1="342.265" y1="13.97" x2="383.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="342.265" y1="13.97" x2="342.265" y2="19.05" width="0.1016" layer="94"/>
<wire x1="342.265" y1="19.05" x2="383.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="342.265" y1="19.05" x2="342.265" y2="24.13" width="0.1016" layer="94"/>
<text x="344.17" y="15.24" size="2.54" layer="94">&gt;DRAWING_NAME</text>
<text x="344.17" y="10.16" size="2.286" layer="94">&gt;LAST_DATE_TIME</text>
<text x="357.505" y="5.08" size="2.54" layer="94">&gt;SHEET</text>
<text x="343.916" y="4.953" size="2.54" layer="94">Sheet:</text>
<frame x1="0" y1="0" x2="387.35" y2="260.35" columns="8" rows="5" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="A3L-LOC" urn="urn:adsk.eagle:component:13942/1" prefix="FRAME" uservalue="yes" library_version="1">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A3, landscape with location and doc. field</description>
<gates>
<gate name="G$1" symbol="A3L-LOC" x="0" y="0"/>
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
<library name="con-amp">
<packages>
<package name="10X04MTA">
<description>&lt;b&gt;AMP MTA connector&lt;/b&gt;&lt;p&gt;
Source: http://ecommas.tycoelectronics.com .. ENG_CD_640456_W.pdf</description>
<wire x1="-5.08" y1="-1.27" x2="-5.08" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.08" y1="1.27" x2="-5.08" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.27" x2="5.08" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="1.905" x2="-5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="1.905" x2="5.08" y2="1.27" width="0.1524" layer="21"/>
<pad name="4" x="-3.81" y="0" drill="1.016" shape="long" rot="R270"/>
<pad name="3" x="-1.27" y="0" drill="1.016" shape="long" rot="R270"/>
<pad name="2" x="1.27" y="0" drill="1.016" shape="long" rot="R270"/>
<pad name="1" x="3.81" y="0" drill="1.016" shape="long" rot="R270"/>
<text x="-3.2512" y="-3.2512" size="1.27" layer="25">&gt;NAME</text>
<text x="-4.9761" y="2.1509" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="21"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="21"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="21"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="MTA-1_4">
<wire x1="-3.81" y1="1.27" x2="-3.81" y2="-1.905" width="0.254" layer="94"/>
<wire x1="6.35" y1="-1.905" x2="-3.81" y2="-1.905" width="0.254" layer="94"/>
<wire x1="6.35" y1="-1.905" x2="6.35" y2="1.27" width="0.254" layer="94"/>
<wire x1="-3.81" y1="1.27" x2="6.35" y2="1.27" width="0.254" layer="94"/>
<circle x="-2.54" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="2.54" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="5.08" y="0" radius="0.635" width="0.254" layer="94"/>
<text x="7.62" y="0" size="1.778" layer="95">&gt;NAME</text>
<text x="7.62" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<text x="-5.08" y="-1.27" size="1.27" layer="95">1</text>
<pin name="1" x="-2.54" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="2" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="3" x="2.54" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="4" x="5.08" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MTA04-100" prefix="J" uservalue="yes">
<description>&lt;b&gt;AMP connector&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="MTA-1_4" x="0" y="0"/>
</gates>
<devices>
<device name="" package="10X04MTA">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-subd" urn="urn:adsk.eagle:library:189">
<description>&lt;b&gt;SUB-D Connectors&lt;/b&gt;&lt;p&gt;
Harting&lt;br&gt;
NorComp&lt;br&gt;
&lt;p&gt;
PREFIX :&lt;br&gt;
H = High density&lt;br&gt;
F = Female&lt;br&gt;
M = Male&lt;p&gt;
NUMBER: Number of pins&lt;p&gt;
SUFFIX :&lt;br&gt;
H = Horizontal&lt;br&gt;
V = Vertical &lt;br&gt;
P = Shield pin on housing&lt;br&gt;
B = No mounting holes&lt;br&gt;
S = Pins individually placeable (Single)&lt;br&gt;
D = Direct mounting &lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="F25HP" urn="urn:adsk.eagle:footprint:10107/1" library_version="1">
<description>&lt;b&gt;SUB-D&lt;/b&gt;</description>
<wire x1="-18.669" y1="17.907" x2="-18.415" y2="17.907" width="0.1524" layer="21"/>
<wire x1="-19.177" y1="17.399" x2="-18.669" y2="17.907" width="0.1524" layer="21" curve="-90"/>
<wire x1="18.669" y1="17.907" x2="19.177" y2="17.399" width="0.1524" layer="21" curve="-90"/>
<wire x1="-18.796" y1="11.684" x2="18.796" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-26.543" y1="7.62" x2="-21.463" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-26.543" y1="7.62" x2="-26.543" y2="10.668" width="0.1524" layer="21"/>
<wire x1="-26.543" y1="7.62" x2="-26.543" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-26.543" y1="10.668" x2="-26.543" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-26.543" y1="11.176" x2="-26.543" y2="11.684" width="0.1524" layer="21"/>
<wire x1="26.543" y1="11.684" x2="26.543" y2="11.176" width="0.1524" layer="21"/>
<wire x1="26.543" y1="11.176" x2="26.543" y2="10.668" width="0.1524" layer="21"/>
<wire x1="26.543" y1="10.668" x2="26.543" y2="7.62" width="0.1524" layer="21"/>
<wire x1="26.543" y1="7.62" x2="26.543" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-26.543" y1="11.176" x2="-24.003" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-24.003" y1="11.176" x2="-21.463" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-21.463" y1="10.668" x2="-21.463" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-21.463" y1="10.668" x2="-21.336" y2="10.668" width="0.1524" layer="21"/>
<wire x1="-21.336" y1="8.255" x2="-20.701" y2="7.62" width="0.1524" layer="21" curve="90"/>
<wire x1="-21.463" y1="7.62" x2="-20.574" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-20.574" y1="7.62" x2="-20.32" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-21.336" y1="8.255" x2="-21.336" y2="10.668" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="7.62" x2="-20.32" y2="6.858" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="7.62" x2="20.32" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="6.858" x2="20.32" y2="6.858" width="0.1524" layer="21"/>
<wire x1="20.32" y1="7.62" x2="20.32" y2="6.858" width="0.1524" layer="21"/>
<wire x1="20.32" y1="7.62" x2="20.574" y2="7.62" width="0.1524" layer="21"/>
<wire x1="20.574" y1="7.62" x2="21.463" y2="7.62" width="0.1524" layer="21"/>
<wire x1="24.003" y1="11.176" x2="26.543" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-21.463" y1="11.176" x2="21.463" y2="11.176" width="0.1524" layer="21"/>
<wire x1="21.463" y1="11.176" x2="24.003" y2="11.176" width="0.1524" layer="21"/>
<wire x1="21.463" y1="10.668" x2="21.463" y2="11.176" width="0.1524" layer="21"/>
<wire x1="21.336" y1="8.255" x2="21.336" y2="10.668" width="0.1524" layer="21"/>
<wire x1="21.336" y1="10.668" x2="21.463" y2="10.668" width="0.1524" layer="21"/>
<wire x1="20.701" y1="7.62" x2="21.336" y2="8.255" width="0.1524" layer="21" curve="90"/>
<wire x1="-25.908" y1="-3.175" x2="-26.543" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-26.543" y1="-2.54" x2="-26.543" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-21.082" y1="-3.175" x2="-25.908" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-21.082" y1="-3.175" x2="-20.574" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-20.574" y1="-2.667" x2="-20.574" y2="7.62" width="0.1524" layer="21"/>
<wire x1="20.574" y1="-2.667" x2="20.574" y2="7.62" width="0.1524" layer="21"/>
<wire x1="20.574" y1="-2.667" x2="21.082" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="21.082" y1="-3.175" x2="26.035" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="26.035" y1="-3.175" x2="26.543" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="26.543" y1="-2.667" x2="26.543" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-2.7686" y1="-1.143" x2="-2.7686" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-8.2804" y1="-1.143" x2="-8.2804" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-11.049" y1="-1.143" x2="-11.049" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-9.652" y1="1.397" x2="-9.652" y2="2.413" width="0.8128" layer="51"/>
<wire x1="-6.9088" y1="1.397" x2="-6.9088" y2="2.413" width="0.8128" layer="51"/>
<wire x1="-1.3716" y1="1.397" x2="-1.3716" y2="2.413" width="0.8128" layer="51"/>
<wire x1="2.7686" y1="-1.143" x2="2.7686" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="6.9088" y1="1.397" x2="6.9088" y2="2.413" width="0.8128" layer="51"/>
<wire x1="8.2804" y1="-1.143" x2="8.2804" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="4.1402" y1="1.397" x2="4.1402" y2="2.413" width="0.8128" layer="51"/>
<wire x1="5.5118" y1="-1.143" x2="5.5118" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="1.3716" y1="1.397" x2="1.3716" y2="2.413" width="0.8128" layer="51"/>
<wire x1="0" y1="-1.143" x2="0" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-4.1402" y1="1.397" x2="-4.1402" y2="2.413" width="0.8128" layer="51"/>
<wire x1="-5.5118" y1="-1.143" x2="-5.5118" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="21.463" y1="7.62" x2="26.543" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-26.543" y1="11.684" x2="-18.796" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-19.177" y1="12.319" x2="-19.177" y2="17.399" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="11.684" x2="-19.177" y2="12.319" width="0.1524" layer="21" curve="90"/>
<wire x1="18.796" y1="11.684" x2="26.543" y2="11.684" width="0.1524" layer="21"/>
<wire x1="19.177" y1="12.319" x2="19.177" y2="17.399" width="0.1524" layer="21"/>
<wire x1="19.177" y1="12.319" x2="19.812" y2="11.684" width="0.1524" layer="21" curve="90"/>
<wire x1="-12.4206" y1="1.397" x2="-12.4206" y2="2.413" width="0.8128" layer="51"/>
<wire x1="-15.1892" y1="1.397" x2="-15.1892" y2="2.413" width="0.8128" layer="51"/>
<wire x1="-13.7922" y1="-1.143" x2="-13.7922" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-16.5608" y1="-1.143" x2="-16.5608" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="9.652" y1="1.397" x2="9.652" y2="2.413" width="0.8128" layer="51"/>
<wire x1="11.049" y1="-1.143" x2="11.049" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="13.7922" y1="-1.143" x2="13.7922" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="16.5608" y1="-1.143" x2="16.5608" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="12.3952" y1="1.397" x2="12.3952" y2="2.413" width="0.8128" layer="51"/>
<wire x1="15.1638" y1="1.397" x2="15.1638" y2="2.413" width="0.8128" layer="51"/>
<wire x1="-18.415" y1="17.907" x2="18.415" y2="17.907" width="0.1524" layer="21"/>
<wire x1="18.415" y1="17.907" x2="18.669" y2="17.907" width="0.1524" layer="21"/>
<circle x="-23.5204" y="0" radius="1.651" width="0.1524" layer="21"/>
<circle x="23.5204" y="0" radius="1.651" width="0.1524" layer="21"/>
<pad name="1" x="-16.5608" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="2" x="-13.7922" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="3" x="-11.049" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="-8.2804" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="5" x="-5.5118" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="6" x="-2.7686" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="7" x="0" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="8" x="2.7686" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="9" x="5.5118" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="10" x="8.2804" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="11" x="11.049" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="12" x="13.7922" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="13" x="16.5608" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="14" x="-15.1892" y="1.27" drill="1.016" shape="octagon"/>
<pad name="15" x="-12.4206" y="1.27" drill="1.016" shape="octagon"/>
<pad name="16" x="-9.652" y="1.27" drill="1.016" shape="octagon"/>
<pad name="17" x="-6.9088" y="1.27" drill="1.016" shape="octagon"/>
<pad name="18" x="-4.1402" y="1.27" drill="1.016" shape="octagon"/>
<pad name="19" x="-1.3716" y="1.27" drill="1.016" shape="octagon"/>
<pad name="20" x="1.3716" y="1.27" drill="1.016" shape="octagon"/>
<pad name="21" x="4.1402" y="1.27" drill="1.016" shape="octagon"/>
<pad name="22" x="6.9088" y="1.27" drill="1.016" shape="octagon"/>
<pad name="23" x="9.652" y="1.27" drill="1.016" shape="octagon"/>
<pad name="24" x="12.4206" y="1.27" drill="1.016" shape="octagon"/>
<pad name="25" x="15.1892" y="1.27" drill="1.016" shape="octagon"/>
<pad name="G1" x="-23.5204" y="0" drill="3.302" diameter="5.08"/>
<pad name="G2" x="23.5204" y="0" drill="3.302" diameter="5.08"/>
<text x="-26.289" y="-6.35" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-8.382" y="13.97" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-18.669" y="-1.905" size="1.27" layer="21" ratio="10">1</text>
<text x="17.78" y="-1.905" size="1.27" layer="21" ratio="10">13</text>
<text x="-19.558" y="0.635" size="1.27" layer="21" ratio="10">14</text>
<text x="17.78" y="0.635" size="1.27" layer="21" ratio="10">25</text>
<text x="26.035" y="2.54" size="1.27" layer="21" ratio="10" rot="R90">2,54</text>
<text x="-18.669" y="8.509" size="1.27" layer="21" ratio="10">F25</text>
<rectangle x1="-20.32" y1="6.858" x2="20.32" y2="7.62" layer="21"/>
<rectangle x1="-26.543" y1="11.176" x2="26.543" y2="11.684" layer="21"/>
<rectangle x1="-16.9672" y1="-0.381" x2="-16.1544" y2="6.858" layer="21"/>
<rectangle x1="-15.5956" y1="2.159" x2="-14.7828" y2="6.858" layer="21"/>
<rectangle x1="-14.1986" y1="-0.381" x2="-13.3858" y2="6.858" layer="21"/>
<rectangle x1="-12.827" y1="2.159" x2="-12.0142" y2="6.858" layer="21"/>
<rectangle x1="-11.4554" y1="-0.381" x2="-10.6426" y2="6.858" layer="21"/>
<rectangle x1="-10.0584" y1="2.159" x2="-9.2456" y2="6.858" layer="21"/>
<rectangle x1="-8.6868" y1="-0.381" x2="-7.874" y2="6.858" layer="21"/>
<rectangle x1="-7.3152" y1="2.159" x2="-6.5024" y2="6.858" layer="21"/>
<rectangle x1="-5.9182" y1="-0.381" x2="-5.1054" y2="6.858" layer="21"/>
<rectangle x1="-4.5466" y1="2.159" x2="-3.7338" y2="6.858" layer="21"/>
<rectangle x1="-3.1496" y1="-0.381" x2="-2.3368" y2="6.858" layer="21"/>
<rectangle x1="-1.778" y1="2.159" x2="-0.9652" y2="6.858" layer="21"/>
<rectangle x1="-0.4064" y1="-0.381" x2="0.4064" y2="6.858" layer="21"/>
<rectangle x1="0.9652" y1="2.159" x2="1.778" y2="6.858" layer="21"/>
<rectangle x1="2.3622" y1="-0.381" x2="3.175" y2="6.858" layer="21"/>
<rectangle x1="3.7338" y1="2.159" x2="4.5466" y2="6.858" layer="21"/>
<rectangle x1="5.1054" y1="-0.381" x2="5.9182" y2="6.858" layer="21"/>
<rectangle x1="6.5024" y1="2.159" x2="7.3152" y2="6.858" layer="21"/>
<rectangle x1="7.874" y1="-0.381" x2="8.6868" y2="6.858" layer="21"/>
<rectangle x1="9.2456" y1="2.159" x2="10.0584" y2="6.858" layer="21"/>
<rectangle x1="10.6426" y1="-0.381" x2="11.4554" y2="6.858" layer="21"/>
<rectangle x1="11.9888" y1="2.159" x2="12.8016" y2="6.858" layer="21"/>
<rectangle x1="13.3858" y1="-0.381" x2="14.1986" y2="6.858" layer="21"/>
<rectangle x1="14.7574" y1="2.159" x2="15.5702" y2="6.858" layer="21"/>
<rectangle x1="16.1544" y1="-0.381" x2="16.9672" y2="6.858" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="F25HP" urn="urn:adsk.eagle:package:10249/1" type="box" library_version="1">
<description>SUB-D</description>
</package3d>
</packages3d>
<symbols>
<symbol name="F25G" urn="urn:adsk.eagle:symbol:10105/1" library_version="1">
<wire x1="-1.651" y1="16.129" x2="-1.651" y2="14.351" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="14.351" x2="1.524" y2="16.129" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="13.589" x2="-1.651" y2="11.811" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="11.811" x2="1.524" y2="13.589" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="11.049" x2="-1.651" y2="9.271" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="9.271" x2="1.524" y2="11.049" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="8.509" x2="-1.651" y2="6.731" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="6.731" x2="1.524" y2="8.509" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="5.969" x2="-1.651" y2="4.191" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="4.191" x2="1.524" y2="5.969" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="3.429" x2="-1.651" y2="1.651" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="1.651" x2="1.524" y2="3.429" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="0.889" x2="-1.651" y2="-0.889" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="-0.889" x2="1.524" y2="0.889" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-1.651" x2="-1.651" y2="-3.429" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="-3.429" x2="1.524" y2="-1.651" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-4.191" x2="-1.651" y2="-5.969" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="-5.969" x2="1.524" y2="-4.191" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-6.731" x2="-1.651" y2="-8.509" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="-8.509" x2="1.524" y2="-6.731" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-9.271" x2="-1.651" y2="-11.049" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="-11.049" x2="1.524" y2="-9.271" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-11.811" x2="-1.651" y2="-13.589" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="-13.589" x2="1.524" y2="-11.811" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-14.351" x2="-1.651" y2="-16.129" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-4.064" y1="17.0912" x2="-2.5226" y2="18.332" width="0.4064" layer="94" curve="-102.324066" cap="flat"/>
<wire x1="-2.5226" y1="18.3318" x2="0" y2="17.78" width="0.4064" layer="94"/>
<wire x1="0" y1="17.78" x2="3.0654" y2="17.1094" width="0.4064" layer="94"/>
<wire x1="3.0654" y1="17.1095" x2="4.0642" y2="15.8688" width="0.4064" layer="94" curve="-77.655139" cap="flat"/>
<wire x1="4.064" y1="-15.8688" x2="4.064" y2="15.8688" width="0.4064" layer="94"/>
<wire x1="3.0654" y1="-17.1094" x2="4.064" y2="-15.8688" width="0.4064" layer="94" curve="77.657889"/>
<wire x1="-4.064" y1="-17.0912" x2="-4.064" y2="17.0912" width="0.4064" layer="94"/>
<wire x1="-2.5226" y1="-18.3318" x2="0" y2="-17.78" width="0.4064" layer="94"/>
<wire x1="0" y1="-17.78" x2="3.0654" y2="-17.1094" width="0.4064" layer="94"/>
<wire x1="-4.064" y1="-17.0912" x2="-2.5226" y2="-18.3319" width="0.4064" layer="94" curve="102.337599" cap="flat"/>
<wire x1="2.54" y1="17.78" x2="0" y2="17.78" width="0.1524" layer="94"/>
<wire x1="0" y1="-17.78" x2="2.54" y2="-17.78" width="0.1524" layer="94"/>
<circle x="0" y="17.78" radius="0.254" width="0.6096" layer="94"/>
<circle x="0" y="-17.78" radius="0.254" width="0.6096" layer="94"/>
<text x="-3.81" y="-20.955" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="19.05" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-7.62" y="15.24" visible="pad" length="middle" direction="pas"/>
<pin name="14" x="7.62" y="15.24" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="2" x="-7.62" y="12.7" visible="pad" length="middle" direction="pas"/>
<pin name="15" x="7.62" y="12.7" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="3" x="-7.62" y="10.16" visible="pad" length="middle" direction="pas"/>
<pin name="16" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="4" x="-7.62" y="7.62" visible="pad" length="middle" direction="pas"/>
<pin name="17" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="5" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas"/>
<pin name="18" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="6" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas"/>
<pin name="19" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="7" x="-7.62" y="0" visible="pad" length="middle" direction="pas"/>
<pin name="20" x="7.62" y="0" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="8" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas"/>
<pin name="21" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="9" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas"/>
<pin name="22" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="10" x="-7.62" y="-7.62" visible="pad" length="middle" direction="pas"/>
<pin name="23" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="11" x="-7.62" y="-10.16" visible="pad" length="middle" direction="pas"/>
<pin name="24" x="7.62" y="-10.16" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="12" x="-7.62" y="-12.7" visible="pad" length="middle" direction="pas"/>
<pin name="25" x="7.62" y="-12.7" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="13" x="-7.62" y="-15.24" visible="pad" length="middle" direction="pas"/>
<pin name="G1" x="7.62" y="17.78" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="G2" x="7.62" y="-17.78" visible="pad" length="middle" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="F25HP" urn="urn:adsk.eagle:component:10345/1" prefix="X" uservalue="yes" library_version="1">
<description>&lt;b&gt;SUB-D&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="F25G" x="0" y="0"/>
</gates>
<devices>
<device name="" package="F25HP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="17" pad="17"/>
<connect gate="G$1" pin="18" pad="18"/>
<connect gate="G$1" pin="19" pad="19"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="20" pad="20"/>
<connect gate="G$1" pin="21" pad="21"/>
<connect gate="G$1" pin="22" pad="22"/>
<connect gate="G$1" pin="23" pad="23"/>
<connect gate="G$1" pin="24" pad="24"/>
<connect gate="G$1" pin="25" pad="25"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
<connect gate="G$1" pin="G1" pad="G1"/>
<connect gate="G$1" pin="G2" pad="G2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:10249/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-amp" urn="urn:adsk.eagle:library:127">
<description>&lt;b&gt;AMP Connectors&lt;/b&gt;&lt;p&gt;
RJ45 Jack connectors&lt;br&gt;
 Based on the previous libraris:
 &lt;ul&gt;
 &lt;li&gt;amp.lbr
 &lt;li&gt;amp-j.lbr
 &lt;li&gt;amp-mta.lbr
 &lt;li&gt;amp-nlok.lbr
 &lt;li&gt;amp-sim.lbr
 &lt;li&gt;amp-micro-match.lbr
 &lt;/ul&gt;
 Sources :
 &lt;ul&gt;
 &lt;li&gt;Catalog 82066 Revised 11-95 
 &lt;li&gt;Product Guide 296785 Rev. 8-99
 &lt;li&gt;Product Guide CD-ROM 1999
 &lt;li&gt;www.amp.com
 &lt;/ul&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="10X02MTA" library_version="1">
<description>&lt;b&gt;AMP MTA connector&lt;/b&gt;&lt;p&gt;
Source: http://ecommas.tycoelectronics.com .. ENG_CD_640456_W.pdf</description>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.905" x2="-2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.905" x2="2.54" y2="1.27" width="0.1524" layer="21"/>
<pad name="2" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="1" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-2.6162" y="-3.2512" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.5461" y="2.1509" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="21"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="MTA-1_2" library_version="1">
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="3.81" y1="-1.905" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="3.81" y1="-1.905" x2="3.81" y2="1.27" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="3.81" y2="1.27" width="0.254" layer="94"/>
<circle x="0" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="2.54" y="0" radius="0.635" width="0.254" layer="94"/>
<text x="5.08" y="0" size="1.778" layer="95">&gt;NAME</text>
<text x="5.08" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.54" y="-1.27" size="1.27" layer="95">1</text>
<pin name="1" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="2" x="2.54" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MTA02-100" prefix="J" uservalue="yes" library_version="1">
<description>&lt;b&gt;AMP connector&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="MTA-1_2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="10X02MTA">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
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
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="A3L-LOC" device=""/>
<part name="X1" library="con-subd" library_urn="urn:adsk.eagle:library:189" deviceset="F25HP" device="" package3d_urn="urn:adsk.eagle:package:10249/1"/>
<part name="J1" library="con-amp" deviceset="MTA04-100" device=""/>
<part name="J2" library="con-amp" deviceset="MTA04-100" device=""/>
<part name="J3" library="con-amp" deviceset="MTA04-100" device=""/>
<part name="J4" library="con-amp" deviceset="MTA04-100" device=""/>
<part name="J6" library="con-amp" library_urn="urn:adsk.eagle:library:127" deviceset="MTA02-100" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="-66.04" y="35.56" size="1.778" layer="91">Photo Transistor 1</text>
<text x="-66.04" y="15.24" size="1.778" layer="91">Photo Transistor 2</text>
<text x="-64.77" y="-5.08" size="1.778" layer="91">Photo Transistor 3</text>
<text x="-67.31" y="-25.4" size="1.778" layer="91">Photo Transistor 4</text>
<text x="85.09" y="-3.81" size="1.778" layer="91">5V</text>
<text x="81.28" y="-12.7" size="1.778" layer="91">GND</text>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="-209.55" y="-124.46"/>
<instance part="X1" gate="G$1" x="49.53" y="3.81"/>
<instance part="J1" gate="G$1" x="-58.42" y="30.48" rot="MR270"/>
<instance part="J2" gate="G$1" x="-58.42" y="10.16" rot="MR270"/>
<instance part="J3" gate="G$1" x="-58.42" y="-10.16" rot="MR270"/>
<instance part="J4" gate="G$1" x="-58.42" y="-30.48" rot="MR270"/>
<instance part="J6" gate="G$1" x="86.36" y="-6.35" rot="R270"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<wire x1="-55.88" y1="33.02" x2="34.29" y2="33.02" width="0.1524" layer="91"/>
<wire x1="34.29" y1="33.02" x2="34.29" y2="19.05" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="1"/>
<wire x1="34.29" y1="19.05" x2="41.91" y2="19.05" width="0.1524" layer="91"/>
<pinref part="J1" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="2"/>
<wire x1="41.91" y1="16.51" x2="31.75" y2="16.51" width="0.1524" layer="91"/>
<wire x1="31.75" y1="16.51" x2="31.75" y2="30.48" width="0.1524" layer="91"/>
<wire x1="31.75" y1="30.48" x2="-55.88" y2="30.48" width="0.1524" layer="91"/>
<pinref part="J1" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="-55.88" y1="27.94" x2="29.21" y2="27.94" width="0.1524" layer="91"/>
<wire x1="29.21" y1="27.94" x2="29.21" y2="13.97" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="3"/>
<wire x1="29.21" y1="13.97" x2="41.91" y2="13.97" width="0.1524" layer="91"/>
<pinref part="J1" gate="G$1" pin="3"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<wire x1="43.18" y1="11.43" x2="41.91" y2="11.43" width="0.1524" layer="91"/>
<wire x1="41.91" y1="11.43" x2="26.67" y2="11.43" width="0.1524" layer="91"/>
<wire x1="26.67" y1="11.43" x2="26.67" y2="25.4" width="0.1524" layer="91"/>
<wire x1="26.67" y1="25.4" x2="-55.88" y2="25.4" width="0.1524" layer="91"/>
<pinref part="J1" gate="G$1" pin="4"/>
<pinref part="X1" gate="G$1" pin="4"/>
<junction x="41.91" y="11.43"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<wire x1="-55.88" y1="12.7" x2="24.13" y2="12.7" width="0.1524" layer="91"/>
<wire x1="24.13" y1="12.7" x2="24.13" y2="8.89" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="5"/>
<wire x1="24.13" y1="8.89" x2="41.91" y2="8.89" width="0.1524" layer="91"/>
<pinref part="J2" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="6"/>
<wire x1="41.91" y1="6.35" x2="21.59" y2="6.35" width="0.1524" layer="91"/>
<wire x1="21.59" y1="6.35" x2="21.59" y2="10.16" width="0.1524" layer="91"/>
<wire x1="21.59" y1="10.16" x2="-55.88" y2="10.16" width="0.1524" layer="91"/>
<pinref part="J2" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<wire x1="-55.88" y1="7.62" x2="19.05" y2="7.62" width="0.1524" layer="91"/>
<wire x1="19.05" y1="7.62" x2="19.05" y2="3.81" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="7"/>
<wire x1="19.05" y1="3.81" x2="41.91" y2="3.81" width="0.1524" layer="91"/>
<pinref part="J2" gate="G$1" pin="3"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="8"/>
<wire x1="41.91" y1="1.27" x2="16.51" y2="1.27" width="0.1524" layer="91"/>
<wire x1="16.51" y1="1.27" x2="16.51" y2="5.08" width="0.1524" layer="91"/>
<wire x1="16.51" y1="5.08" x2="-55.88" y2="5.08" width="0.1524" layer="91"/>
<pinref part="J2" gate="G$1" pin="4"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<wire x1="-55.88" y1="-7.62" x2="-24.13" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="-24.13" y1="-7.62" x2="-24.13" y2="-1.27" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="9"/>
<wire x1="-24.13" y1="-1.27" x2="41.91" y2="-1.27" width="0.1524" layer="91"/>
<pinref part="J3" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="10"/>
<wire x1="41.91" y1="-3.81" x2="-21.59" y2="-3.81" width="0.1524" layer="91"/>
<wire x1="-21.59" y1="-3.81" x2="-21.59" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="-21.59" y1="-10.16" x2="-55.88" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="J3" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<wire x1="-55.88" y1="-12.7" x2="-19.05" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-19.05" y1="-12.7" x2="-19.05" y2="-6.35" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="11"/>
<wire x1="-19.05" y1="-6.35" x2="41.91" y2="-6.35" width="0.1524" layer="91"/>
<wire x1="41.91" y1="-6.35" x2="43.18" y2="-6.35" width="0.1524" layer="91"/>
<pinref part="J3" gate="G$1" pin="3"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="12"/>
<wire x1="41.91" y1="-8.89" x2="-16.51" y2="-8.89" width="0.1524" layer="91"/>
<wire x1="-16.51" y1="-8.89" x2="-16.51" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="-16.51" y1="-15.24" x2="-55.88" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="J3" gate="G$1" pin="4"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="J4" gate="G$1" pin="1"/>
<wire x1="-55.88" y1="-27.94" x2="-12.7" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="-27.94" x2="-12.7" y2="-11.43" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="13"/>
<wire x1="-12.7" y1="-11.43" x2="41.91" y2="-11.43" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="J4" gate="G$1" pin="2"/>
<wire x1="-55.88" y1="-30.48" x2="68.58" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-30.48" x2="68.58" y2="19.05" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="14"/>
<wire x1="68.58" y1="19.05" x2="57.15" y2="19.05" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="J4" gate="G$1" pin="3"/>
<wire x1="-55.88" y1="-33.02" x2="71.12" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-33.02" x2="71.12" y2="16.51" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="15"/>
<wire x1="71.12" y1="16.51" x2="57.15" y2="16.51" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="16"/>
<wire x1="57.15" y1="13.97" x2="74.93" y2="13.97" width="0.1524" layer="91"/>
<wire x1="74.93" y1="13.97" x2="74.93" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="J4" gate="G$1" pin="4"/>
<wire x1="74.93" y1="-35.56" x2="-55.88" y2="-35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="25"/>
<wire x1="57.15" y1="-8.89" x2="83.82" y2="-8.89" width="0.1524" layer="91"/>
<pinref part="J6" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="24"/>
<wire x1="57.15" y1="-6.35" x2="83.82" y2="-6.35" width="0.1524" layer="91"/>
<pinref part="J6" gate="G$1" pin="1"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
