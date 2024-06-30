#! /usr/bin/bash

# 选择备份还是恢复
if (whiptail --title "Backup and Recovery" --yes-button "Backup" --no-button "Recovery" --yesno "Bakcup or Recovery?" 10 60) then
	while [[ true ]]
	do
		DISTROS=$(whiptail --title "Backup and Recovery" --checklist \
		"Choose one:" 30 60 10 \
		"Backup vim configuration" "vimrc,snippet" ON \
		"Install vscode configuration" "snippet" ON \
		"Install zsh configuration" "zshrc" ON \
		"Install i3wm configuration" "" ON \
		"Backup ranger configuration" "" ON \
		3>&1 1>&2 2>&3)
		 
		exitstatus=$?
		if [ $exitstatus = 0 ]; then
			whiptail --title "Done" --msgbox "Your Choices are: $DISTROS" 10 60
		else
			echo "You chose Cancel."
			break
		fi
	done
else
	while [[ true ]]
	do
		DISTROS=$(whiptail --title "Backup and Recovery" --checklist \
		"Choose one:" 30 60 10 \
		"apt 换源和更新" "" ON \
		"Install vim" "编辑器" ON \
		"Install vscode" "编辑器" ON \
		"Install zsh" "shell" ON \
		"Install ranger" "终端文件浏览" ON \
		"Install i3wm" "平铺式窗口管理器" ON \
		"Install edge" "浏览器" ON \
		"Install obsidian" "笔记" ON \
		"Install wd" "终端查词小工具" ON \
		"Install LaTeX" "使用 Miktex 发行版" ON \
		3>&1 1>&2 2>&3)
		 
		exitstatus=$?
		if [ $exitstatus = 0 ]; then
			whiptail --title "Done" --msgbox "Your Choices are: $DISTROS" 10 60
		else
			echo "You chose Cancel."
			break
		fi
	done
fi
