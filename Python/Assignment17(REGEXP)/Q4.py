import re

string = '''
    Suraj's phone number is +91-9876543219, and he recently updated his aadhar to 1234-5678-9123. 
    You can reach him at Suraj.Kumar@example.com if you have any questions.

    
    Training Centre 
    Office No:2, 1st Floor, Gokhale Sanchit, Above Hotel Aamaya, BMCC raod, Deccan Gymkhana, Pune:411004 Maharashtra.
    INDIA

    info@know-it.co.in

    Vaibhav: 9823434616
    Amit: 7768023636
    Milind: 9021479888
    Know-IT Office:020-25648081/82

    Corporate Office:
    1B, I-Space, Survey no.51, Off Pune-Mumbai Bypass Road,
    Bavdhan Khurd, Pune-411021
'''

# print(string)

print(re.findall(r"\b\d{4}[\s-]?\d{4}[\s-]?\d{4}\b", string))