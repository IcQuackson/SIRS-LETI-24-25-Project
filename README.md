# SIRS-LETI-24-25-Project
Application of several security mechanisms in a network composed by multiple computers, routers and other devices, built using Kathará

<p align="center">
  <img src="network.drawio.png" alt="network diagram" width="900">
  <img src="https://github.com/user-attachments/assets/456b45c8-f1e2-4ed5-8089-97cf67278e5c" alt="kathara" width="700">

</p>

## 🔐 Main Features

### 🌐 Network Emulation
- Full emulation of a corporate network with routers, switches, firewalls, servers, and workstations.
- Segmented into Oeiras, NY and Internet zones.

### 🔒 Security Mechanisms
- **VPN (OpenVPN):** Encrypted tunnel between Oeiras and NY using AES-128-GCM.
- **SSH (OpenSSH):** Remote admin access with public key authentication.
- **Firewall (iptables):** Packet filtering enforcing strict access rules and anti-spoofing.
- **IDS/IPS (Snort):** Intrusion detection and prevention with alerting + blocking (ICMP flood, port scans, etc.).

### 🧪 Testing & Tools
- Services emulated with `netcat` and `Apache2`.
- Testing via `ping`, `tcpdump`, `traceroute`, `nmap`, `curl`, and `nc`.

### 🛠️ Deliverables
- Network diagram with IP mappings.
- Fully configured Kathará lab.
- Security configuration + testing documented in a structured questionnaire.

---


## 📁 Resources
- Open Notes [HERE](https://docs.google.com/document/d/1E7QlaqlgsbNraZMBSjSRi31UOJsMH-_uyKHDtOrJUx8/edit?usp=sharing)
- Open Report [HERE](https://docs.google.com/document/d/1xaYT-1VKpHx1aT-xeMEjktiA_5APsadZX9LC8q0m0eA/edit?usp=sharing)

<details>
<summary>📌 <b>Subject</b> <i>(Click to show)</i></summary>

<br>

<p align="center">
  <img src="https://github.com/user-attachments/assets/49b9c232-c873-4034-b4fe-eb4e4a0b1a1e" alt="Subject Image">
</p>

</details>

> Built for the SIRS course @ Instituto Superior Técnico, 2024/25.
