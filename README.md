This provides a spacemacs layer for [ob-mermaid](https://github.com/arnm/ob-mermaid)

# Instructions

## Rerequisites
Install the [mermaid-cli](https://github.com/mermaid-js/mermaid-cli)

## Installation
1. Clone this repo to where the `dot-spacemacs-configuration-layer-path` points to.
2. Add it to `dotspacemacs-configuration-layers` and tell it where the mermaid-cli is located.

```lisp
(setq-default dotspacemacs-configuration-layers
  '((mermaid-layer :variables
                    mermaid-layer-cli-path "~/node_modules/.bin/mmdc")))
```

## Usage

This makes mermaid available as a language for a source block which can be
evaluated to produce a diagram file. `C-c C-c` will produce the file and link it
in the results block.

```
#+begin_src mermaid :file customer-orders.png
---
title: Order example
---
erDiagram
    CUSTOMER ||--o{ ORDER : places
    ORDER ||--|{ LINE-ITEM : contains
    CUSTOMER }|..|{ DELIVERY-ADDRESS : uses

#+RESULTS:
[[file:test.png]]
```
