# LogicMonitor Collectors (New vNet)

[![Deploy to Azure](/Images/azure_deploy.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fans-cloud%2Fazure%2Fmaster%2FLogicMonitor-Collector-New-Network%2FCreateLMCollector.json)
[![Deploy to Azure](/Images/azure_view.png)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fans-cloud%2Fazure%2Fmaster%2FLogicMonitor-Collector-New-Network%2FCreateLMCollector.json)

This template creates a failover pair of LogicMonitor collectors into a new vNet and registers them in the LogicMonitor portal. The template uses the Azure VM CustomScriptExtension to download a PowerShell installation script from GitHub, once executed it registers the collectors in LogicMonitor then downloads the collector installation media, and finally installs the collector software. 

![Diagram](/LogicMonitor-Collector/CreateLMCollector.png)