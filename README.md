This is a practice project where I moved a basic web template from a single-machine setup to a two-tier architecture. Instead of everything living in one place, the website and the database are on separate servers, communicating over a private network.

The Setup
Web Server (Ubuntu): Running Apache and the frontend files. I pointed it to the DB server using a custom PHP bridge.

Database Server (CentOS): Running MariaDB. This is where the actual RSVP data lives.

Networking: I used Vagrant to spin up both machines on a private network (192.168.56.x) so they can talk to each other securely without being fully exposed to the public internet.

Why I Built It This Way
Separating the layers is better for security and scaling. If the web server gets hit with too much traffic, I can eventually add a second one without touching the database. Plus, it was a good excuse to practice working across different Linux distros (Ubuntu's apt vs CentOS's yum).

Current Status
The VMs are up and the database permissions are configured. The next step is finishing the save_rsvp.php script to handle the form data properly.

How to use
git clone this repo.

Run vagrant up.

Open 192.168.56.12 in your browser.

Quick Tip for the Push:
Since you're tired, just run these and call it a night:

Bash
echo "# Event RSVP Project" > README.md # If you want to just keep it super short
git add .
git commit -m "multi-vm infra setup complete"
git push origin main
