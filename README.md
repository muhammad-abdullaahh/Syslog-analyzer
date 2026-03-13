# 🗂️ SysLog Analyzer

A Bash script that simulates multi-user system log generation and produces a structured summary report — built as part of an Operating Systems lab.

---

## 📋 Overview

This project creates sample `.log` files for multiple users, each containing realistic system events tagged as `INFO`, `WARNING`, or `ERROR`. A report script then parses every log file and compiles a consolidated summary into `mainfile.txt`.

---

## 📁 Project Structure

```
syslog-analyzer/
├── FILES/
│   ├── abdullah.log
│   ├── asad.log
│   └── urooba.log
├── analyze.sh
└── mainfile.txt        # Auto-generated on run
```

---

## ⚙️ How It Works

1. **Log Generation** — Creates a `FILES/` directory and writes simulated log entries for three users. Each log contains a mix of `INFO`, `WARNING`, and `ERROR` events.

2. **Report Generation** — Iterates over every `.log` file and extracts:
   - Total line count
   - Number of `INFO` entries
   - Number of `ERROR` entries
   - Number of `WARNING` entries

3. **Output** — All results are written to `mainfile.txt` with a timestamp and printed to the terminal.

---

## 🚀 Usage

```bash
chmod +x analyze.sh
./analyze.sh
```

### Sample Output (`mainfile.txt`)

```
--System Log Report--
Date: Fri Mar 13 12:00:00 PKT 2026
--- File: FILES/abdullah.log ---
Total lines: 2
Info count: 2
Error count: 1
WARNING count: 1
--- File: FILES/asad.log ---
...
END OF REPORT
```

---

## 🛠️ Concepts Demonstrated

- Bash scripting fundamentals
- File I/O and redirection (`>`, `>>`)
- `for` loops over file globs
- Text processing with `grep -c` and `wc -l`
- Command substitution with `$()`
- Directory and file management

---

## 📚 Course Info

**Subject:** Operating Systems  
**Type:** Open Ended Lab (OEL)  
**Tool:** Bash (GNU/Linux)
