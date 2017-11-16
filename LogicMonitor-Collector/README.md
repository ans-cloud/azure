# LogicMonitor Collectors

[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https://raw.githubusercontent.com/ans-cloud/azure/master/LogicMonitor-Collector/CreateLMCollector.json)
<a href="http://armviz.io/#/?load=https://raw.githubusercontent.com/ans-cloud/azure/master/LogicMonitor-Collector/CreateLMCollector.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>

This template creates a failover pair of LogicMonitor collectors and registers them in the LogicMonitor portal, the Azure VM use the CustomScriptExtension to download a PowerShell installation script from GitHub which registed the collectors in LogicMonitor, download the installation media and installs the collector software. 

![Diagram](/LogicMonitor-Collector/CreateLMCollector.png)