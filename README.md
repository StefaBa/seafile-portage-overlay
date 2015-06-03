seafile-portage-overlay
=======================

Portage overlay to maintain seafile ebuilds.

Can be installed using layman with the following command:

```layman -f -o https://raw.github.com/StefaBa/seafile-portage-overlay/master/seafile-portage-overlay.xml -a seafile-stefaba```

____
To get rid of of the following Warning:
```
* Warnings:
* ------
* Overlay "seafile-stefaba" could not be found in the remote lists.
* Please check if it has been renamed and re-add if necessary.
```

Just put the `seafile-portage-overlay.xml` into your layman-overlay directory, like so:

`wget "https://raw.github.com/StefaBa/seafile-portage-overlay/master/seafile-portage-overlay.xml" -O /etc/layman/overlays/seafile-stefaba.xml`
