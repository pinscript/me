Import-Module z

Set-PoshPrompt -Theme zash

# Clear the console
function c {
    clear
}

Function Explore() {
	$exe = "explorer.exe"
	&$exe .
}

Set-Alias e Explore

# Open Cloudflare Tunnels
Function Argo-Tunnel($hostname) {
    cloudflared tunnel --hostname $hostname --url http://localhost
}

Function Build-Solution () {
    param(
        [Parameter(Mandatory=$false)][string]$Target
    )

    if($Target) {
        & "C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\MSBuild\Current\Bin\MSBuild.exe" "/t:$($Target)" "/m:8"
    } else {
        & "C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\MSBuild\Current\Bin\MSBuild.exe" "/m:8"
    }
}

## Git Aliases https://gist.github.com/dunckr/8334213
# Stage and commit the current changes
# Usage: gca "message"
function gca {
    git add -A
    git commit -v -a -m $args
}

# A nice, short log
function gl {
    git log --abbrev-commit -n20
}

# A short status
function gs {
    git status -s
}

function gpm {
	git push -u origin master
}

function gd {
	git diff
}

# A list of all branches, sorted by last commit date
function gb {
    git for-each-ref --sort='-authordate' --format='%(authordate)%09%(objectname:short)%09%(refname)' refs/heads | % {$_.replace("refs/heads/","")}
}
