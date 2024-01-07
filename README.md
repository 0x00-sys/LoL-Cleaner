# League of Legends Log Cleaner

This is a simple batch script for cleaning up various cache and log files created by League of Legends.

## What does it do?

The script performs the following actions:

1. Kills all running League of Legends processes.
2. Deletes the following directories:
   - LCCache
   - Cache
   - GPUCache
   - Logs
   - Screenshots
   - Highlights
3. Deletes all League of Legends and Riot Games related files in the Windows Prefetch directory.
4. Deletes the Machine CFG directory in the ProgramData directory.
5. Deletes the Riot Games log directory in the LocalAppData directory.
6. Optionally deletes the Config directory.

## How to use

1. Download the `Cleaner.bat` file.
2. Run the script by double-clicking on it or executing it from the command line.
3. When prompted, choose whether or not to delete the Config files.

**Note:** The script needs to be run with administrator privileges to function correctly.

## Warning

This script deletes files and directories related to League of Legends. Use it at your own risk. Always make sure you have a backup of any important files before running the script.
