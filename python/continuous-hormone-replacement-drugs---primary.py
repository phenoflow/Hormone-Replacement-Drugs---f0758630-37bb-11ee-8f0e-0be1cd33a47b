# Tim Doran, Evangelos Kontopantelis, Jose M Valderas, Stephen Campbell, Martin Roland, Chris Salisbury, David Reeves, 2023.

import sys, csv, re

codes = [{"code":"11110001","system":"gprdproduct"},{"code":"11679001","system":"gprdproduct"},{"code":"11792001","system":"gprdproduct"},{"code":"7559001","system":"gprdproduct"},{"code":"8137001","system":"gprdproduct"},{"code":"9354001","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('hormone-replacement-drugs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["continuous-hormone-replacement-drugs---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["continuous-hormone-replacement-drugs---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["continuous-hormone-replacement-drugs---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
