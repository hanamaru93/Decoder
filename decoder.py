#!/usr/bin/env python3
import base64
import html
import urllib
import urllib.parse
import argparse

def banner():
    print("\n")
    print("X==========================================================X")
    print("| ██████  ███████  ██████  ██████  ██████  ███████ ██████  |")
    print("| ██   ██ ██      ██      ██    ██ ██   ██ ██      ██   ██ |")
    print("| ██   ██ █████   ██      ██    ██ ██   ██ █████   ██████  |")
    print("| ██   ██ ██      ██      ██    ██ ██   ██ ██      ██   ██ |") 
    print("| ██████  ███████  ██████  ██████  ██████  ███████ ██   ██ |")
    print("X=====================-by Hanamaru-========================X")
    print("")                                                     

def decode_html(text):
   decode_text = html.unescape(text)
   return decode_text

def decode_url(text):
    decode_text = urllib.parse.unquote(text)
    return decode_text

def decode_base64(text):
    decode_text_bytes = base64.b64decode(text)
    decode_text = decode_text_bytes.decode("utf-8")
    return decode_text

def choose_decode(text, format):
    match format:
        case 'base64':
            print(f"Your text here => {decode_base64(text)}")
            print()
        case 'html':
            print(f"Your text here => {decode_html(text)}")
            print()
        case 'url':
            print(f"Your text here => {decode_url(text)}")
            print()
        case _:
            print("Error: Unknown Format!")
    pass

def main():
    parser = argparse.ArgumentParser(description="Program to decode any formats to utf-8 and ASCII")
    parser.add_argument("-t", "--text", type=str, required=True, help="Text to decode")
    parser.add_argument("--format", type=str, required=True, help="Format to decode Ex:(HTML, URL, base64).")
    args = parser.parse_args()
    banner()
    text = args.text
    format = args.format
    format = format.lower()
    choose_decode(text, format)


main()