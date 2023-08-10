# Tim Doran, Evangelos Kontopantelis, Jose M Valderas, Stephen Campbell, Martin Roland, Chris Salisbury, David Reeves, 2023.

import sys, csv, re

codes = [{"code":"10046001","system":"gprdproduct"},{"code":"12046001","system":"gprdproduct"},{"code":"12449001","system":"gprdproduct"},{"code":"3390001","system":"gprdproduct"},{"code":"3390002","system":"gprdproduct"},{"code":"3390003","system":"gprdproduct"},{"code":"4301001","system":"gprdproduct"},{"code":"4301002","system":"gprdproduct"},{"code":"5527001","system":"gprdproduct"},{"code":"5527002","system":"gprdproduct"},{"code":"5747007","system":"gprdproduct"},{"code":"6235007","system":"gprdproduct"},{"code":"8599001","system":"gprdproduct"},{"code":"8886001","system":"gprdproduct"},{"code":"8903001","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('hormone-replacement-drugs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["hormone-replacement-drugs-oestroge---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["hormone-replacement-drugs-oestroge---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["hormone-replacement-drugs-oestroge---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
