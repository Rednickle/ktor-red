---
title: Pebble
caption: Using Pebble Templates
category: servers
keywords: html
feature:
  artifact: io.ktor:ktor-pebble:$ktor_version
  class: io.ktor.pebble.Pebble
redirect_from:
- /features/pebble.html
- /features/templates/pebble.html
ktor_version_review: 1.3.0
---

Ktor includes support for [Pebble](https://pebbletemplates.io) templates through the PEbble
feature.  Initialize the Pebble feature with the
[PebbleEngine.Builder](https://pebbletemplates.io/com/mitchellbosecke/pebble/PebbleEngine/Builder/):

{% include feature.html %}

## Installation
{: #installation}

You can install Pebble, and configure the `PebbleEngine.Builder`.

```kotlin
install(Pebble) { // this: PebbleEngine.Builder
    loader(ClasspathLoader().apply {
        prefix= 
    })
}
```

This loader will look for the template files on the classpath in the "templates" package.

## Usage
{: #usage}

A basic template looks like this:

```html
<html>

<p>Hello, {{ user }}</p>
<h1>{{ title }}</h1>

</html>
```

With that template in `resources/templates` it is accessible elsewhere in the the application
using the `call.respond()` method:

```kotlin
    get("/{...}") {
        call.respond(PebbleContent("hello.html", mapOf("user" to "Anonymous", "title" to "This is Pebble calling!")))
    }
```