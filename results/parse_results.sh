
echo >  flows
find . -name flows.txt -exec cat {} \; > flows

python result.py flows > final_results

find . -name results  -exec echo -e "\n" {} \; >> final_results  -exec cat {} \; >> final_results
