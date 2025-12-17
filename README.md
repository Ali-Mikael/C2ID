## Self-hosted **CI/CD platform** 
Built in the cloud using the AWS provider.     
Crafted and managed utilizing *Terraform*.      

## How to set it up?
**Clone repo** ->    
**Navigate** to `/terraform` directory ->     
**Initialize** `$ terraform init` ->     
**Create infrastructure** `$ terraform apply` -> **Enjoy!**        
    
### Note:
Tweak the configs to suit your own needs (networking, security, DB options etc..)     
IaC files provide a robust setup with built-in default values, if nothing else, atleast the SSH.pub/key/path you need to change yourself, if you want to SSH into bastion host or other resources.

[CICDlong.drawio](https://github.com/user-attachments/files/24208866/CICDlong.drawio)
<mxfile host="Electron" agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) draw.io/29.0.3 Chrome/140.0.7339.249 Electron/38.7.0 Safari/537.36" version="29.0.3">
  <diagram name="Page-1" id="pK6QgTNeVLr7X5Wn4HPr">
    <mxGraphModel dx="4807" dy="3196" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="827" pageHeight="1169" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <mxCell id="s2mujC3zoKh9KtQpy87f-6" value="" style="rounded=1;arcSize=10;fillColor=light-dark(#FFFFFF,#000033);strokeWidth=8;movable=0;resizable=0;rotatable=0;deletable=0;editable=0;locked=1;connectable=0;fontColor=#ffffff;strokeColor=#3333FF;" parent="1" vertex="1">
          <mxGeometry x="-400" y="-230" width="3620" height="1465.5" as="geometry" />
        </mxCell>
        <mxCell id="bjCQ6IXER5Nv5FL7JhMM-64" value="&lt;font face=&quot;Courier New&quot; style=&quot;font-size: 32px;&quot;&gt;&lt;b&gt;AZ-2&lt;/b&gt;&lt;/font&gt;" style="fillColor=none;strokeColor=#147EBA;dashed=1;verticalAlign=top;fontStyle=0;fontColor=#147EBA;whiteSpace=wrap;html=1;fontFamily=Comic Sans MS;fontSize=20;strokeWidth=4;movable=1;resizable=1;rotatable=1;deletable=1;editable=1;locked=0;connectable=1;" parent="1" vertex="1">
          <mxGeometry x="100" y="640" width="2953" height="530" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-44" value="&lt;font face=&quot;Courier New&quot;&gt;Public subnet 2&amp;nbsp;&lt;/font&gt;&lt;div&gt;&lt;font face=&quot;Courier New&quot;&gt;10.0.2.0/24&lt;/font&gt;&lt;/div&gt;" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;html=1;whiteSpace=wrap;fontSize=20;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_security_group;grStroke=0;strokeColor=#6A00FF;fillColor=#dae8fc;verticalAlign=top;align=left;spacingLeft=30;dashed=0;labelBackgroundColor=none;fontColor=#6A00FF;fontFamily=Comic Sans MS;movable=1;resizable=1;rotatable=1;deletable=1;editable=1;locked=0;connectable=1;" parent="1" vertex="1">
          <mxGeometry x="210" y="692.92" width="550" height="414" as="geometry" />
        </mxCell>
        <mxCell id="ef_zpFySQEkkex87nIt3-7" value="&lt;font style=&quot;font-size: 32px;&quot; face=&quot;Courier New&quot;&gt;&lt;b&gt;AZ-1&lt;/b&gt;&lt;/font&gt;" style="fillColor=none;strokeColor=#147EBA;dashed=1;verticalAlign=top;fontStyle=0;fontColor=#147EBA;whiteSpace=wrap;html=1;fontFamily=Comic Sans MS;fontSize=20;strokeWidth=4;movable=1;resizable=1;rotatable=1;deletable=1;editable=1;locked=0;connectable=1;" parent="1" vertex="1">
          <mxGeometry x="100" y="-160" width="2918.5" height="560" as="geometry" />
        </mxCell>
        <mxCell id="HBFXTM9Bf2JvAhJawwgs-9" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#3700CC;strokeWidth=6;" parent="1" source="bjCQ6IXER5Nv5FL7JhMM-34" target="HBFXTM9Bf2JvAhJawwgs-12" edge="1">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="1640" y="600" as="targetPoint" />
            <Array as="points">
              <mxPoint x="1230" y="670" />
              <mxPoint x="1141" y="670" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="bjCQ6IXER5Nv5FL7JhMM-34" value="&lt;font face=&quot;Courier New&quot;&gt;Private web subnet 2&lt;/font&gt;" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=none;html=1;whiteSpace=wrap;fontSize=20;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_security_group;grStroke=0;strokeColor=#147EBA;fillColor=#DAE8FC;verticalAlign=top;align=left;spacingLeft=30;fontColor=#147EBA;dashed=0;movable=1;resizable=1;rotatable=1;deletable=1;editable=1;locked=0;connectable=1;fontFamily=Comic Sans MS;" parent="1" vertex="1">
          <mxGeometry x="980" y="710" width="500" height="390" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-15" value="&lt;font style=&quot;color: rgb(255, 0, 0); font-size: 18px;&quot; face=&quot;Helvetica&quot;&gt;&lt;b&gt;Security Group&lt;/b&gt;&lt;/font&gt;&lt;div&gt;&lt;font style=&quot;color: rgb(255, 0, 0); font-size: 18px;&quot; face=&quot;Helvetica&quot;&gt;Allows port 80&amp;amp;443 from public subnets&lt;/font&gt;&lt;/div&gt;" style="fontStyle=0;verticalAlign=top;align=center;spacingTop=-2;fillColor=none;rounded=0;whiteSpace=wrap;html=1;strokeColor=#FF0000;strokeWidth=2;container=1;collapsible=0;expand=0;recursiveResize=0;" parent="bjCQ6IXER5Nv5FL7JhMM-34" vertex="1">
          <mxGeometry x="150" y="80" width="200" height="250" as="geometry" />
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-23" value="&lt;font face=&quot;Courier New&quot; style=&quot;color: rgb(102, 0, 102); font-size: 20px;&quot;&gt;Nginx webServ&lt;/font&gt;&lt;div style=&quot;color: rgb(18, 18, 18);&quot;&gt;&lt;font face=&quot;Courier New&quot; style=&quot;color: rgb(102, 0, 102); font-size: 20px;&quot;&gt;On port 80&lt;/font&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(18, 18, 18);&quot;&gt;&lt;font face=&quot;Courier New&quot; style=&quot;color: rgb(102, 0, 102); font-size: 20px;&quot;&gt;Forwards &amp;gt; P3000&lt;/font&gt;&lt;/div&gt;" style="sketch=0;points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];outlineConnect=0;fontColor=#232F3E;fillColor=#660066;strokeColor=#ffffff;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.ec2;" parent="4bM4jH9rveyDG1gHozjj-15" vertex="1">
          <mxGeometry x="61" y="88.77" width="78" height="78" as="geometry" />
        </mxCell>
        <mxCell id="HBFXTM9Bf2JvAhJawwgs-5" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeWidth=6;strokeColor=#3700CC;" parent="1" target="HBFXTM9Bf2JvAhJawwgs-14" edge="1">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="1670" y="590" as="targetPoint" />
            <Array as="points" />
            <mxPoint x="2071" y="350" as="sourcePoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="s2mujC3zoKh9KtQpy87f-17" value="&lt;font face=&quot;Courier New&quot;&gt;Private app subnet 1&lt;/font&gt;" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=none;html=1;whiteSpace=wrap;fontSize=20;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_security_group;grStroke=0;strokeColor=#147EBA;fillColor=#DAE8FC;verticalAlign=top;align=left;spacingLeft=30;fontColor=#147EBA;dashed=0;movable=1;resizable=1;rotatable=1;deletable=1;editable=1;locked=0;connectable=1;fontFamily=Comic Sans MS;" parent="1" vertex="1">
          <mxGeometry x="1650" y="-100" width="670" height="450" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-111" value="" style="sketch=0;outlineConnect=0;fontColor=#232F3E;gradientColor=none;fillColor=#8C4FFF;strokeColor=none;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.endpoints;" parent="s2mujC3zoKh9KtQpy87f-17" vertex="1">
          <mxGeometry x="303.5" y="310" width="83" height="83" as="geometry" />
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-65" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#660066;strokeWidth=6;dashed=1;" parent="s2mujC3zoKh9KtQpy87f-17" source="4bM4jH9rveyDG1gHozjj-79" target="4bM4jH9rveyDG1gHozjj-111" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="490" y="270" />
              <mxPoint x="490" y="350" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-79" value="&lt;font style=&quot;color: rgb(255, 0, 0); font-size: 16px;&quot;&gt;&lt;b style=&quot;&quot;&gt;Security Group&lt;/b&gt;&lt;/font&gt;&lt;div&gt;&lt;font color=&quot;#ff0000&quot; style=&quot;font-size: 16px;&quot;&gt;Port 8080 from app subnets&lt;/font&gt;&lt;/div&gt;" style="fontStyle=0;verticalAlign=top;align=center;spacingTop=-2;fillColor=none;rounded=0;whiteSpace=wrap;html=1;strokeColor=#FF0000;strokeWidth=2;container=1;collapsible=0;expand=0;recursiveResize=0;" parent="s2mujC3zoKh9KtQpy87f-17" vertex="1">
          <mxGeometry x="264.4" y="35.730000000000004" width="161.21" height="250" as="geometry" />
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-28" value="&lt;font color=&quot;#660066&quot; face=&quot;Courier New&quot; style=&quot;font-size: 20px;&quot;&gt;Jenkins&lt;/font&gt;&lt;div&gt;&lt;font color=&quot;#660066&quot; face=&quot;Courier New&quot; style=&quot;font-size: 20px;&quot;&gt;Controller&lt;/font&gt;&lt;div style=&quot;color: rgb(18, 18, 18);&quot;&gt;&lt;div&gt;&lt;font style=&quot;font-size: 20px;&quot;&gt;&lt;font face=&quot;Courier New&quot; style=&quot;color: rgb(102, 0, 102);&quot;&gt;Listens&amp;nbsp;&lt;/font&gt;&lt;span style=&quot;background-color: transparent; color: rgb(102, 0, 102); font-family: &amp;quot;Courier New&amp;quot;;&quot;&gt;P8080&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;" style="sketch=0;points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];outlineConnect=0;fontColor=#232F3E;fillColor=#660066;strokeColor=#ffffff;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.ec2;" parent="4bM4jH9rveyDG1gHozjj-79" vertex="1">
          <mxGeometry x="42.210000000000036" y="70" width="78" height="78" as="geometry" />
        </mxCell>
        <mxCell id="HBFXTM9Bf2JvAhJawwgs-8" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#3700CC;strokeWidth=6;" parent="1" source="s2mujC3zoKh9KtQpy87f-5" target="HBFXTM9Bf2JvAhJawwgs-10" edge="1">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="1640" y="440" as="targetPoint" />
            <Array as="points">
              <mxPoint x="1253" y="433" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="s2mujC3zoKh9KtQpy87f-5" value="&lt;font face=&quot;Courier New&quot;&gt;Private web subnet 1&lt;/font&gt;" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=none;html=1;whiteSpace=wrap;fontSize=20;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_security_group;grStroke=0;strokeColor=#147EBA;fillColor=#DAE8FC;verticalAlign=top;align=left;spacingLeft=30;fontColor=#147EBA;dashed=0;movable=1;resizable=1;rotatable=1;deletable=1;editable=1;locked=0;connectable=1;fontFamily=Comic Sans MS;" parent="1" vertex="1">
          <mxGeometry x="980" y="-60" width="505.25" height="377.5" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-141" value="&lt;font style=&quot;color: rgb(255, 0, 0); font-size: 18px;&quot; face=&quot;Helvetica&quot;&gt;&lt;b&gt;Security Group&lt;/b&gt;&lt;/font&gt;&lt;div&gt;&lt;font style=&quot;color: rgb(255, 0, 0); font-size: 18px;&quot; face=&quot;Helvetica&quot;&gt;Allows port 80&amp;amp;443 from public subnets&lt;/font&gt;&lt;/div&gt;" style="fontStyle=0;verticalAlign=top;align=center;spacingTop=-2;fillColor=none;rounded=0;whiteSpace=wrap;html=1;strokeColor=#FF0000;strokeWidth=2;container=1;collapsible=0;expand=0;recursiveResize=0;" parent="s2mujC3zoKh9KtQpy87f-5" vertex="1">
          <mxGeometry x="140" y="70" width="200" height="250" as="geometry" />
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-22" value="&lt;font face=&quot;Courier New&quot; style=&quot;color: rgb(102, 0, 102); font-size: 20px;&quot;&gt;Nginx webServ&lt;/font&gt;&lt;div style=&quot;color: rgb(18, 18, 18);&quot;&gt;&lt;font face=&quot;Courier New&quot; style=&quot;color: rgb(102, 0, 102); font-size: 20px;&quot;&gt;On port 80&lt;/font&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(18, 18, 18);&quot;&gt;&lt;font face=&quot;Courier New&quot; style=&quot;color: rgb(102, 0, 102); font-size: 20px;&quot;&gt;Forwards &amp;gt; P3000&lt;/font&gt;&lt;/div&gt;" style="sketch=0;points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];outlineConnect=0;fontColor=#232F3E;fillColor=#660066;strokeColor=#ffffff;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.ec2;" parent="4bM4jH9rveyDG1gHozjj-141" vertex="1">
          <mxGeometry x="61" y="82.73" width="78" height="78" as="geometry" />
        </mxCell>
        <mxCell id="s2mujC3zoKh9KtQpy87f-3" value="&lt;font face=&quot;Courier New&quot;&gt;Public subnet 1&amp;nbsp;&lt;/font&gt;&lt;div&gt;&lt;font face=&quot;Courier New&quot;&gt;10.0.1.0/24&lt;/font&gt;&lt;/div&gt;" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;html=1;whiteSpace=wrap;fontSize=20;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_security_group;grStroke=0;strokeColor=#6A00FF;fillColor=#dae8fc;verticalAlign=top;align=left;spacingLeft=30;dashed=0;labelBackgroundColor=none;fontColor=#6A00FF;fontFamily=Comic Sans MS;movable=1;resizable=1;rotatable=1;deletable=1;editable=1;locked=0;connectable=1;" parent="1" vertex="1">
          <mxGeometry x="190" y="-60" width="570" height="420" as="geometry" />
        </mxCell>
        <mxCell id="s2mujC3zoKh9KtQpy87f-14" value="&lt;font style=&quot;color: rgb(55, 0, 204); font-size: 20px;&quot; face=&quot;Helvetica&quot;&gt;NAT GW-1&lt;/font&gt;" style="sketch=0;outlineConnect=0;strokeColor=default;fillColor=#6a00ff;dashed=0;verticalLabelPosition=top;verticalAlign=bottom;align=center;html=1;fontSize=18;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.nat_gateway;labelPosition=center;labelBackgroundColor=none;labelBorderColor=none;fontColor=#6A00FF;fontFamily=Comic Sans MS;" parent="s2mujC3zoKh9KtQpy87f-3" vertex="1">
          <mxGeometry x="250" y="140" width="110" height="110" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-18" value="&lt;font style=&quot;color: rgb(255, 0, 0); font-size: 18px;&quot;&gt;&lt;b&gt;Security Group&lt;/b&gt;&lt;/font&gt;&lt;div&gt;&lt;font color=&quot;#ff0000&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Only allow P22&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;" style="fontStyle=0;verticalAlign=top;align=center;spacingTop=-2;fillColor=none;rounded=0;whiteSpace=wrap;html=1;strokeColor=#FF0000;strokeWidth=2;container=1;collapsible=0;expand=0;recursiveResize=0;" parent="s2mujC3zoKh9KtQpy87f-3" vertex="1">
          <mxGeometry x="50" y="240" width="150" height="160" as="geometry" />
        </mxCell>
        <mxCell id="Y7MuYSTzk-Wq2oZ3BEW2-1" value="Bastion Host" style="shape=rect;fillColor=#6a00ff;aspect=fixed;resizable=0;labelPosition=center;verticalLabelPosition=bottom;align=center;verticalAlign=top;strokeColor=#3700CC;fontSize=20;fontColor=#660066;fontFamily=Courier New;" parent="4bM4jH9rveyDG1gHozjj-18" vertex="1">
          <mxGeometry x="51" y="56" width="48" height="48" as="geometry" />
        </mxCell>
        <mxCell id="Y7MuYSTzk-Wq2oZ3BEW2-2" value="" style="fillColor=#FFFFFF;strokeColor=none;dashed=0;outlineConnect=0;html=1;labelPosition=center;verticalLabelPosition=bottom;verticalAlign=top;part=1;movable=0;resizable=0;rotatable=0;shape=mxgraph.ibm_cloud.bastion-host" parent="Y7MuYSTzk-Wq2oZ3BEW2-1" vertex="1">
          <mxGeometry width="24" height="24" relative="1" as="geometry">
            <mxPoint x="12" y="12" as="offset" />
          </mxGeometry>
        </mxCell>
        <mxCell id="s2mujC3zoKh9KtQpy87f-12" value="Virtual private&#xa;cloud" style="outlineConnect=0;fontColor=#000000;strokeColor=default;fillColor=#3333FF;dashed=0;verticalLabelPosition=top;verticalAlign=bottom;align=center;html=1;fontSize=1;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.virtual_private_cloud;gradientColor=none;labelPosition=center;labelBackgroundColor=none;perimeter=rectanglePerimeter;shadow=0;fontFamily=Comic Sans MS;movable=0;resizable=0;rotatable=0;deletable=0;editable=0;locked=1;connectable=0;" parent="1" vertex="1">
          <mxGeometry x="-170" y="-230" width="100" height="100" as="geometry" />
        </mxCell>
        <mxCell id="s2mujC3zoKh9KtQpy87f-18" value="" style="sketch=0;outlineConnect=0;fontColor=#ffffff;fillColor=#CCCC00;strokeColor=#3700CC;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.bucket;" parent="1" vertex="1">
          <mxGeometry x="3308" y="647.92" width="90.38" height="94" as="geometry" />
        </mxCell>
        <mxCell id="SSQ8eqVO6QQu3HIc6F7N-8" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;fillColor=#6a00ff;strokeColor=#660066;strokeWidth=6;" parent="1" source="s2mujC3zoKh9KtQpy87f-27" target="ef_zpFySQEkkex87nIt3-2" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="-175" y="534.96" />
              <mxPoint x="-175" y="534.96" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="Jd028jBhsAVHEhu7A0yy-16" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#3700CC;strokeWidth=6;" parent="1" source="ef_zpFySQEkkex87nIt3-2" target="s2mujC3zoKh9KtQpy87f-27" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="-180" y="494.96" />
              <mxPoint x="-180" y="494.96" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="ef_zpFySQEkkex87nIt3-2" value="&lt;font style=&quot;font-size: 20px;&quot; face=&quot;Courier New&quot;&gt;Public Route Table&lt;/font&gt;&lt;div&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;&lt;font face=&quot;Courier New&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;div&gt;&lt;font style=&quot;font-size: 20px;&quot; face=&quot;Comic Sans MS&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/div&gt;&lt;/div&gt;" style="sketch=0;outlineConnect=0;fontColor=#ffffff;fillColor=#6a00ff;strokeColor=#3700CC;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.route_table;" parent="1" vertex="1">
          <mxGeometry x="-110" y="478.04" width="75.79" height="73.85" as="geometry" />
        </mxCell>
        <mxCell id="s2mujC3zoKh9KtQpy87f-27" value="" style="sketch=0;outlineConnect=0;fontColor=default;strokeColor=default;fillColor=#6a00ff;dashed=0;verticalLabelPosition=top;verticalAlign=bottom;align=center;html=1;fontSize=16;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.internet_gateway;labelPosition=center;labelBackgroundColor=none;fontFamily=Comic Sans MS;spacingTop=2;" parent="1" vertex="1">
          <mxGeometry x="-360" y="459.96" width="110" height="110" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-64" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#660066;strokeWidth=6;entryX=0;entryY=0.5;entryDx=0;entryDy=0;" parent="1" source="ef_zpFySQEkkex87nIt3-3" target="4bM4jH9rveyDG1gHozjj-54" edge="1">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="440" y="470" as="targetPoint" />
            <Array as="points">
              <mxPoint x="410" y="510" />
              <mxPoint x="410" y="510" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="ef_zpFySQEkkex87nIt3-3" value="" style="points=[];aspect=fixed;html=1;align=center;shadow=0;dashed=0;fillColor=#6a00ff;strokeColor=#3700CC;shape=mxgraph.alibaba_cloud.network_acl_access_control_list;fontColor=#ffffff;" parent="1" vertex="1">
          <mxGeometry x="10" y="480.18" width="77.4" height="69.56" as="geometry" />
        </mxCell>
        <mxCell id="SSQ8eqVO6QQu3HIc6F7N-3" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;fillColor=#6a00ff;strokeColor=#660066;strokeWidth=6;dashed=1;" parent="1" source="ef_zpFySQEkkex87nIt3-9" target="s2mujC3zoKh9KtQpy87f-18" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="3500" y="515" />
              <mxPoint x="3500" y="695" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-131" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#660066;strokeWidth=6;dashed=1;" parent="1" source="ef_zpFySQEkkex87nIt3-9" target="4bM4jH9rveyDG1gHozjj-130" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="3500" y="515" />
              <mxPoint x="3500" y="327" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="ef_zpFySQEkkex87nIt3-9" value="" style="sketch=0;outlineConnect=0;fontColor=#232F3E;gradientColor=none;fillColor=#8C4FFF;strokeColor=none;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.endpoints;" parent="1" vertex="1">
          <mxGeometry x="3070" y="463.46" width="103" height="103" as="geometry" />
        </mxCell>
        <mxCell id="SSQ8eqVO6QQu3HIc6F7N-9" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=0.167;entryY=0.51;entryDx=0;entryDy=0;entryPerimeter=0;fillColor=#6a00ff;strokeColor=#660066;strokeWidth=6;" parent="1" source="ef_zpFySQEkkex87nIt3-2" target="ef_zpFySQEkkex87nIt3-3" edge="1">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="HBFXTM9Bf2JvAhJawwgs-19" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#3700CC;strokeWidth=6;" parent="1" source="s2mujC3zoKh9KtQpy87f-30" target="4bM4jH9rveyDG1gHozjj-66" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="2161" y="520" />
              <mxPoint x="810" y="520" />
              <mxPoint x="810" y="910" />
            </Array>
            <mxPoint x="590" y="860" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="SSQ8eqVO6QQu3HIc6F7N-24" value="&lt;b style=&quot;&quot;&gt;&lt;font face=&quot;Courier New&quot;&gt;10.0.0.0/16&lt;/font&gt;&lt;/b&gt;" style="text;html=1;align=center;verticalAlign=middle;resizable=0;points=[];autosize=1;strokeColor=none;fillColor=#3333FF;fontColor=#ffffff;fontSize=24;fontFamily=Comic Sans MS;labelBackgroundColor=none;rounded=1;movable=0;rotatable=0;deletable=0;editable=0;locked=1;connectable=0;" parent="1" vertex="1">
          <mxGeometry x="-209.99999999999997" y="-135" width="180" height="50" as="geometry" />
        </mxCell>
        <mxCell id="Jd028jBhsAVHEhu7A0yy-2" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=1;exitY=0.5;exitDx=0;exitDy=0;exitPerimeter=0;strokeColor=#660066;strokeWidth=6;" parent="1" source="s2mujC3zoKh9KtQpy87f-26" target="s2mujC3zoKh9KtQpy87f-27" edge="1">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="-460" y="630" as="targetPoint" />
            <Array as="points">
              <mxPoint x="-450" y="366" />
              <mxPoint x="-450" y="480" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="s2mujC3zoKh9KtQpy87f-26" value="&lt;font style=&quot;font-size: 20px;&quot; face=&quot;Courier New&quot;&gt;&lt;font style=&quot;color: rgb(255, 255, 255);&quot;&gt;Route 53 (DNS)&lt;/font&gt;&lt;br&gt;&lt;/font&gt;" style="sketch=0;points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];outlineConnect=0;fontColor=#ffffff;fillColor=#6a00ff;strokeColor=default;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.route_53;" parent="1" vertex="1">
          <mxGeometry x="-650" y="317" width="108" height="108" as="geometry" />
        </mxCell>
        <mxCell id="bjCQ6IXER5Nv5FL7JhMM-13" value="&lt;font style=&quot;font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;i style=&quot;&quot;&gt;Classic Elastic Load balancer:&lt;/i&gt;&lt;/b&gt;&lt;/font&gt;&lt;div&gt;&lt;div&gt;&lt;font style=&quot;font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;- Public facing endpoint&amp;nbsp;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;- Terminating TLS (to be implemented)&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;- Load balances traffic to frontend targets&lt;/font&gt;&lt;/div&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;- Why classic ELB? Because&amp;nbsp;ALB operates at the application layers and doesn&#39;t support the proxy protocol&lt;/font&gt;&lt;/div&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#6a00ff;fontColor=#ffffff;strokeColor=#3700CC;" parent="1" vertex="1">
          <mxGeometry x="-280" y="1450" width="550" height="350" as="geometry" />
        </mxCell>
        <mxCell id="HBFXTM9Bf2JvAhJawwgs-4" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeWidth=6;strokeColor=#3700CC;" parent="1" source="bjCQ6IXER5Nv5FL7JhMM-17" target="HBFXTM9Bf2JvAhJawwgs-13" edge="1">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="2510" y="580" as="targetPoint" />
            <Array as="points">
              <mxPoint x="2651" y="460" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="bjCQ6IXER5Nv5FL7JhMM-17" value="&lt;font face=&quot;Courier New&quot;&gt;Private data subnet 1&lt;/font&gt;" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=none;html=1;whiteSpace=wrap;fontSize=20;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_security_group;grStroke=0;strokeColor=#147EBA;fillColor=#DAE8FC;verticalAlign=top;align=left;spacingLeft=30;fontColor=#147EBA;dashed=0;movable=1;resizable=1;rotatable=1;deletable=1;editable=1;locked=0;connectable=1;fontFamily=Comic Sans MS;" parent="1" vertex="1">
          <mxGeometry x="2385.5" y="-80" width="550" height="423.46" as="geometry" />
        </mxCell>
        <mxCell id="bjCQ6IXER5Nv5FL7JhMM-21" value="&lt;font style=&quot;font-size: 20px; color: rgb(102, 0, 102);&quot; face=&quot;Courier New&quot;&gt;Redis&amp;nbsp;&lt;/font&gt;&lt;span style=&quot;color: rgb(102, 0, 102); font-size: 20px; font-family: &amp;quot;Courier New&amp;quot;; background-color: transparent;&quot;&gt;ElastiCache&lt;/span&gt;&lt;div&gt;&lt;font style=&quot;font-size: 20px; color: rgb(102, 0, 102);&quot; face=&quot;Courier New&quot;&gt;On port 6379&lt;/font&gt;&lt;/div&gt;" style="outlineConnect=0;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;shape=mxgraph.aws3.redis;fillColor=#660066;fontColor=#ffffff;strokeColor=#3700CC;" parent="bjCQ6IXER5Nv5FL7JhMM-17" vertex="1">
          <mxGeometry x="353.5" y="160" width="76.5" height="75.73" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-19" value="&lt;font style=&quot;color: rgb(255, 0, 0); font-size: 18px;&quot;&gt;&lt;b&gt;Security Group&lt;/b&gt;&lt;/font&gt;&lt;div&gt;&lt;font style=&quot;color: rgb(255, 0, 0); font-size: 18px;&quot;&gt;Allows port 5432 from app subnet&lt;/font&gt;&lt;/div&gt;" style="fontStyle=0;verticalAlign=top;align=center;spacingTop=-2;fillColor=none;rounded=0;whiteSpace=wrap;html=1;strokeColor=#FF0000;strokeWidth=2;container=1;collapsible=0;expand=0;recursiveResize=0;" parent="bjCQ6IXER5Nv5FL7JhMM-17" vertex="1">
          <mxGeometry x="50" y="60" width="180" height="220" as="geometry" />
        </mxCell>
        <mxCell id="bjCQ6IXER5Nv5FL7JhMM-20" value="&lt;font face=&quot;Courier New&quot; style=&quot;color: rgb(102, 0, 102); font-size: 20px;&quot;&gt;PostgreSQL&amp;nbsp;&lt;/font&gt;&lt;div&gt;&lt;font style=&quot;font-size: 20px;&quot;&gt;&lt;font face=&quot;Courier New&quot; style=&quot;color: rgb(102, 0, 102);&quot;&gt;On port&amp;nbsp;&lt;/font&gt;&lt;span style=&quot;color: rgb(102, 0, 102); font-family: &amp;quot;Courier New&amp;quot;; background-color: transparent;&quot;&gt;5432&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;" style="sketch=0;outlineConnect=0;fontColor=#ffffff;fillColor=#660066;strokeColor=#3700CC;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.rds_instance;" parent="4bM4jH9rveyDG1gHozjj-19" vertex="1">
          <mxGeometry x="51" y="81" width="78" height="78" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-82" value="&lt;font style=&quot;color: rgb(255, 0, 0); font-size: 18px;&quot;&gt;&lt;b&gt;Security Group&lt;/b&gt;&lt;/font&gt;&lt;div&gt;&lt;font style=&quot;color: rgb(255, 0, 0); font-size: 18px;&quot;&gt;Allows 6379 from app subnet&lt;/font&gt;&lt;/div&gt;" style="fontStyle=0;verticalAlign=top;align=center;spacingTop=-2;fillColor=none;rounded=0;whiteSpace=wrap;html=1;strokeColor=#FF0000;strokeWidth=2;container=1;collapsible=0;expand=0;recursiveResize=0;" parent="bjCQ6IXER5Nv5FL7JhMM-17" vertex="1">
          <mxGeometry x="282" y="91.22999999999999" width="219.5" height="213.27" as="geometry" />
        </mxCell>
        <mxCell id="HBFXTM9Bf2JvAhJawwgs-7" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeWidth=6;strokeColor=#3700CC;" parent="1" source="bjCQ6IXER5Nv5FL7JhMM-39" target="s2mujC3zoKh9KtQpy87f-30" edge="1">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="1670" y="620" as="targetPoint" />
            <Array as="points">
              <mxPoint x="2161" y="690" />
              <mxPoint x="2161" y="690" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="bjCQ6IXER5Nv5FL7JhMM-39" value="Private app subnet 2" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=none;html=1;whiteSpace=wrap;fontSize=20;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_security_group;grStroke=0;strokeColor=#147EBA;fillColor=#DAE8FC;verticalAlign=top;align=left;spacingLeft=30;fontColor=#147EBA;dashed=0;movable=1;resizable=1;rotatable=1;deletable=1;editable=1;locked=0;connectable=1;fontFamily=Comic Sans MS;" parent="1" vertex="1">
          <mxGeometry x="1680" y="680" width="630" height="460" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-109" value="" style="sketch=0;outlineConnect=0;fontColor=#232F3E;gradientColor=none;fillColor=#8C4FFF;strokeColor=none;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.endpoints;" parent="bjCQ6IXER5Nv5FL7JhMM-39" vertex="1">
          <mxGeometry x="273.5" y="50" width="83" height="83" as="geometry" />
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-36" value="&lt;font style=&quot;color: rgb(255, 0, 0); font-size: 16px;&quot;&gt;&lt;b style=&quot;&quot;&gt;Security Group&lt;/b&gt;&lt;/font&gt;&lt;div&gt;&lt;font style=&quot;color: rgb(255, 0, 0); font-size: 16px;&quot;&gt;Allow SSH from VPC&lt;/font&gt;&lt;/div&gt;" style="fontStyle=0;verticalAlign=top;align=center;spacingTop=-2;fillColor=none;rounded=0;whiteSpace=wrap;html=1;strokeColor=#FF0000;strokeWidth=2;container=1;collapsible=0;expand=0;recursiveResize=0;" parent="bjCQ6IXER5Nv5FL7JhMM-39" vertex="1">
          <mxGeometry x="440" y="260" width="160" height="160" as="geometry" />
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-37" value="&lt;font color=&quot;#660066&quot; face=&quot;Courier New&quot; style=&quot;font-size: 19px;&quot;&gt;Jenkins runner&lt;/font&gt;&lt;div&gt;&lt;font color=&quot;#660066&quot; face=&quot;Courier New&quot;&gt;&lt;span style=&quot;font-size: 19px;&quot;&gt;On port 22&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;" style="sketch=0;points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];outlineConnect=0;fontColor=#232F3E;fillColor=#660066;strokeColor=#ffffff;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.ec2;" parent="C5BDzzcPIYnstGzfjUmU-36" vertex="1">
          <mxGeometry x="55.210000000000036" y="50" width="49.54" height="49.54" as="geometry" />
        </mxCell>
        <mxCell id="HBFXTM9Bf2JvAhJawwgs-6" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeWidth=6;strokeColor=#3700CC;" parent="1" source="bjCQ6IXER5Nv5FL7JhMM-42" target="HBFXTM9Bf2JvAhJawwgs-15" edge="1">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="2670" y="610" as="targetPoint" />
            <Array as="points">
              <mxPoint x="2740" y="600" />
            </Array>
            <mxPoint x="2670" y="700" as="sourcePoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="bjCQ6IXER5Nv5FL7JhMM-42" value="Private data subnet 2&lt;div&gt;&lt;br&gt;&lt;/div&gt;" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=none;html=1;whiteSpace=wrap;fontSize=20;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_security_group;grStroke=0;strokeColor=#147EBA;fillColor=#DAE8FC;verticalAlign=top;align=left;spacingLeft=30;fontColor=#147EBA;dashed=0;movable=1;resizable=1;rotatable=1;deletable=1;editable=1;locked=0;connectable=1;fontFamily=Comic Sans MS;" parent="1" vertex="1">
          <mxGeometry x="2431.25" y="700" width="550" height="420" as="geometry" />
        </mxCell>
        <mxCell id="Jd028jBhsAVHEhu7A0yy-3" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#660066;strokeWidth=6;entryX=0;entryY=0.5;entryDx=0;entryDy=0;entryPerimeter=0;" parent="1" source="Jd028jBhsAVHEhu7A0yy-1" target="s2mujC3zoKh9KtQpy87f-26" edge="1">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="Jd028jBhsAVHEhu7A0yy-1" value="&lt;font style=&quot;font-size: 25px; color: rgb(255, 255, 255);&quot; face=&quot;Courier New&quot;&gt;Client&lt;/font&gt;" style="sketch=0;outlineConnect=0;fontColor=#ffffff;strokeColor=#FFFFFF;fillColor=#660066;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.client;" parent="1" vertex="1">
          <mxGeometry x="-880" y="469.96000000000004" width="90" height="90" as="geometry" />
        </mxCell>
        <mxCell id="MHMbCjU6G1YWTyT2RDkI-5" value="&lt;font style=&quot;color: rgb(255, 255, 255); font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;i style=&quot;&quot;&gt;Subnets:&lt;/i&gt;&lt;/b&gt;&lt;/font&gt;&lt;div&gt;&lt;font color=&quot;#ffffff&quot; face=&quot;Courier New&quot; style=&quot;font-size: 28px;&quot;&gt;&lt;b&gt;&lt;i&gt;&lt;u&gt;&lt;br&gt;&lt;/u&gt;&lt;/i&gt;&lt;/b&gt;&lt;/font&gt;&lt;div&gt;&lt;font style=&quot;color: rgb(255, 255, 255); font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;Derive their values dynamically in the code, based upon the &lt;u style=&quot;&quot;&gt;main VPC CIDR value&lt;/u&gt;&lt;/font&gt;&lt;/div&gt;&lt;/div&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#6a00ff;fontColor=#ffffff;strokeColor=#3700CC;" parent="1" vertex="1">
          <mxGeometry x="770" y="-520" width="540" height="210" as="geometry" />
        </mxCell>
        <mxCell id="HBFXTM9Bf2JvAhJawwgs-11" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#3700CC;strokeWidth=6;" parent="1" edge="1">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="1252.6000000000004" y="476" as="sourcePoint" />
            <mxPoint x="550" y="140" as="targetPoint" />
            <Array as="points">
              <mxPoint x="1253" y="520" />
              <mxPoint x="810" y="520" />
              <mxPoint x="810" y="140" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="HBFXTM9Bf2JvAhJawwgs-12" value="&lt;font style=&quot;font-size: 16px;&quot;&gt;Private RT&lt;/font&gt;" style="sketch=0;outlineConnect=0;fontColor=#ffffff;fillColor=#6a00ff;strokeColor=#3700CC;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.route_table;" parent="1" vertex="1">
          <mxGeometry x="1110" y="549.74" width="62.61" height="61" as="geometry" />
        </mxCell>
        <mxCell id="HBFXTM9Bf2JvAhJawwgs-16" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#3700CC;strokeWidth=6;" parent="1" source="HBFXTM9Bf2JvAhJawwgs-12" target="4bM4jH9rveyDG1gHozjj-66" edge="1">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="390" y="420" as="targetPoint" />
            <Array as="points">
              <mxPoint x="1141" y="520" />
              <mxPoint x="810" y="520" />
              <mxPoint x="810" y="910" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="HBFXTM9Bf2JvAhJawwgs-18" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeWidth=6;strokeColor=#3700CC;" parent="1" source="HBFXTM9Bf2JvAhJawwgs-13" target="s2mujC3zoKh9KtQpy87f-14" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="2661" y="520" />
              <mxPoint x="810" y="520" />
              <mxPoint x="810" y="140" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="HBFXTM9Bf2JvAhJawwgs-13" value="&lt;font style=&quot;font-size: 16px;&quot;&gt;Private RT&lt;/font&gt;" style="sketch=0;outlineConnect=0;fontColor=#ffffff;fillColor=#6a00ff;strokeColor=#3700CC;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.route_table;" parent="1" vertex="1">
          <mxGeometry x="2629.19" y="420.00000000000006" width="62.61" height="61" as="geometry" />
        </mxCell>
        <mxCell id="HBFXTM9Bf2JvAhJawwgs-20" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#3700CC;strokeWidth=6;" parent="1" source="HBFXTM9Bf2JvAhJawwgs-14" target="s2mujC3zoKh9KtQpy87f-14" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="2070" y="520" />
              <mxPoint x="810" y="520" />
              <mxPoint x="810" y="140" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-135" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#CCCC00;strokeWidth=5;dashed=1;" parent="1" source="HBFXTM9Bf2JvAhJawwgs-14" target="ef_zpFySQEkkex87nIt3-9" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="2570" y="448" />
              <mxPoint x="2570" y="520" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="HBFXTM9Bf2JvAhJawwgs-14" value="&lt;font style=&quot;font-size: 16px;&quot;&gt;Private RT&lt;/font&gt;" style="sketch=0;outlineConnect=0;fontColor=#ffffff;fillColor=#6a00ff;strokeColor=#3700CC;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.route_table;" parent="1" vertex="1">
          <mxGeometry x="2040" y="417.04" width="62.61" height="61" as="geometry" />
        </mxCell>
        <mxCell id="HBFXTM9Bf2JvAhJawwgs-17" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeWidth=6;strokeColor=#3700CC;" parent="1" source="HBFXTM9Bf2JvAhJawwgs-15" target="4bM4jH9rveyDG1gHozjj-66" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="2660" y="520" />
              <mxPoint x="810" y="520" />
              <mxPoint x="810" y="910" />
            </Array>
            <mxPoint x="550" y="850" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="HBFXTM9Bf2JvAhJawwgs-15" value="&lt;font style=&quot;font-size: 16px;&quot;&gt;Private RT&lt;/font&gt;" style="sketch=0;outlineConnect=0;fontColor=#ffffff;fillColor=#6a00ff;strokeColor=#3700CC;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.route_table;" parent="1" vertex="1">
          <mxGeometry x="2629.19" y="554" width="62.61" height="61" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-6" value="&lt;font face=&quot;Courier New&quot;&gt;&lt;span style=&quot;font-size: 32px;&quot;&gt;&lt;b&gt;TrafficFlow&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;br&gt;&lt;div&gt;&lt;span style=&quot;font-size: 30px;&quot;&gt;&lt;b&gt;&lt;font face=&quot;Courier New&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/b&gt;&lt;/span&gt;&lt;div&gt;&lt;span style=&quot;font-size: 28px;&quot;&gt;&lt;font face=&quot;Courier New&quot;&gt;&lt;b&gt;Client&lt;/b&gt; traffic enters through the&lt;b&gt; public facing ELB&lt;/b&gt;, which load-balances traffic to the &lt;b&gt;private web tier&lt;/b&gt;.&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: 28px;&quot;&gt;&lt;font face=&quot;Courier New&quot;&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: 28px;&quot;&gt;&lt;font face=&quot;Courier New&quot;&gt;&lt;b&gt;Nginx then proxies&lt;/b&gt; the request to &lt;b&gt;Gitea app server&lt;/b&gt; inside the &lt;b&gt;private app subnet.&lt;/b&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;/div&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#6a00ff;fontColor=#ffffff;strokeColor=#3700CC;" parent="1" vertex="1">
          <mxGeometry x="-1610" y="-100" width="910" height="280" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-125" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeWidth=4;dashed=1;dashPattern=8 8;" parent="1" source="4bM4jH9rveyDG1gHozjj-8" target="4bM4jH9rveyDG1gHozjj-124" edge="1">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-8" value="&lt;font style=&quot;font-size: 32px;&quot; face=&quot;Courier New&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;i style=&quot;&quot;&gt;NOTE:&lt;/i&gt;&lt;/b&gt;&lt;/font&gt;&lt;div&gt;&lt;font face=&quot;Courier New&quot; style=&quot;font-size: 28px;&quot;&gt;&lt;b&gt;&lt;i&gt;&lt;u&gt;&lt;br&gt;&lt;/u&gt;&lt;/i&gt;&lt;/b&gt;&lt;/font&gt;&lt;div&gt;&lt;font style=&quot;font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;The provision scripts only provide the most basic setup.&amp;nbsp;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;&lt;i&gt;&lt;b&gt;webServ.sh&lt;/b&gt;&lt;/i&gt; = installs nginx and configures the proxy to route traffic to app server&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;&lt;i&gt;&lt;b&gt;appServ.sh&lt;/b&gt;&lt;/i&gt;&amp;nbsp;= install the Gitea binaries, but to complete the installation, you must access the web installer on the VMs port :3000 (this happens automatically tho when you paste the ALB DNS name into your browser)&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font face=&quot;Courier New&quot; style=&quot;font-size: 28px;&quot;&gt;&lt;b&gt;&lt;i&gt;ciServ.sh&lt;/i&gt;&lt;/b&gt;&amp;nbsp;= only installs jenkins, no further configs are done&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font face=&quot;Courier New&quot; style=&quot;font-size: 28px;&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font face=&quot;Courier New&quot; style=&quot;font-size: 28px;&quot;&gt;&lt;b style=&quot;&quot;&gt;runner.sh&lt;/b&gt; = install java and podman for jenkins runner&amp;nbsp;&lt;/font&gt;&lt;/div&gt;&lt;/div&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#6a00ff;fontColor=#ffffff;strokeColor=#3700CC;" parent="1" vertex="1">
          <mxGeometry x="2150" y="-1120" width="1000" height="686" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-122" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeWidth=2;dashed=1;dashPattern=8 8;" parent="1" source="4bM4jH9rveyDG1gHozjj-9" target="4bM4jH9rveyDG1gHozjj-66" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="644" y="1240" />
              <mxPoint x="495" y="1240" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-51" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeWidth=2;dashed=1;dashPattern=8 8;" parent="1" source="4bM4jH9rveyDG1gHozjj-9" target="s2mujC3zoKh9KtQpy87f-27" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="644" y="1240" />
              <mxPoint x="-305" y="1240" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-9" value="&lt;font face=&quot;Courier New&quot;&gt;&lt;span style=&quot;font-size: 28px;&quot;&gt;&lt;b&gt;&lt;i&gt;Private subnet route tables&amp;nbsp;&lt;/i&gt;&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;div&gt;&lt;font face=&quot;Courier New&quot;&gt;&lt;span style=&quot;font-size: 28px;&quot;&gt;&lt;b&gt;&lt;i&gt;=&amp;gt;&amp;gt;&lt;/i&gt;&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font face=&quot;Courier New&quot;&gt;&lt;span style=&quot;font-size: 28px;&quot;&gt;&lt;b&gt;&lt;i&gt;Internet bound traffic to the NAT GW&lt;/i&gt;&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font face=&quot;Courier New&quot;&gt;&lt;span style=&quot;font-size: 28px;&quot;&gt;&lt;b&gt;&lt;i&gt;&lt;br&gt;&lt;/i&gt;&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font face=&quot;Courier New&quot;&gt;&lt;span style=&quot;font-size: 28px;&quot;&gt;&lt;b&gt;&lt;i&gt;Public subnets just route it straight to Internet Gateway&lt;/i&gt;&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#6a00ff;fontColor=#ffffff;strokeColor=#3700CC;" parent="1" vertex="1">
          <mxGeometry x="360" y="1450" width="567.4" height="280" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-22" value="&lt;font style=&quot;color: rgb(255, 255, 255); font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;i style=&quot;&quot;&gt;Bastion Host:&lt;/i&gt;&lt;/b&gt;&lt;/font&gt;&lt;div&gt;&lt;font color=&quot;#ffffff&quot; face=&quot;Courier New&quot; style=&quot;font-size: 28px;&quot;&gt;Accepts traffic on port 22. Best practice: Only from your own IP/network&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font color=&quot;#ffffff&quot; face=&quot;Courier New&quot; style=&quot;font-size: 28px;&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;div&gt;&lt;span style=&quot;background-color: transparent;&quot;&gt;&lt;font style=&quot;color: rgb(255, 255, 255); font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;Provides SSH access to private subnet resources.&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;background-color: transparent;&quot;&gt;&lt;font style=&quot;color: rgb(255, 255, 255); font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;background-color: transparent;&quot;&gt;&lt;font style=&quot;color: rgb(255, 255, 255); font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;You just need to attach the &quot;admin SG&quot; on the instance you want access to!&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#6a00ff;fontColor=#ffffff;strokeColor=#3700CC;" parent="1" vertex="1">
          <mxGeometry x="160" y="-938" width="850" height="296" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-25" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=0.5;entryY=1;entryDx=0;entryDy=0;strokeWidth=2;dashed=1;exitX=0.5;exitY=0;exitDx=0;exitDy=0;dashPattern=8 8;" parent="1" source="4bM4jH9rveyDG1gHozjj-24" target="4bM4jH9rveyDG1gHozjj-15" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="1290" y="1240" />
              <mxPoint x="1220" y="1240" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-24" value="&lt;font style=&quot;font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;&lt;b style=&quot;&quot;&gt;Reverse prox&lt;/b&gt;&lt;b style=&quot;&quot;&gt;y &lt;/b&gt;for &lt;i style=&quot;&quot;&gt;backend target&lt;/i&gt;&lt;/font&gt;&lt;div&gt;&lt;i&gt;&lt;font face=&quot;Courier New&quot; style=&quot;font-size: 28px;&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/i&gt;&lt;div&gt;&lt;font style=&quot;font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;Accepts traffic from LB and forwards it to App server&lt;/font&gt;&lt;/div&gt;&lt;/div&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#6a00ff;fontColor=#ffffff;strokeColor=#3700CC;" parent="1" vertex="1">
          <mxGeometry x="1010" y="1450" width="560" height="190" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-26" value="&lt;font style=&quot;font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;&lt;b style=&quot;&quot;&gt;Route 53&lt;/b&gt; is not implemented yet. To be continued...&lt;/font&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#6a00ff;fontColor=#ffffff;strokeColor=#3700CC;" parent="1" vertex="1">
          <mxGeometry x="270" y="-476" width="280" height="171.54" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-31" value="&lt;font style=&quot;font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;i style=&quot;&quot;&gt;Availability zones:&lt;/i&gt;&lt;/b&gt;&lt;/font&gt;&lt;div&gt;&lt;b&gt;&lt;i&gt;&lt;u&gt;&lt;font face=&quot;Courier New&quot; style=&quot;font-size: 28px;&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/u&gt;&lt;/i&gt;&lt;/b&gt;&lt;div&gt;&lt;font style=&quot;font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;The code picks &lt;i&gt;2 available AZs&lt;/i&gt; randomly and assigns them so that subnets ending with the same number &lt;b&gt;1 or 2 (in this case)&lt;/b&gt;, get the same AZ.&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;For example: It enables us to have &lt;b style=&quot;&quot;&gt;app-subnet-1&lt;/b&gt; and &lt;b style=&quot;&quot;&gt;data-subnet-1&lt;/b&gt; in the same AZ. This is where data flows the most, so it saves costs, and if it goes down, we have redundancy!&lt;/font&gt;&lt;/div&gt;&lt;/div&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#6a00ff;fontColor=#ffffff;strokeColor=#3700CC;" parent="1" vertex="1">
          <mxGeometry x="1136.65" y="-970" width="830" height="390" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-35" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeWidth=2;dashed=1;dashPattern=8 8;entryX=0.422;entryY=0.994;entryDx=0;entryDy=0;entryPerimeter=0;" parent="1" source="4bM4jH9rveyDG1gHozjj-34" target="C5BDzzcPIYnstGzfjUmU-57" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="2700" y="1240" />
              <mxPoint x="2550" y="1240" />
              <mxPoint x="2550" y="1089" />
            </Array>
            <mxPoint x="2550" y="1290" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-34" value="&lt;font style=&quot;font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;&lt;b&gt;Managed RDS instance running PostgreSQL, hosting the Gitea DB&lt;/b&gt;&lt;/font&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#6a00ff;fontColor=#ffffff;strokeColor=#3700CC;" parent="1" vertex="1">
          <mxGeometry x="2520" y="1450" width="560" height="90" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-60" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#660066;strokeWidth=6;" parent="1" source="4bM4jH9rveyDG1gHozjj-54" edge="1">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="1120" y="140" as="targetPoint" />
            <Array as="points">
              <mxPoint x="930" y="460" />
              <mxPoint x="930" y="140" />
              <mxPoint x="1088" y="140" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-54" value="&lt;font style=&quot;color: rgb(255, 0, 0); font-size: 20px;&quot;&gt;&lt;b&gt;Security Group&lt;/b&gt;&lt;/font&gt;&lt;div&gt;&lt;font style=&quot;color: rgb(255, 0, 0); font-size: 20px;&quot;&gt;Only accepts traffic on ports 80 &amp;amp; 443&lt;/font&gt;&lt;/div&gt;" style="fontStyle=0;verticalAlign=top;align=center;spacingTop=-2;fillColor=none;rounded=0;whiteSpace=wrap;html=1;strokeColor=#DA00DA;strokeWidth=6;container=1;collapsible=0;expand=0;recursiveResize=0;" parent="1" vertex="1">
          <mxGeometry x="520" y="240" width="210" height="540" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-56" value="&lt;font style=&quot;font-size: 38px; color: rgb(218, 0, 218);&quot; face=&quot;Courier New&quot;&gt;&lt;b style=&quot;&quot;&gt;ELB&lt;/b&gt;&lt;/font&gt;" style="sketch=0;outlineConnect=0;fontColor=#6A00FF;fillColor=#DA00DA;strokeColor=none;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=16;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.network_load_balancer;labelBackgroundColor=none;fillStyle=solid;fontFamily=Comic Sans MS;" parent="4bM4jH9rveyDG1gHozjj-54" vertex="1">
          <mxGeometry x="42.5" y="207.49999999999997" width="125" height="125" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-58" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0.5;exitY=1;exitDx=0;exitDy=0;" parent="1" source="4bM4jH9rveyDG1gHozjj-54" target="4bM4jH9rveyDG1gHozjj-54" edge="1">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-61" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#660066;strokeWidth=6;entryX=-0.006;entryY=0.44;entryDx=0;entryDy=0;entryPerimeter=0;" parent="1" source="4bM4jH9rveyDG1gHozjj-54" target="4bM4jH9rveyDG1gHozjj-15" edge="1">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="1020" y="950" as="targetPoint" />
            <Array as="points">
              <mxPoint x="930" y="580" />
              <mxPoint x="930" y="900" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-62" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#3700CC;strokeWidth=6;" parent="1" source="s2mujC3zoKh9KtQpy87f-14" edge="1">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="49" y="460" as="targetPoint" />
            <Array as="points">
              <mxPoint x="49" y="135" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-63" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=0.465;entryY=0.169;entryDx=0;entryDy=0;entryPerimeter=0;strokeWidth=6;strokeColor=#3700CC;" parent="1" source="4bM4jH9rveyDG1gHozjj-18" target="ef_zpFySQEkkex87nIt3-3" edge="1">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-66" value="&lt;font style=&quot;color: rgb(55, 0, 204); font-size: 20px;&quot; face=&quot;Helvetica&quot;&gt;NAT GW-2&lt;/font&gt;" style="sketch=0;outlineConnect=0;strokeColor=default;fillColor=#6a00ff;dashed=0;verticalLabelPosition=top;verticalAlign=bottom;align=center;html=1;fontSize=18;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.nat_gateway;labelPosition=center;labelBackgroundColor=none;labelBorderColor=none;fontColor=#6A00FF;fontFamily=Comic Sans MS;" parent="1" vertex="1">
          <mxGeometry x="440" y="850" width="110" height="110" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-67" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=0.517;entryY=1.003;entryDx=0;entryDy=0;entryPerimeter=0;strokeColor=#3700CC;strokeWidth=6;" parent="1" source="4bM4jH9rveyDG1gHozjj-66" target="ef_zpFySQEkkex87nIt3-3" edge="1">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-68" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeWidth=2;dashed=1;strokeColor=#FFFFFF;dashPattern=8 8;" parent="1" source="bjCQ6IXER5Nv5FL7JhMM-13" edge="1">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="515" y="600" as="targetPoint" />
            <Array as="points">
              <mxPoint x="80" y="610" />
              <mxPoint x="515" y="610" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-75" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeWidth=2;dashed=1;dashPattern=8 8;entryX=0.345;entryY=1.006;entryDx=0;entryDy=0;entryPerimeter=0;" parent="1" source="4bM4jH9rveyDG1gHozjj-71" target="C5BDzzcPIYnstGzfjUmU-34" edge="1">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="2180" y="1280" as="targetPoint" />
            <Array as="points">
              <mxPoint x="2256" y="1240" />
              <mxPoint x="1971" y="1240" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-71" value="&lt;font style=&quot;font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;&lt;b&gt;Jenkins agents running jobs for Jenkins&lt;/b&gt;&lt;/font&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#6a00ff;fontColor=#ffffff;strokeColor=#3700CC;" parent="1" vertex="1">
          <mxGeometry x="2040" y="1450" width="431" height="110" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-117" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeWidth=2;dashed=1;dashPattern=8 8;entryX=0.119;entryY=1.016;entryDx=0;entryDy=0;entryPerimeter=0;" parent="1" source="4bM4jH9rveyDG1gHozjj-76" target="C5BDzzcPIYnstGzfjUmU-32" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="1810" y="1240" />
              <mxPoint x="1729" y="1240" />
            </Array>
            <mxPoint x="2070" y="1320" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-76" value="&lt;font style=&quot;font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;&lt;b&gt;Jenkins controller&amp;nbsp;for CI/CD Orchestration&lt;/b&gt;&lt;/font&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#6a00ff;fontColor=#ffffff;strokeColor=#3700CC;" parent="1" vertex="1">
          <mxGeometry x="1630" y="1450" width="360" height="146" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-95" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeWidth=2;dashed=1;dashPattern=8 8;entryX=0.418;entryY=1.002;entryDx=0;entryDy=0;entryPerimeter=0;" parent="1" source="4bM4jH9rveyDG1gHozjj-94" target="C5BDzzcPIYnstGzfjUmU-53" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="3250" y="1240" />
              <mxPoint x="2820" y="1240" />
              <mxPoint x="2820" y="1064" />
            </Array>
            <mxPoint x="2820" y="1310" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-94" value="&lt;font face=&quot;Courier New&quot; style=&quot;font-size: 28px;&quot;&gt;&lt;b&gt;Redis ElastiCache for Gitea&lt;/b&gt;&lt;/font&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#6a00ff;fontColor=#ffffff;strokeColor=#3700CC;" parent="1" vertex="1">
          <mxGeometry x="3130" y="1450" width="520" height="60" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-101" value="&lt;font style=&quot;font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;i style=&quot;&quot;&gt;Artifact storage&lt;/i&gt;&lt;/b&gt;&lt;b style=&quot;&quot;&gt; for&amp;nbsp;&lt;/b&gt;&lt;/font&gt;&lt;div&gt;&lt;font style=&quot;font-size: 28px;&quot; face=&quot;Courier New&quot;&gt;&lt;b style=&quot;&quot;&gt;Jenkins&lt;/b&gt;&lt;/font&gt;&lt;/div&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#6a00ff;fontColor=#ffffff;strokeColor=#3700CC;" parent="1" vertex="1">
          <mxGeometry x="3308" y="820" width="300" height="134.5" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-124" value="&lt;span style=&quot;font-family: &amp;quot;Courier New&amp;quot;; font-size: 28px;&quot;&gt;Configuration management to be implemented using Ansible. Stay tuned!&lt;/span&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#6a00ff;fontColor=#ffffff;strokeColor=#3700CC;rotation=0;" parent="1" vertex="1">
          <mxGeometry x="3420" y="-600" width="510" height="230" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-130" value="" style="sketch=0;outlineConnect=0;fontColor=#ffffff;fillColor=#CCCC00;strokeColor=#3700CC;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.bucket;" parent="1" vertex="1">
          <mxGeometry x="3308" y="280" width="90.38" height="94" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-132" value="&lt;span style=&quot;font-size: 28px;&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font face=&quot;Courier New&quot;&gt;&lt;i style=&quot;&quot;&gt;Repo storage&lt;/i&gt;&amp;nbsp;&lt;/font&gt;&lt;/b&gt;&lt;/span&gt;&lt;div&gt;&lt;span style=&quot;font-size: 28px;&quot;&gt;&lt;b&gt;&lt;font face=&quot;Courier New&quot;&gt;for&amp;nbsp;&lt;/font&gt;&lt;/b&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: 28px;&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font face=&quot;Courier New&quot;&gt;Gitea&lt;/font&gt;&lt;/b&gt;&lt;/span&gt;&lt;/div&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#6a00ff;fontColor=#ffffff;strokeColor=#3700CC;" parent="1" vertex="1">
          <mxGeometry x="3300" y="64.47999999999999" width="300" height="134.5" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-134" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#CCCC00;strokeWidth=5;dashed=1;" parent="1" source="4bM4jH9rveyDG1gHozjj-111" target="HBFXTM9Bf2JvAhJawwgs-14" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="1992" y="451" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="HBFXTM9Bf2JvAhJawwgs-10" value="&lt;font style=&quot;font-size: 16px;&quot;&gt;Private RT&lt;/font&gt;" style="sketch=0;outlineConnect=0;fontColor=#ffffff;fillColor=#6a00ff;strokeColor=#3700CC;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.route_table;" parent="1" vertex="1">
          <mxGeometry x="1221.32" y="410.00000000000006" width="62.61" height="61" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-138" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeWidth=5;strokeColor=#CCCC00;dashed=1;" parent="1" source="s2mujC3zoKh9KtQpy87f-30" target="ef_zpFySQEkkex87nIt3-9" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="2570" y="572" />
              <mxPoint x="2570" y="520" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="s2mujC3zoKh9KtQpy87f-30" value="&lt;font style=&quot;font-size: 16px;&quot;&gt;Private RT&lt;/font&gt;" style="sketch=0;outlineConnect=0;fontColor=#ffffff;fillColor=#6a00ff;strokeColor=#3700CC;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.route_table;" parent="1" vertex="1">
          <mxGeometry x="2130" y="541.5" width="62.61" height="61" as="geometry" />
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-137" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#CCCC00;strokeWidth=5;dashed=1;" parent="1" source="4bM4jH9rveyDG1gHozjj-109" target="s2mujC3zoKh9KtQpy87f-30" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="2070" y="572" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-59" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0.5;exitY=1;exitDx=0;exitDy=0;entryX=0.5;entryY=1;entryDx=0;entryDy=0;strokeColor=#660066;strokeWidth=6;" parent="1" source="C5BDzzcPIYnstGzfjUmU-6" target="4bM4jH9rveyDG1gHozjj-82" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="1760" y="320" />
              <mxPoint x="2777" y="320" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-63" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=1;exitY=0.75;exitDx=0;exitDy=0;strokeColor=#660066;strokeWidth=6;dashed=1;" parent="1" source="C5BDzzcPIYnstGzfjUmU-6" target="4bM4jH9rveyDG1gHozjj-111" edge="1">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-6" value="&lt;font style=&quot;color: rgb(255, 0, 0); font-size: 18px;&quot; face=&quot;Helvetica&quot;&gt;&lt;b style=&quot;&quot;&gt;Security Group&lt;/b&gt;&lt;/font&gt;&lt;div&gt;&lt;font style=&quot;color: rgb(255, 0, 0); font-size: 18px;&quot; face=&quot;Helvetica&quot;&gt;Allows port 3000&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;color: rgb(255, 0, 0); font-size: 18px;&quot; face=&quot;Helvetica&quot;&gt;from Web-subnet&lt;/font&gt;&lt;/div&gt;" style="fontStyle=0;verticalAlign=top;align=center;spacingTop=-2;fillColor=none;rounded=0;whiteSpace=wrap;html=1;strokeColor=#FF0000;strokeWidth=2;container=1;collapsible=0;expand=0;recursiveResize=0;" parent="1" vertex="1">
          <mxGeometry x="1680" width="160" height="260" as="geometry" />
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-25" value="&lt;font style=&quot;font-size: 20px;&quot;&gt;&lt;font color=&quot;#660066&quot; face=&quot;Courier New&quot;&gt;Gitea&lt;/font&gt;&lt;br style=&quot;color: rgb(18, 18, 18);&quot;&gt;&lt;/font&gt;&lt;div style=&quot;color: rgb(18, 18, 18);&quot;&gt;&lt;font color=&quot;#660066&quot; face=&quot;Courier New&quot; style=&quot;font-size: 20px;&quot;&gt;App server&lt;br&gt;&lt;/font&gt;&lt;div&gt;&lt;font style=&quot;font-size: 20px;&quot;&gt;&lt;font face=&quot;Courier New&quot; style=&quot;color: rgb(102, 0, 102);&quot;&gt;Listens&amp;nbsp;&lt;/font&gt;&lt;span style=&quot;background-color: transparent; color: rgb(102, 0, 102); font-family: &amp;quot;Courier New&amp;quot;;&quot;&gt;P3000&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;&lt;/div&gt;" style="sketch=0;points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];outlineConnect=0;fontColor=#232F3E;fillColor=#660066;strokeColor=#ffffff;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.ec2;" parent="C5BDzzcPIYnstGzfjUmU-6" vertex="1">
          <mxGeometry x="41" y="86" width="78" height="78" as="geometry" />
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-11" value="" style="sketch=0;aspect=fixed;pointerEvents=1;shadow=0;dashed=0;html=1;strokeColor=none;labelPosition=center;verticalLabelPosition=bottom;verticalAlign=top;align=center;fillColor=#00188D;shape=mxgraph.azure.script_file" parent="1" vertex="1">
          <mxGeometry x="2935.5" y="-1110" width="103.4" height="110" as="geometry" />
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-18" value="&lt;font style=&quot;font-size: 20px;&quot;&gt;Availability Zone&lt;/font&gt;" style="fillColor=none;strokeColor=#147EBA;dashed=1;verticalAlign=top;fontStyle=0;fontColor=#147EBA;whiteSpace=wrap;html=1;strokeWidth=5;" parent="1" vertex="1">
          <mxGeometry x="1110" y="-1010" width="889.25" height="450" as="geometry" />
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-19" value="&lt;font style=&quot;&quot; face=&quot;Comic Sans MS&quot;&gt;&lt;br&gt;&lt;/font&gt;" style="sketch=0;points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];outlineConnect=0;fontColor=#ffffff;fillColor=#6a00ff;strokeColor=default;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.route_53;" parent="1" vertex="1">
          <mxGeometry x="356" y="-584" width="108" height="108" as="geometry" />
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-20" value="" style="points=[];aspect=fixed;html=1;align=center;shadow=0;dashed=0;fillColor=#6A00FF;strokeColor=none;shape=mxgraph.alibaba_cloud.bastionhost;" parent="1" vertex="1">
          <mxGeometry x="130" y="-1050" width="176.29" height="139.57" as="geometry" />
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-68" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=0.5;entryY=0;entryDx=0;entryDy=0;strokeColor=#660066;strokeWidth=6;" parent="1" source="4bM4jH9rveyDG1gHozjj-74" target="4bM4jH9rveyDG1gHozjj-79" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="2205" y="-84" />
              <mxPoint x="1995" y="-84" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="4bM4jH9rveyDG1gHozjj-74" value="&lt;font style=&quot;color: rgb(255, 0, 0); font-size: 16px;&quot;&gt;&lt;b style=&quot;&quot;&gt;Security Group&lt;/b&gt;&lt;/font&gt;&lt;div&gt;&lt;font style=&quot;color: rgb(255, 0, 0); font-size: 16px;&quot;&gt;Allow SSH from VPC&lt;/font&gt;&lt;/div&gt;" style="fontStyle=0;verticalAlign=top;align=center;spacingTop=-2;fillColor=none;rounded=0;whiteSpace=wrap;html=1;strokeColor=#FF0000;strokeWidth=2;container=1;collapsible=0;expand=0;recursiveResize=0;" parent="1" vertex="1">
          <mxGeometry x="2124.77" y="-50" width="160" height="160" as="geometry" />
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-29" value="&lt;font color=&quot;#660066&quot; face=&quot;Courier New&quot; style=&quot;font-size: 19px;&quot;&gt;Jenkins runner&lt;/font&gt;&lt;div&gt;&lt;font color=&quot;#660066&quot; face=&quot;Courier New&quot;&gt;&lt;span style=&quot;font-size: 19px;&quot;&gt;On port 22&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;" style="sketch=0;points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];outlineConnect=0;fontColor=#232F3E;fillColor=#660066;strokeColor=#ffffff;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.ec2;" parent="4bM4jH9rveyDG1gHozjj-74" vertex="1">
          <mxGeometry x="55.210000000000036" y="50" width="49.54" height="49.54" as="geometry" />
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-46" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0.988;exitY=0.106;exitDx=0;exitDy=0;strokeColor=#660066;strokeWidth=6;dashed=1;exitPerimeter=0;" parent="1" source="C5BDzzcPIYnstGzfjUmU-32" target="4bM4jH9rveyDG1gHozjj-109" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="1912" y="820" />
              <mxPoint x="1912" y="772" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-47" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#660066;strokeWidth=6;" parent="1" source="C5BDzzcPIYnstGzfjUmU-32" edge="1">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="2550" y="870" as="targetPoint" />
            <Array as="points">
              <mxPoint x="1790" y="720" />
              <mxPoint x="2170" y="720" />
              <mxPoint x="2170" y="800" />
              <mxPoint x="2551" y="800" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-48" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#660066;strokeWidth=6;" parent="1" source="C5BDzzcPIYnstGzfjUmU-32" edge="1">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="2820" y="850" as="targetPoint" />
            <Array as="points">
              <mxPoint x="1790" y="720" />
              <mxPoint x="2170" y="720" />
              <mxPoint x="2170" y="780" />
              <mxPoint x="2820" y="780" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-32" value="&lt;font style=&quot;color: rgb(255, 0, 0); font-size: 18px;&quot; face=&quot;Helvetica&quot;&gt;&lt;b style=&quot;&quot;&gt;Security Group&lt;/b&gt;&lt;/font&gt;&lt;div&gt;&lt;font style=&quot;color: rgb(255, 0, 0); font-size: 18px;&quot; face=&quot;Helvetica&quot;&gt;Allows port 3000&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;color: rgb(255, 0, 0); font-size: 18px;&quot; face=&quot;Helvetica&quot;&gt;from Web-subnet&lt;/font&gt;&lt;/div&gt;" style="fontStyle=0;verticalAlign=top;align=center;spacingTop=-2;fillColor=none;rounded=0;whiteSpace=wrap;html=1;strokeColor=#FF0000;strokeWidth=2;container=1;collapsible=0;expand=0;recursiveResize=0;" parent="1" vertex="1">
          <mxGeometry x="1710" y="792.77" width="160" height="260" as="geometry" />
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-33" value="&lt;font color=&quot;#660066&quot; face=&quot;Courier New&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Gitea&lt;/span&gt;&lt;/font&gt;&lt;br style=&quot;color: rgb(18, 18, 18);&quot;&gt;&lt;div style=&quot;color: rgb(18, 18, 18);&quot;&gt;&lt;font color=&quot;#660066&quot; face=&quot;Courier New&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;App server&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;div&gt;&lt;font face=&quot;Courier New&quot; style=&quot;color: rgb(102, 0, 102); font-size: 18px;&quot;&gt;Listens&amp;nbsp;&lt;/font&gt;&lt;span style=&quot;background-color: transparent; color: rgb(102, 0, 102); font-family: &amp;quot;Courier New&amp;quot;; font-size: 18px;&quot;&gt;P3000&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;" style="sketch=0;points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];outlineConnect=0;fontColor=#232F3E;fillColor=#660066;strokeColor=#ffffff;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.ec2;" parent="C5BDzzcPIYnstGzfjUmU-32" vertex="1">
          <mxGeometry x="41" y="86" width="78" height="78" as="geometry" />
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-45" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#660066;strokeWidth=6;dashed=1;" parent="1" source="C5BDzzcPIYnstGzfjUmU-34" target="4bM4jH9rveyDG1gHozjj-109" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="1950" y="850" />
              <mxPoint x="2010" y="850" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-55" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=1;exitY=0;exitDx=0;exitDy=0;entryX=0.5;entryY=0;entryDx=0;entryDy=0;strokeColor=#660066;strokeWidth=6;" parent="1" source="C5BDzzcPIYnstGzfjUmU-34" target="C5BDzzcPIYnstGzfjUmU-36" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="2200" y="879" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-34" value="&lt;font style=&quot;color: rgb(255, 0, 0); font-size: 16px;&quot;&gt;&lt;b style=&quot;&quot;&gt;Security Group&lt;/b&gt;&lt;/font&gt;&lt;div&gt;&lt;font color=&quot;#ff0000&quot; style=&quot;font-size: 16px;&quot;&gt;Port 8080 from app subnets&lt;/font&gt;&lt;/div&gt;" style="fontStyle=0;verticalAlign=top;align=center;spacingTop=-2;fillColor=none;rounded=0;whiteSpace=wrap;html=1;strokeColor=#FF0000;strokeWidth=2;container=1;collapsible=0;expand=0;recursiveResize=0;" parent="1" vertex="1">
          <mxGeometry x="1915" y="878.77" width="161.21" height="250" as="geometry" />
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-35" value="&lt;font color=&quot;#660066&quot; face=&quot;Courier New&quot; style=&quot;font-size: 20px;&quot;&gt;Jenkins&lt;/font&gt;&lt;div&gt;&lt;font color=&quot;#660066&quot; face=&quot;Courier New&quot; style=&quot;font-size: 20px;&quot;&gt;Controller&lt;/font&gt;&lt;div style=&quot;color: rgb(18, 18, 18);&quot;&gt;&lt;div&gt;&lt;font style=&quot;font-size: 20px;&quot;&gt;&lt;font face=&quot;Courier New&quot; style=&quot;color: rgb(102, 0, 102);&quot;&gt;Listens&amp;nbsp;&lt;/font&gt;&lt;span style=&quot;background-color: transparent; color: rgb(102, 0, 102); font-family: &amp;quot;Courier New&amp;quot;;&quot;&gt;P8080&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;" style="sketch=0;points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];outlineConnect=0;fontColor=#232F3E;fillColor=#660066;strokeColor=#ffffff;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.ec2;" parent="C5BDzzcPIYnstGzfjUmU-34" vertex="1">
          <mxGeometry x="42.210000000000036" y="70" width="78" height="78" as="geometry" />
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-39" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#660066;strokeWidth=6;entryX=-0.012;entryY=0.182;entryDx=0;entryDy=0;entryPerimeter=0;" parent="1" target="C5BDzzcPIYnstGzfjUmU-32" edge="1">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="1330" y="900" as="sourcePoint" />
            <mxPoint x="1600" y="800" as="targetPoint" />
            <Array as="points">
              <mxPoint x="1600" y="900" />
              <mxPoint x="1600" y="840" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-40" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=0;entryY=0.75;entryDx=0;entryDy=0;strokeWidth=6;strokeColor=#660066;" parent="1" source="4bM4jH9rveyDG1gHozjj-141" target="C5BDzzcPIYnstGzfjUmU-6" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="1560" y="135" />
              <mxPoint x="1560" y="195" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-41" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0.5;exitY=1;exitDx=0;exitDy=0;entryX=-0.017;entryY=0.866;entryDx=0;entryDy=0;entryPerimeter=0;strokeColor=#660066;strokeWidth=6;" parent="1" source="C5BDzzcPIYnstGzfjUmU-32" target="C5BDzzcPIYnstGzfjUmU-34" edge="1">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-43" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=-0.006;entryY=0.091;entryDx=0;entryDy=0;entryPerimeter=0;strokeWidth=6;strokeColor=#660066;" parent="1" source="C5BDzzcPIYnstGzfjUmU-6" target="4bM4jH9rveyDG1gHozjj-79" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="1760" y="-42" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-52" value="&lt;font style=&quot;font-size: 20px; color: rgb(102, 0, 102);&quot; face=&quot;Courier New&quot;&gt;Redis&amp;nbsp;&lt;/font&gt;&lt;span style=&quot;color: rgb(102, 0, 102); font-size: 20px; font-family: &amp;quot;Courier New&amp;quot;; background-color: transparent;&quot;&gt;ElastiCache&lt;/span&gt;&lt;div&gt;&lt;font style=&quot;font-size: 20px; color: rgb(102, 0, 102);&quot; face=&quot;Courier New&quot;&gt;On port 6379&lt;/font&gt;&lt;/div&gt;" style="outlineConnect=0;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;shape=mxgraph.aws3.redis;fillColor=#660066;fontColor=#ffffff;strokeColor=#3700CC;" parent="1" vertex="1">
          <mxGeometry x="2787.5" y="918.77" width="76.5" height="75.73" as="geometry" />
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-53" value="&lt;font style=&quot;color: rgb(255, 0, 0); font-size: 18px;&quot;&gt;&lt;b&gt;Security Group&lt;/b&gt;&lt;/font&gt;&lt;div&gt;&lt;font style=&quot;color: rgb(255, 0, 0); font-size: 18px;&quot;&gt;Allows 6379 from app subnet&lt;/font&gt;&lt;/div&gt;" style="fontStyle=0;verticalAlign=top;align=center;spacingTop=-2;fillColor=none;rounded=0;whiteSpace=wrap;html=1;strokeColor=#FF0000;strokeWidth=2;container=1;collapsible=0;expand=0;recursiveResize=0;" parent="1" vertex="1">
          <mxGeometry x="2716" y="850" width="219.5" height="213.27" as="geometry" />
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-54" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=1;exitY=0.75;exitDx=0;exitDy=0;entryX=0.5;entryY=1;entryDx=0;entryDy=0;strokeColor=#660066;strokeWidth=6;" parent="1" source="4bM4jH9rveyDG1gHozjj-79" target="4bM4jH9rveyDG1gHozjj-74" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="2100" y="123" />
              <mxPoint x="2100" y="150" />
              <mxPoint x="2205" y="150" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-57" value="&lt;font style=&quot;color: rgb(255, 0, 0); font-size: 18px;&quot;&gt;&lt;b&gt;Security Group&lt;/b&gt;&lt;/font&gt;&lt;div&gt;&lt;font style=&quot;color: rgb(255, 0, 0); font-size: 18px;&quot;&gt;Allows port 5432 from app subnet&lt;/font&gt;&lt;/div&gt;" style="fontStyle=0;verticalAlign=top;align=center;spacingTop=-2;fillColor=none;rounded=0;whiteSpace=wrap;html=1;strokeColor=#FF0000;strokeWidth=2;container=1;collapsible=0;expand=0;recursiveResize=0;" parent="1" vertex="1">
          <mxGeometry x="2470" y="870" width="180" height="220" as="geometry" />
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-58" value="&lt;font face=&quot;Courier New&quot; style=&quot;color: rgb(102, 0, 102); font-size: 20px;&quot;&gt;PostgreSQL&amp;nbsp;&lt;/font&gt;&lt;div&gt;&lt;font style=&quot;font-size: 20px;&quot;&gt;&lt;font face=&quot;Courier New&quot; style=&quot;color: rgb(102, 0, 102);&quot;&gt;On port&amp;nbsp;&lt;/font&gt;&lt;span style=&quot;color: rgb(102, 0, 102); font-family: &amp;quot;Courier New&amp;quot;; background-color: transparent;&quot;&gt;5432&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;" style="sketch=0;outlineConnect=0;fontColor=#ffffff;fillColor=#660066;strokeColor=#3700CC;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.rds_instance;" parent="C5BDzzcPIYnstGzfjUmU-57" vertex="1">
          <mxGeometry x="51" y="81" width="78" height="78" as="geometry" />
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-61" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=0.399;entryY=1.021;entryDx=0;entryDy=0;entryPerimeter=0;strokeColor=#660066;strokeWidth=6;" parent="1" source="C5BDzzcPIYnstGzfjUmU-6" target="4bM4jH9rveyDG1gHozjj-19" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="1760" y="320" />
              <mxPoint x="2410" y="320" />
              <mxPoint x="2410" y="250" />
              <mxPoint x="2507" y="250" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-66" value="&lt;div&gt;&lt;font style=&quot;font-size: 32px;&quot; face=&quot;Courier New&quot;&gt;&lt;b style=&quot;&quot;&gt;WorkFlow&lt;/b&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font style=&quot;font-size: 30px;&quot; face=&quot;Courier New&quot;&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: 28px;&quot;&gt;&lt;font face=&quot;Courier New&quot;&gt;Client&amp;nbsp;&lt;b&gt;pushes code to Gitea&lt;/b&gt;&amp;nbsp;-&amp;gt;&amp;nbsp;&lt;b&gt;Repository&lt;/b&gt;&amp;nbsp;&lt;b&gt;data&lt;/b&gt;&amp;nbsp;is stored in&amp;nbsp;&lt;b&gt;S3 bucket&lt;/b&gt;,&amp;nbsp;&lt;b&gt;metadata&lt;/b&gt;&amp;nbsp;in&amp;nbsp;&lt;b&gt;PostgreSQL RDS&lt;/b&gt;.&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: 28px;&quot;&gt;&lt;font face=&quot;Courier New&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: 28px;&quot;&gt;&lt;font face=&quot;Courier New&quot;&gt;Gitea &lt;b&gt;triggers Jenkins via webhooks &lt;/b&gt;when new &lt;b&gt;commits arrive&lt;/b&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: 28px;&quot;&gt;&lt;font face=&quot;Courier New&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: 28px;&quot;&gt;&lt;font face=&quot;Courier New&quot;&gt; -&amp;gt; Jenkins orchestrates &lt;b&gt;runners&amp;nbsp;&lt;/b&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: 28px;&quot;&gt;&lt;font face=&quot;Courier New&quot;&gt;&lt;b&gt;to execute test/build pipelines&lt;/b&gt;&amp;nbsp;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: 28px;&quot;&gt;&lt;font face=&quot;Courier New&quot;&gt;-&amp;gt; Build artefacts are uploaded to an S3 bucket. The &lt;b&gt;bucket&lt;/b&gt; is &lt;b&gt;accessed&lt;/b&gt; through a &lt;b&gt;VPC endpoint&lt;/b&gt;.&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: 28px;&quot;&gt;&lt;font face=&quot;Courier New&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: 28px;&quot;&gt;&lt;font face=&quot;Courier New&quot;&gt;Redis ElastiCache improves Gitea performance by caching data and storing user sessions in memory.&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#6a00ff;fontColor=#ffffff;strokeColor=#3700CC;rotation=0;" parent="1" vertex="1">
          <mxGeometry x="-1560" y="840" width="1010" height="564.5" as="geometry" />
        </mxCell>
        <mxCell id="C5BDzzcPIYnstGzfjUmU-67" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=1.022;entryY=0.959;entryDx=0;entryDy=0;entryPerimeter=0;strokeWidth=6;strokeColor=#660066;" parent="1" source="C5BDzzcPIYnstGzfjUmU-36" target="C5BDzzcPIYnstGzfjUmU-34" edge="1">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="2200" y="1119" />
            </Array>
          </mxGeometry>
        </mxCell>
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>
