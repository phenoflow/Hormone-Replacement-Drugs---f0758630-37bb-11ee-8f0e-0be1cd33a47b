# Tim Doran, Evangelos Kontopantelis, Jose M Valderas, Stephen Campbell, Martin Roland, Chris Salisbury, David Reeves, 2023.

import sys, csv, re

codes = [{"code":"10370001","system":"gprdproduct"},{"code":"10372001","system":"gprdproduct"},{"code":"10418001","system":"gprdproduct"},{"code":"10499001","system":"gprdproduct"},{"code":"10790001","system":"gprdproduct"},{"code":"10790002","system":"gprdproduct"},{"code":"10790003","system":"gprdproduct"},{"code":"10917001","system":"gprdproduct"},{"code":"10917002","system":"gprdproduct"},{"code":"10917003","system":"gprdproduct"},{"code":"11062001","system":"gprdproduct"},{"code":"11064001","system":"gprdproduct"},{"code":"11171001","system":"gprdproduct"},{"code":"11668001","system":"gprdproduct"},{"code":"11670001","system":"gprdproduct"},{"code":"12240001","system":"gprdproduct"},{"code":"12948001","system":"gprdproduct"},{"code":"12950001","system":"gprdproduct"},{"code":"12951001","system":"gprdproduct"},{"code":"12952001","system":"gprdproduct"},{"code":"12953001","system":"gprdproduct"},{"code":"12955001","system":"gprdproduct"},{"code":"12956001","system":"gprdproduct"},{"code":"12957001","system":"gprdproduct"},{"code":"14023001","system":"gprdproduct"},{"code":"14024001","system":"gprdproduct"},{"code":"14025001","system":"gprdproduct"},{"code":"14026001","system":"gprdproduct"},{"code":"14032001","system":"gprdproduct"},{"code":"14033001","system":"gprdproduct"},{"code":"14034001","system":"gprdproduct"},{"code":"14035001","system":"gprdproduct"},{"code":"14036001","system":"gprdproduct"},{"code":"14037001","system":"gprdproduct"},{"code":"2006001","system":"gprdproduct"},{"code":"2006002","system":"gprdproduct"},{"code":"236001","system":"gprdproduct"},{"code":"2799009","system":"gprdproduct"},{"code":"3252003","system":"gprdproduct"},{"code":"3255001","system":"gprdproduct"},{"code":"397009","system":"gprdproduct"},{"code":"397010","system":"gprdproduct"},{"code":"4659001","system":"gprdproduct"},{"code":"4660001","system":"gprdproduct"},{"code":"4828009","system":"gprdproduct"},{"code":"5480003","system":"gprdproduct"},{"code":"5481001","system":"gprdproduct"},{"code":"5481002","system":"gprdproduct"},{"code":"5481003","system":"gprdproduct"},{"code":"5483001","system":"gprdproduct"},{"code":"5483002","system":"gprdproduct"},{"code":"5483003","system":"gprdproduct"},{"code":"6926003","system":"gprdproduct"},{"code":"7037002","system":"gprdproduct"},{"code":"7037003","system":"gprdproduct"},{"code":"704001","system":"gprdproduct"},{"code":"7628001","system":"gprdproduct"},{"code":"8128001","system":"gprdproduct"},{"code":"8129001","system":"gprdproduct"},{"code":"8130001","system":"gprdproduct"},{"code":"8379002","system":"gprdproduct"},{"code":"8379003","system":"gprdproduct"},{"code":"8732001","system":"gprdproduct"},{"code":"8909002","system":"gprdproduct"},{"code":"8909003","system":"gprdproduct"},{"code":"9105001","system":"gprdproduct"},{"code":"9164001","system":"gprdproduct"},{"code":"9165001","system":"gprdproduct"},{"code":"9165003","system":"gprdproduct"},{"code":"9186001","system":"gprdproduct"},{"code":"9353001","system":"gprdproduct"},{"code":"9752001","system":"gprdproduct"},{"code":"9752002","system":"gprdproduct"},{"code":"9758001","system":"gprdproduct"},{"code":"9758002","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('hormone-replacement-drugs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["hormone-replacement-drugs-20microgram---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["hormone-replacement-drugs-20microgram---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["hormone-replacement-drugs-20microgram---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
