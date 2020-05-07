. .\Form.ps1

class Package{
	
	[string] $packagePath;	
	[string] $packageName;
	
	package ()
	{
		$this.packagePath = ""		
		$this.packageName = ""
	}

}

$list = New-Object System.Collections.Generic.List[Package]
$folder = 'C:\Users\artur\Desktop\Module\Modul_122\Apps';

Get-ChildItem $folder -Filter *.exe | ForEach-Object{
	$app = New-Object Package
	$app.packagePath = $_.FullName
	$app.packageName = $_.Name.Replace(".exe", "")
	$list.Add($app)	
}

GenerateForm -items $list