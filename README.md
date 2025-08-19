# RaidCalendar
**Version:** 0.9
**Game Version:** Turtle WoW (Interface 11200)

RaidCalendar lets you view and sign up to raids in game on https://raid-helper.dev/ and register soft reserves on https://raidres.fly.dev

> [!IMPORTANT]
> RaidCalendar requires someone in your guild to be running [RaidCalendarBot](https://github.com/sica/RaidCalendarBot).

---

## Features

* Sign up/change role on guilds raids from https://raid-helper.dev/
* Soft resereve items on https://raires.fly.dev
* Export SR data to [RollFor](https://github.com/sica42/roll-for-vanilla) in game.
* Auto invite online members to raid


## ✨ Usage

The first time you run RaidCalendar you will get a welcome popup where you are required to link up your discord account. Enter your Discord username or server nick and click "Verify". You will then get a DM on Discord where you have to confirm that your character should be allowed to use your Discord ID to sign up to events.

You can access the calendar by typing `/rc` or clicking the map icon. The map icon also has a tooltip showing upcoming raids
<img width="277" height="235" alt="map_tooltip" src="https://github.com/user-attachments/assets/b4ee2181-f4ee-42b7-b3e9-8d7d72cdacb3" />

The overview window shows all upcoming raids.
* If you're signed up for an event, the signup icon will turn greeen.
* If you've soft reserved the maximum number of items, the SR icon will turn green.
* You can access settings from the "S" button in the top right corner.

<img width="669" height="317" alt="calendar_overview" src="https://github.com/user-attachments/assets/f3b6096d-e72c-4df5-ab8c-2b5812d542bd" />


Click a raid to view raid details. Here you can signup and change your role.

<img width="684" height="681" alt="event_details" src="https://github.com/user-attachments/assets/0a741526-23eb-4ce3-85c9-bcd8389d5a37" />

---

If the raid has a SR sheet attached, you can click the SR icon to open the SR window.
* The SR dropdown supports search if you click anything but the down arrow. You can use tab/shift-tab to select items with the keyboard.
* Currently only a maximum number of 2 SR items are supported.
* If you have RollFor installed, you can click the E in the top right corner to export the data to RollFor. 

<img width="667" height="452" alt="sr_popup" src="https://github.com/user-attachments/assets/1e8f6048-d5a1-43f4-b6e7-7afeff2233d3" />

---

## 📦 Installation

Using the Turtle Wow Launcher:

Copy and paste https://github.com/sica42/RaidCalendar into the launcher.

Manual install:
1. Download or clone the addon into your `Interface\AddOns\` folder.
2. Make sure the folder is named `GuildInventory`.
3. Restart WoW.

---

## 📄 License

MIT License — do what you want with it. Credits appreciated but not required.
