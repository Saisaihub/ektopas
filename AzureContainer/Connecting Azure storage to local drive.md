```bash
$connectTestResult = Test-NetConnection -ComputerName topasstorage.file.core.windows.net -Port 445
if ($connectTestResult.TcpTestSucceeded) {
    # 保存密码，以便驱动器在重启时继续保留
    cmd.exe /C "cmdkey /add:`"topasstorage.file.core.windows.net`" /user:`"localhost\topasstorage`" /pass:`"JKePvJnGE6PCd3KIi6XVSGL7dNSjX5tXP6ftjrXMzIZ9iG826nKEyXPAIeaAtAOeu+jL5mD17Y8W+ASts57xhA==`""
    
    # 装载驱动器
    New-PSDrive -Name Z -PSProvider FileSystem -Root "\\topasstorage.file.core.windows.net\topas-io" -Persist

    # 显示已映射的驱动器
    Get-PSDrive -Name Z
} else {
    Write-Error -Message "无法通过端口 445 连接到 Azure 存储帐户。请检查您的组织或ISP是否阻止端口 445，或者使用 Azure P2S VPN、Azure S2S VPN 或 Express Route 通过不同端口隧道 SMB 流量。"
}

```

```bash
$connectTestResult = Test-NetConnection -ComputerName topasstorage.file.core.windows.net -Port 445
if ($connectTestResult.TcpTestSucceeded) {
    # Save the password so the drive will persist on reboot
    cmd.exe /C "cmdkey /add:`"topasstorage.file.core.windows.net`" /user:`"localhost\topasstorage`" /pass:`"JKePvJnGE6PCd3KIi6XVSGL7dNSjX5tXP6ftjrXMzIZ9iG826nKEyXPAIeaAtAOeu+jL5mD17Y8W+ASts57xhA==`""
    # Mount the drive
    New-PSDrive -Name Z -PSProvider FileSystem -Root "\\topasstorage.file.core.windows.net\topas-io" -Persist
    
    Get-PSDrive -Name Z
} else {
    Write-Error -Message "Unable to reach the Azure storage account via port 445. Check to make sure your organization or ISP is not blocking port 445, or use Azure P2S VPN, Azure S2S VPN, or Express Route to tunnel SMB traffic over a different port."
}
```

