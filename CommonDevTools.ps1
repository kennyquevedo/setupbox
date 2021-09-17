
# tools we expect devs across many scenarios will want
choco install -y vscode
choco install -y git --package-parameters="'/GitAndUnixToolsOnPath /WindowsTerminal'"
choco install -y python
choco install -y sysinternals
choco install -y vscode
choco install -y sql-server-management-studio
choco install -y azure-data-studio
choco install -y fiddler
choco install -y postman
  
#--- Browsers ---
choco install -y googlechrome
choco install -y firefox

choco install visualstudio2019community --package-parameters="'--add Microsoft.VisualStudio.Component.Git'"
Update-SessionEnvironment #refreshing env due to Git install