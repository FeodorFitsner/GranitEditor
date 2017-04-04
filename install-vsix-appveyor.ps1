  $vsixPath = "$($env:USERPROFILE)\InstallerProjects.vsix"
  (new-object net.webclient).DownloadFile('https://visualstudiogallery.msdn.microsoft.com/fd136a01-a0c8-475f-94dd-240136f86746/file/247375/3/InstallerProjects.vsix', $vsixPath)
  "`"C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE\VSIXInstaller.exe`" /q /a $vsixPath" | out-file ".\install-vsix.cmd" -Encoding ASCII
  & .\install-vsix.cmd
