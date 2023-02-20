---
layout: post
title: "Using Cloudflare for Dynamic URL Redirects"
description: "This is a guide to set up dynamic URL redirects for free using Cloudflare Pages"
permalink: 
tags:
  - Technology
  - Web Hosting
date: 2023-01-31 10:00:00
---

A couple of days ago, a [domain switch]({% link _posts/2023/2023-01-28-new-domain-name.md %}) took place on this website, and I wanted to have a way to dynamically[^1] forward URLs from the old domain to the new one, preserving the current permalink structure.

Searching the web, I came across the "[Using Netlify for Dynamic URL Redirects](https://bt.ht/netlify-urls/){: rel="noopener noreferrer nofollow" target="_blank"}" article, written by Brad Taunt. Problem is, I didn't want to signup for Netlify just for that.

My blog is already hosted on Cloudflare, so it made sense to me to use it for the redirects too. I checked their documentation to see if somenthing similiar could be achieved. And it is, in fact, really simple and free. 

## Steps to reproduce

### Setup content locally

* Create a folder in your computer and add the following files:

```zsh
$ touch _redirects index.html 404.html
```

* Add the following[^2] to your `_redirects` file:

```
/  https://domain.tld  301
/* https://domain.tld/:splat 301
```

{:.warning}
Replace **domain.tld** with your domain.

{:.info}
Breaking down the above lines:<br><br>~ **First line:** Redirects all connections from the old domain's home page to the new domain one;<br><br>~ **Second line:** A splat (asterisk, `*`) will greedily match all characters and use them to dinamically redirect a user to the new location with `:splat`.

* Add the following to both index.html and 404.html file.

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <title>403 Forbidden</title>
</head>
<body>
    <h1>403 Forbidden</h1>
</body>
</html>
```

### Create a new Cloudflare Pages project

* Access your [Cloudflare Dashboard](https://dash.cloudflare.com){: rel="noopener noreferrer nofollow" target="_blank"} (create an account if needed) and click Pages on the sidebar.

* Now, **create a new project**.

{:.info}
You have three options to setup your project: connecting to a git repository (usually Github or Gitlab); uploading a folder; or using the [Wrangler cli tool](https://dash.cloudflare.com/afaafa5215f29a15b679eae28063a0a5/pages/new/wrangler-guide){: rel="noopener noreferrer nofollow" target="_blank"}. We're uploading our folder in this example.

* Give a name to your project, upload the folder you just created, then click deploy.

### Set up a custom domain

* Now, in your new project's page, look for the **custom domains** tab, then add a new domain.

* Type your domain.tld, then follow the instructions given to add the proper `CNAME` record to the assigned project url. If your DNS is managed by Cloudflare, this will be a 1-click process.

{:.info}
**NOTE**: If you're redirecting from a zone apex, i.e. example.com, instead of a subdomain, Cloudflare will require your old domain name nameservers to match Cloudflare's.

## Conclusion

That's pretty much it!

Cloudflare will be in charge of generating an SSL certificate for you, and by now, you'll have all of your pre-existing URLs forwarded dynamically to your new domain.

{:.tip}
**TIP**: A similar approach can be used to have your big URLs shortened to another small domain.tld. Of course, without all telemetry those URL Shortener services provide.

[^1]: Dynamically in this case means to preserve the current permalink structure, instead of DNS forward setup, which doesn't allow this level of customization.

[^2]: Feel free to add to your `_redirects` file a different set of rules. All options are well documented [here](https://developers.cloudflare.com/pages/platform/redirects){: rel="noopener noreferrer nofollow" target="_blank"}.

*[DNS]: Domain Name System