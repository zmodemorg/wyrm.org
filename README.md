# wyrm.org
XML and XSLT that powers wyrm.org

This should mostly work as-is, but I make no guarantees.

You're on your own for making this work, but at minimum you'll need to make sure that your web server knows what XML and XSLT files are and that is serves index.xml as the default index file. If you want to serve pre-rendered content so more browsers can view the content, I would suggest something like using nginx's libnginx-mod-http-xslt-filter.
