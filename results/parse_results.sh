
echo >  flows
find . -name flows.txt -exec cat {} \; > flows

echo "Global results:" > final_results
python result.py flows >> final_results

find . -name results  -exec echo -e "\n" {} \; >> final_results  -exec cat {} \; >> final_results
