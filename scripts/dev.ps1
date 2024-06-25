# School dev init script
# by Joachim256

# Add to env
$gitpath = "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\CommonExtensions\Microsoft\TeamFoundation\Team Explorer\Git\cmd\"
## Check for path
if(!(Test-Path $gitpath)){
    echo "Git not found :/"
    pause
}

echo "Setting PATH env..."
$PATH = [Environment]::GetEnvironmentVariable("PATH");
[Environment]::SetEnvironmentVariable("PATH", "$PATH;$gitpath", "User");
# For this process
$env:Path += ";$gitpath";

# Clone repo
echo "Cloning repo..."
git clone https://github.com/Joachim256/csharp-school C:\Users\$Env:UserName\source\repos\csharp-school
git -C C:\Users\$Env:UserName\source\repos\csharp-school switch visualmaster

# Start cmd and file explorer
cd "C:\Users\$Env:UserName\source\repos\csharp-school\"
Start-Process -FilePath "C:\Windows\system32\cmd.exe"
Start-Process -FilePath "C:\Windows\explorer.exe"-ArgumentList "."
