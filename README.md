dashing-reload
==============

dashing-reload is a widget for Shopify's dashing framework to cause the
browser to reload the page periodically. This is done to work around
problems due to memory utilisation that become apparent after having a
dashboard loaded for an extended period of time.

This repo contains the reload widget that when included in a dashboard
will automatically cause the browser to reload.

Configuration
=============

Copy the reload directory to the widgets directory in your dashing
installation. Include the reload widget in your dashboard.

```html
<li data-row="999" data-col="1" data-sizex="1" data-sizey="1">
    <div data-id="reload" data-view="Reload" data-title="Reload"></div>
</li>
```

The pre-configured reload interval is 30 minutes. You may set this value
in reload.coffee
