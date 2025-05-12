# ⏱️ Pomodoro CLI – Bash Terminal Timer with Notifications

A simple yet effective command-line Pomodoro timer built in Bash, designed to boost your productivity using the proven Pomodoro technique. It includes system notifications and customizable work/break durations.


---

## 🧠 What is the Pomodoro Technique?

The Pomodoro Technique is a time management method developed by Francesco Cirillo. It uses a timer to break down work into intervals, traditionally 25 minutes in length, separated by short breaks.

---

## 📦 Features

- 📌 Customizable work duration and break cycles
- 🔔 System notifications using `notify-send` (Linux desktop)
- 💻 Simple and lightweight — written entirely in Bash
- ⏳ Displays live countdown in terminal

---

## 🚀 How It Works

1. The user is prompted to enter the number of hours to work.
2. Each hour includes **two 25-minute Pomodoro sessions**.
3. After each Pomodoro, a notification is shown with a short or long break suggestion.
4. Every 4 cycles, a longer break is provided.

---


## 🛠️ Requirements

- Bash
- `notify-send` (commonly available via `libnotify-bin` on Ubuntu)

To install `notify-send` if it’s missing:

```bash
sudo apt install libnotify-bin

