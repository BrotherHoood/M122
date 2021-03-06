#Generated Form Function
function GenerateForm {

param($items)
########################################################################
# Code Generated By: SAPIEN Technologies PrimalForms (Community Edition) v1.0.9.0
# Generated On: 05.05.2020 09:34
# Generated By: aba
########################################################################

#region Import the Assemblies
[reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
[reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
#endregion

#region Generated Form Objects
$Script:form = New-Object System.Windows.Forms.Form
$Script:scBar = New-Object System.Windows.Forms.VScrollBar
$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
#endregion Generated Form Objects
#----------------------------------------------
	[int] $count = 0;	
 	[int] $panel_x = 12;
	[int] $panel_y = 12;

Foreach ($i in $items){
	
	$AppPanel = New-Object System.Windows.Forms.Panel
	$AppPanel.DataBindings.DefaultDataSourceUpdateMode = 0
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = $panel_x
	$System_Drawing_Point.Y = $panel_y
	$AppPanel.Location = $System_Drawing_Point
	$AppPanel.Name = "AppPanel"
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Height = 155
	$System_Drawing_Size.Width = 155
	$AppPanel.Size = $System_Drawing_Size
	$AppPanel.TabIndex = 0

	$form.Controls.Add($AppPanel)
	 
	$lblApp = New-Object System.Windows.Forms.Label
	$lblApp.DataBindings.DefaultDataSourceUpdateMode = 0
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 59
	$System_Drawing_Point.Y = 4
	$lblApp.Location = $System_Drawing_Point
	$lblApp.Name = "lblApp"
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Height = 15
	$System_Drawing_Size.Width = 37
	$lblApp.Size = $System_Drawing_Size
	$lblApp.TabIndex = 0
	$lblApp.Text = $i.packageName	

	$AppPanel.Controls.Add($lblApp)

	$btnApp = New-Object System.Windows.Forms.Button
	$btnApp.DataBindings.DefaultDataSourceUpdateMode = 0
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 40
	$System_Drawing_Point.Y = 129
	$btnApp.Location = $System_Drawing_Point
	$btnApp.Name = "btnApp"
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Height = 23
	$System_Drawing_Size.Width = 75
	$btnApp.Size = $System_Drawing_Size
	$btnApp.TabIndex = 2
	$btnApp.Text = "Install"
	$btnApp.UseVisualStyleBackColor = $True
	$btnApp.add_Click($btnApp_OnClick)

	$btnApp_OnClick= 
	{
	#TODO: Place custom script here
		
	}

	$AppPanel.Controls.Add($btnApp)

	$pbApp = New-Object System.Windows.Forms.PictureBox
	$pbApp.DataBindings.DefaultDataSourceUpdateMode = 0
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 27
	$System_Drawing_Point.Y = 23
	$pbApp.Location = $System_Drawing_Point
	$pbApp.Name = "pbApp"
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Height = 100
	$System_Drawing_Size.Width = 100
	$pbApp.Size = $System_Drawing_Size
	$pbApp.TabIndex = 1
	$pbApp.TabStop = $False

	$AppPanel.Controls.Add($pbApp)

	if(($count % 2) -eq 0){
		$panel_x += 161
	}else{
		$panel_x = 12
		$panel_y += 161
	}
	
	$count += 1
}
#----------------------------------------------

#----------------------------------------------
#Generated Event Script Blocks
#----------------------------------------------
#Provide Custom Code for events specified in PrimalForms.

$OnLoadForm_StateCorrection=
{#Correct the initial state of the form to prevent the .Net maximized form issue
	$form.WindowState = $InitialFormWindowState
}

#----------------------------------------------
#region Generated Form Code
$form.AutoScroll = $True
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 285
$System_Drawing_Size.Width = 373
$form.ClientSize = $System_Drawing_Size
$form.DataBindings.DefaultDataSourceUpdateMode = 0
$form.FormBorderStyle = 3
$form.Name = "form"
$form.Text = "Packagemanager"

$scBar.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 331
$System_Drawing_Point.Y = 12
$scBar.Location = $System_Drawing_Point
$scBar.Name = "vScrollBar1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 225
$System_Drawing_Size.Width = 17
$scBar.Size = $System_Drawing_Size
$scBar.TabIndex = 1

$form.Controls.Add($vScrollBar1)
#endregion Generated Form Code

#Save the initial state of the form
$InitialFormWindowState = $form.WindowState
#Init the OnLoad event to correct the initial state of the form
$form.add_Load($OnLoadForm_StateCorrection)
#Show the Form
$form.ShowDialog()| Out-Null

} #End Function

#Call the Function