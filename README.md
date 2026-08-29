# Monopoly Guy — Balatro Mod

<p align="center">
  <img src="assets/2x/joker_atlas.png" alt="Monopoly Jokers" width="180">
</p>

<p align="center">
  <strong>The only true, financially powerful jokers for your rounds.</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Balatro-Mod-8A2BE2?style=for-the-badge" alt="Balatro Mod">
  <img src="https://img.shields.io/badge/Steamodded-Required-4B5563?style=for-the-badge" alt="Steamodded Required">
  <img src="https://img.shields.io/badge/Status-Playable-2EA043?style=for-the-badge" alt="Playable">
</p>

---

## The Jokers

**Monopoly Guy** starts with a value of **$50**.

At the end of each round:

1. It gives you its current value in dollars.
2. Its value decreases by **$5**.
3. Once it pays out its final **$5**, its value reaches **$0** and the Joker destroys itself.

### Payout progression

```text
$50 → $45 → ... → $10 → $5 → Destroyed
```

The idea is intentionally inspired by the temporary value mechanic of **Ice Cream**, but instead of losing Chips, **Monopoly Guy burns through its cash value**.

---

**Pay Joker** is a Common Joker that rewards you for every card you play.

### Scaling by Ante

| Ante | Chips per card | Money per card |
| ---- | -------------- | -------------- |
| 1    | +100           | +$1            |
| 2    | +150           | +$2            |
| 3    | +200           | +$3            |
| 4    | +250           | +$4            |
| 5    | +300           | +$5            |

The effect scales automatically as the Ante increases, making Pay Joker stronger throughout the run.

---

## Features

### First Joker
- Starts at **`$50`**.
- Loses **$5** of value after each end-of-round payout.
- Pays out once per round.
- Destroys itself after the `$5` payout.
- It costs 25 of money
- Not compatible with **Blueprint**.
- Not compatible with **Brainstorm**.

### Second Joker
- Starts at **C50** and **`$1`**.
- The cards grant the values ​​of the joker
- Increases its value for each Ante.
- It costs 6 of money
- Compatible with **Blueprint**.
- Not compatible with **Brainstorm**.

---

## Gif Showcase
<p align="left">
  <img src="assets/showcase.gif" alt="Showcase" width="470">
  <img src="assets/showcase2.gif" alt="Showcase2" width="470">
</p>

---

## Installation

### Requirements

- **Balatro v1.0.1o or newer**
- **Steamodded v1.0.0-BETA-1501a or newer**

### Installation steps

0. Browse it in Balatro Mod Manager as Monopoly Mod an download.

#### Other form

1. Install **Steamodded** for your Balatro version.
2. Download or clone this repository.
3. Place the mod folder inside your Balatro `Mods` directory.
4. Launch Balatro.
5. Enable the mod through Steamodded if necessary.

### From GitHub

```bash
git clone https://github.com/Rodro-Dev/monopoly-mod.git
```

Then move the resulting `monopoly-mod` folder into your Balatro `Mods` directory.

> **Note:** Installation paths can vary depending on your operating system and Balatro setup.

---

## Contributing

Suggestions, bug reports, balance ideas, and improvements are welcome.

When reporting an issue, please include:

- Your Balatro version.
- Your Steamodded version.
- The mod version/commit you are using.
- A description of what happened.
- A screenshot or log when possible.

---

## License

This project is licensed under the **MIT License**.

See [`LICENSE`](LICENSE) for the full license text.

> **Third-party content:** Balatro, Steamodded, and any third-party assets or trademarks remain the property of their respective owners. This repository's license applies only to material owned by this project to the extent permitted by law.

---

## Credits

**Created by:** [Rodro-Dev](https://github.com/Rodro-Dev)

Special thanks to the Balatro and Steamodded modding communities.

---

## Support the Project

If you enjoy the mod, consider giving the repository a **⭐star** on GitHub. It helps the project get noticed and makes it easier for other players to find.
