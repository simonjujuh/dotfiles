# README

Simply save this config into /etc/systemd/system/battery-monitor.service, then enable & start the new service you've just created;

```bash
sudo systemctl enable battery-monitor
sudo systemctl start battery-monitor
```

Now, we need to get this service scheduled every 10 seconds. Just like the service itself, timer needs to be enabled & started, too:

```bash
sudo systemctl enable battery-monitor.timer
sudo systemctl start battery-monitor.timer
```
