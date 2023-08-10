# Tim Doran, Evangelos Kontopantelis, Jose M Valderas, Stephen Campbell, Martin Roland, Chris Salisbury, David Reeves, 2023.

import sys, csv, re

codes = [{"code":"10787001","system":"gprdproduct"},{"code":"14268001","system":"gprdproduct"},{"code":"2240001","system":"gprdproduct"},{"code":"2240003","system":"gprdproduct"},{"code":"2374001","system":"gprdproduct"},{"code":"2374002","system":"gprdproduct"},{"code":"3251001","system":"gprdproduct"},{"code":"4342001","system":"gprdproduct"},{"code":"4342002","system":"gprdproduct"},{"code":"5837001","system":"gprdproduct"},{"code":"5838001","system":"gprdproduct"},{"code":"5838002","system":"gprdproduct"},{"code":"7748001","system":"gprdproduct"},{"code":"8453001","system":"gprdproduct"},{"code":"8530001","system":"gprdproduct"},{"code":"8600001","system":"gprdproduct"},{"code":"8611001","system":"gprdproduct"},{"code":"8611002","system":"gprdproduct"},{"code":"8611003","system":"gprdproduct"},{"code":"8913001","system":"gprdproduct"},{"code":"9916001","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('hormone-replacement-drugs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["hormone-replacement-drugs-ethinylestradiol---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["hormone-replacement-drugs-ethinylestradiol---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["hormone-replacement-drugs-ethinylestradiol---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
