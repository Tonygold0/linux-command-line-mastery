# Task 1: Linux File Management

## 1. Overview
This exercise covered Linux file management operations,
including creating, copying, moving, renaming, deleting,
viewing and searching files.

## 2. Commands Practised

| Command | Purpose |
|---------|---------|
| touch | Create empty files |
| mkdir | Create directories |
| echo | Display or write text |
| ls -lh | List files with detailed information |
| cat | Display file contents |
| cp | Copy files |
| mv | Move or rename files |
| rm | Delete files |
| rm -i | Delete files with confirmation |
| rm -r | Delete directories recursively |
| less | View files page by page |
| head | Display the beginning of a file |
| tail | Display the end of a file |
| find | Search for files and directories |
| grep | Search for text within files |

## 3. Practical Observations

- touch successfully created empty text files.
- echo and output redirection were used to write content.
- The > operator overwrites existing file content.
- The >> operator appends content to existing files.
- cp successfully created backup copies.
- mv successfully renamed and moved files.
- rm was used to remove files and directories.
- cat displayed complete file contents.
- less provided page-based file viewing.
- head and tail displayed selected file lines.
- find located text files in the project directory.
- grep successfully searched for Linux across multiple files.

## 4. Search Results

The find command identified four text files.

The grep -rn command successfully located occurrences
of Linux and displayed their filenames and line numbers.

An observation was made that linux-devops.txt contained
a repeated sentence after content was appended.

## 5. DevOps Applications

Linux file management is important in DevOps for:

- Managing application configuration files.
- Creating and maintaining backup files.
- Inspecting application logs.
- Searching system files.
- Managing deployment directories.
- Maintaining automation scripts.

## 6. Troubleshooting and Lessons Learned

- Verified file locations using find.
- Used ls to inspect directory contents.
- Learned that rm operations can permanently delete files.
- Distinguished between overwriting and appending file content.
- Used less to inspect files interactively.

## 7. Conclusion

This exercise provided practical experience with
essential Linux file management commands and their
applications in system administration and DevOps.

# Task 2: Linux Directory Navigation

## 1. Overview
This exercise covered Linux filesystem navigation,
absolute and relative paths, nested directory creation
and exploration of standard Linux directories.

## 2. Commands Practised

| Command | Purpose |
|---------|---------|
| pwd | Display current working directory |
| cd | Change working directory |
| cd .. | Navigate to parent directory |
| cd ~ | Navigate to home directory |
| ls | List directory contents |
| ls -la | List all files with detailed information |
| mkdir -p | Create nested directories |
| tree | Display directory hierarchy |
| cat /etc/hostname | Display system hostname |

## 3. Standard Linux Directories

- /etc: System configuration files.
- /var: Variable system data and logs.
- /tmp: Temporary files.
- /home: Regular users' home directories.
- /root: Root user's home directory.
- /usr: User applications and utilities.

## 4. Practical Observations

- The system hostname was identified as TONY.
- Explored system configuration files in /etc.
- Identified system logs in /var/log.
- Inspected temporary files in /tmp.
- Used ls -la to inspect hidden files and permissions.
- Successfully navigated using absolute paths.
- Successfully navigated using relative paths.
- Created development, testing and production
  directory structures using mkdir -p.
- Verified directory structures using tree.

## 5. Absolute vs Relative Paths

Absolute paths begin at the root directory (/).

Relative paths are interpreted from the current
working directory.

The cd .. command moves one directory level upwards.

The tilde (~) represents the user's home directory.

## 6. DevOps Applications

Directory navigation is essential for:

- Managing application deployment structures.
- Organising development, testing and production files.
- Locating system configuration files.
- Inspecting application and system logs.
- Managing temporary files.
- Navigating server environments.

## 7. Conclusion

This exercise provided practical experience with
Linux filesystem navigation and directory management.
The exercises demonstrated how Linux directories
are organised and how absolute and relative paths
are used in system administration and DevOps.

## Task 3: Linux System Monitoring and Administration

### Objective
Practise Linux system monitoring, user and group administration, file permissions, ownership management and administrative privileges.

### 1. System Monitoring Commands

| Command | Purpose |
|---|---|
| `ps aux` | Displays running processes. |
| `top -b -n 1` | Captures a single process-monitoring snapshot. |
| `df -h` | Displays filesystem disk usage in human-readable units. |
| `free -m` | Displays memory usage in megabytes. |
| `uptime` | Displays system uptime and load averages. |

### 2. User and Group Management

| Command | Purpose |
|---|---|
| `whoami` | Displays the current username. |
| `id` | Displays UID, GID and group memberships. |
| `groups` | Lists groups associated with a user. |
| `id -gn` | Displays the primary group name. |
| `groupadd` | Creates a new group. |
| `useradd -m -s /bin/bash` | Creates a user with a home directory and Bash shell. |
| `usermod -aG` | Adds a user to supplementary groups. |
| `userdel -r` | Deletes a user and its home directory. |
| `groupdel` | Deletes a group. |
| `getent` | Retrieves user and group information. |

### 3. File Permissions

Practised numeric and symbolic permission management using `chmod`.

| Command | Purpose |
|---|---|
| `chmod 755 filename` | Owner gets read, write and execute; group and others get read and execute. |
| `chmod u-x filename` | Removes execute permission from the owner. |
| `chmod u+x filename` | Adds execute permission to the owner. |
| `chmod 644 filename` | Owner gets read and write; group and others get read only. |
| `stat -c '%A %a %n' filename` | Displays symbolic permissions, numeric permissions and filename. |

Permission values:
- Read (`r`) = 4
- Write (`w`) = 2
- Execute (`x`) = 1

### 4. File Ownership and Administrative Privileges

| Command | Purpose |
|---|---|
| `chown root:root filename` | Changes file owner and group to root. |
| `chown "$USER":"$(id -gn)" filename` | Restores ownership to the current user and primary group. |
| `sudo whoami` | Confirms execution with elevated privileges. |
| `sudo -l` | Lists commands the current user can execute using sudo. |

### Practical Observations

- Identified the current Linux account as `TonyDev`, with UID 1000.
- Confirmed membership of the `sudo` and `docker` groups.
- Created and subsequently removed a temporary user named `devopsuser` and group named `devops-lab`.
- Created `artifacts/sample-files/permissions-demo.sh` for permission and ownership exercises.
- Changed file permissions between 755 and 644 using numeric notation.
- Practised adding and removing execute permissions using symbolic notation.
- Changed file ownership to `root:root` and successfully restored it to `TonyDev:TonyDev`.
- Verified administrative access using `sudo whoami` and `sudo -l`.

### DevOps Relevance

System monitoring helps engineers assess resource utilisation, identify running processes and investigate performance issues. User and group management, permissions and ownership are essential for securing Linux servers, managing deployment accounts, controlling application access and protecting infrastructure.

### Conclusion

Completed practical exercises covering Linux system monitoring, user and group management, file permissions, ownership and administrative privileges. Verified the changes and cleaned up temporary accounts and groups.

## Task 4: Linux Networking

### Objective
Practise Linux networking commands to inspect network interfaces, test connectivity, identify IP addresses and inspect listening ports.

### 1. Network Interface Inspection

| Command | Purpose |
|---|---|
| `ip addr` | Displays network interfaces and their assigned IP addresses. |
| `hostname -I` | Displays assigned IP addresses in a concise format. |

### 2. Network Connectivity

| Command | Purpose |
|---|---|
| `ping -c 4 google.com` | Sends four ICMP echo requests to test connectivity and DNS resolution. |

### 3. Network Socket Inspection

| Command | Purpose |
|---|---|
| `ss -tuln` | Displays listening TCP and UDP sockets using numeric addresses and ports. |

### Command Options

- `-c 4`: sends four ping requests.
- `-t`: displays TCP sockets.
- `-u`: displays UDP sockets.
- `-l`: displays listening sockets.
- `-n`: displays numeric addresses and port numbers.
- `-I`: displays assigned IP addresses.

### Practical Observations

- Identified the loopback interface (`lo`) and primary WSL network interface (`eth0`).
- Identified the WSL IPv4 address as `172.29.205.229` during the exercise.
- Successfully tested external connectivity using `ping -c 4 google.com`.
- Received all four ping responses, with 0% packet loss and approximately 8.23 ms average latency.
- Inspected TCP and UDP listening sockets using `ss -tuln`.
- Observed DNS resolver services listening on port 53.
- Practised displaying assigned IP addresses using `hostname -I`.

### DevOps Relevance

Networking commands are essential for diagnosing connectivity issues, identifying server IP addresses, checking DNS resolution, inspecting listening ports and troubleshooting application deployments. They help DevOps engineers verify that services are reachable and operating on their expected network interfaces and ports.

### Conclusion

Completed practical Linux networking exercises covering interface inspection, connectivity testing, IP address identification and socket inspection.


## Task 5: Linux Pipes and Output Redirection

### Objective
Learn how to redirect command output, capture error messages, connect commands using pipes, search text, sort information, count duplicate entries and extract data using AWK.

### 1. Output Redirection

| Operator | Purpose |
|---|---|
| `>` | Redirects output into a file, overwriting existing content. |
| `>>` | Appends output to a file without deleting existing content. |
| `2>` | Redirects standard error into a file. |

Practical exercises:
- Created `commands.log` using `>`.
- Added another entry using `>>`.
- Generated and captured an error using `2>` in `errors.log`.

### 2. Pipes and Text Searching

| Command | Purpose |
|---|---|
| `\|` | Passes the output of one command to another. |
| `grep "Task 5"` | Searches for matching text. |
| `grep -n "Task 5"` | Displays matching text with its line number. |

Practical exercise:
```bash
cat artifacts/logs/commands.log | grep "Task 5"
```

### 3. Sorting and Duplicate Counting

| Command | Purpose |
|---|---|
| `sort` | Arranges lines alphabetically. |
| `uniq -c` | Counts consecutive duplicate lines. |
| `sort -nr` | Sorts numbers in descending order. |

Practical exercise:
```bash
sort artifacts/logs/duplicate-tools.txt | uniq -c
```

Combined example:
```bash
sort artifacts/logs/duplicate-tools.txt | uniq -c | sort -nr
```

### 4. Text Processing with AWK

| Command | Purpose |
|---|---|
| `awk '{print $1}'` | Extracts the first field from each line. |
| `awk 'END {print NR}'` | Displays the total number of lines. |

### 5. Saving Output with TEE

Practical exercise:
```bash
sort artifacts/logs/duplicate-tools.txt | uniq -c | sort -nr | tee artifacts/logs/tool-summary.txt
```

The `tee` command displays the output in the terminal while saving a copy to `tool-summary.txt`.

### Practical Files Created

- `artifacts/logs/commands.log`
- `artifacts/logs/errors.log`
- `artifacts/logs/tools.txt`
- `artifacts/logs/duplicate-tools.txt`
- `artifacts/logs/tool-summary.txt`

### DevOps Relevance

These techniques are useful for application log analysis, troubleshooting failed deployments, monitoring application output, identifying repeated errors, extracting important information and generating reports.

### Conclusion

Successfully practised Linux output redirection, error handling, pipelines, text searching, sorting, duplicate counting, AWK processing and output logging. These skills provide a foundation for automating Linux administration and DevOps workflows.

## Task 6: Bash Scripting and Automation

### Objective
Understand Bash scripting fundamentals and practise automating Linux commands using scripts, variables, conditional statements and loops.

### 1. Creating and Executing Bash Scripts

Created and executed:
- `scripts/hello-devops.sh`
- `scripts/variables-demo.sh`
- `scripts/file-check.sh`
- `scripts/for-loop.sh`
- `scripts/while-loop.sh` (prepared as an additional exercise)

Basic Bash script structure:

```bash
#!/bin/bash
echo "Welcome to Bash scripting"
```

Execution commands:

```bash
chmod +x scripts/hello-devops.sh
./scripts/hello-devops.sh
```

### 2. Variables

Practised storing and retrieving information using variables.

```bash
PROJECT="Linux Command Line Mastery"
USERNAME=$USER
PROJECT_DIRECTORY=$(pwd)

echo "Project Name: $PROJECT"
echo "Username: $USERNAME"
echo "Project Directory: $PROJECT_DIRECTORY"
```

Key concepts:
- Variables store reusable information.
- `$VARIABLE` retrieves a variable's value.
- `$(command)` captures the output of a command.
- Bash variable assignments must not contain spaces around `=`.

### 3. Conditional Statements

Practised using `if`, `else`, `then` and `fi` to check whether files exist.

```bash
FILE="README.md"

if [ -f "$FILE" ]; then
    echo "SUCCESS: $FILE exists."
else
    echo "ERROR: $FILE does not exist."
fi
```

File tests:
- `-f`: checks for a regular file.
- `-d`: checks for a directory.
- `-e`: checks whether a path exists.
- `-r`: checks whether a file is readable.
- `-w`: checks whether a file is writable.
- `-x`: checks whether a file is executable.

### 4. For Loops

Practised repeating commands across multiple environments.

```bash
for environment in development testing production
do
    echo "Setting up $environment environment"
done
```

For loops are useful for repetitive operations such as creating directories and processing multiple files.

### 5. While Loops

Introduced the concept of repeating commands while a condition remains true.

```bash
COUNT=1

while [ "$COUNT" -le 5 ]
do
    echo "Current count: $COUNT"
    COUNT=$((COUNT + 1))
done
```

### 6. Permissions and Script Execution

Practised:
- Adding executable permissions using `chmod +x`.
- Running scripts using `./script-name.sh`.
- Inspecting permissions using `ls -l`.
- Troubleshooting a `Permission denied` error.

### DevOps Relevance

Bash scripting is useful for automating repetitive administrative tasks, managing deployment environments, checking files and directories, processing logs and simplifying server maintenance.

### Conclusion

Completed practical introductions to Bash script creation, execution, variables, conditional statements and loops. These fundamentals provide a foundation for more advanced Linux automation and DevOps engineering.
