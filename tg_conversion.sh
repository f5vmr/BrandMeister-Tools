 #!/bin/bash
clear
rm  index.* talkgroup_ids.json tx_index.*
curl -s https://api.brandmeister.network/v1.0/groups/  | jq -s . > tg_index.txt
sed -i 's=\\/=/=g' tg_index.txt
sed -i 's/\"//g' tg_index.txt
sed -i 's/: /;/g' tg_index.txt
sed -i 's/,//g' tg_index.txt
sed -i 's/Zeland/Zealand/g' tg_index.txt
sed -i 's/Διεθνές Ελλάδα/Greece National/g' tg_index.txt
sed -i 's/UK Call - QSY to 2351 or 2352/UK Wide /g' tg_index.txt
sed -i 's/Tac 310 NOT A CALL CHANNEL/Tac 310 USA/g' tg_index.txt
sed -i 's/UK & Phoenix - QSY to 2353/UK Calling \& I\/B from IPSC2-E/g' tg_index.txt
sed -i 's+\\r\\n++g' tg_index.txt
sed -i  '/401.\|406.\|424.\|425.\|426.\|428.\|430.\|431.\|432.\|437/d' tg_index.txt
sed -i  '/440.\|441.\|442.\|450.\|460.\|463.\|464.\|461.\|470.\|475.\|477.\|479.\|480.\|486./d' tg_index.txt
sed -i  '1d;$d' tg_index.txt
sed -i  '1d;$d' tg_index.txt

echo "File conversions complete - Now performing json conversion"
python3 tg_run.json
echo "complete"
