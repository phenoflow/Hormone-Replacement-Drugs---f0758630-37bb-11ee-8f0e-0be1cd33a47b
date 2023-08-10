# Tim Doran, Evangelos Kontopantelis, Jose M Valderas, Stephen Campbell, Martin Roland, Chris Salisbury, David Reeves, 2023.

import sys, csv, re

codes = [{"code":"10417001","system":"gprdproduct"},{"code":"10530001","system":"gprdproduct"},{"code":"10600001","system":"gprdproduct"},{"code":"10639001","system":"gprdproduct"},{"code":"1102001","system":"gprdproduct"},{"code":"1107001","system":"gprdproduct"},{"code":"11087001","system":"gprdproduct"},{"code":"11457001","system":"gprdproduct"},{"code":"1159001","system":"gprdproduct"},{"code":"1160001","system":"gprdproduct"},{"code":"1271001","system":"gprdproduct"},{"code":"13167001","system":"gprdproduct"},{"code":"13168001","system":"gprdproduct"},{"code":"13941001","system":"gprdproduct"},{"code":"13949001","system":"gprdproduct"},{"code":"2374003","system":"gprdproduct"},{"code":"3252001","system":"gprdproduct"},{"code":"3252002","system":"gprdproduct"},{"code":"3254001","system":"gprdproduct"},{"code":"397011","system":"gprdproduct"},{"code":"4661001","system":"gprdproduct"},{"code":"4662001","system":"gprdproduct"},{"code":"5482001","system":"gprdproduct"},{"code":"6303001","system":"gprdproduct"},{"code":"6303002","system":"gprdproduct"},{"code":"6421001","system":"gprdproduct"},{"code":"6680001","system":"gprdproduct"},{"code":"6684001","system":"gprdproduct"},{"code":"7317001","system":"gprdproduct"},{"code":"7414001","system":"gprdproduct"},{"code":"779002","system":"gprdproduct"},{"code":"779003","system":"gprdproduct"},{"code":"780001","system":"gprdproduct"},{"code":"8123001","system":"gprdproduct"},{"code":"8124001","system":"gprdproduct"},{"code":"8125001","system":"gprdproduct"},{"code":"8134001","system":"gprdproduct"},{"code":"8135001","system":"gprdproduct"},{"code":"8140001","system":"gprdproduct"},{"code":"8319001","system":"gprdproduct"},{"code":"8520001","system":"gprdproduct"},{"code":"8576001","system":"gprdproduct"},{"code":"8587001","system":"gprdproduct"},{"code":"8587002","system":"gprdproduct"},{"code":"8587003","system":"gprdproduct"},{"code":"8610003","system":"gprdproduct"},{"code":"8621001","system":"gprdproduct"},{"code":"8648001","system":"gprdproduct"},{"code":"9124001","system":"gprdproduct"},{"code":"9124002","system":"gprdproduct"},{"code":"9476001","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('hormone-replacement-drugs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["hormone-replacement-drugs-femtab---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["hormone-replacement-drugs-femtab---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["hormone-replacement-drugs-femtab---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
