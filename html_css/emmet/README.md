Emmet Syntax VSC
---

Emmet plugin is built in Visual Studio Code, you don't need to install an extension.

Current Version is 2.0.

[MS Document](https://code.visualstudio.com/docs/editor/emmet)

Emmet for other IDEs and text editors check out the [Emmet Website](https://emmet.io/)

## to start emmet

just open VSC create a html file. file extension should be html to use Emmet Abbreviations.

type EA(Emmet Abbreviation) keyword you see recommended EA press tab or enter key to autocomplete it.

#### hmtl5 skeleton

```html
EA: !

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
</body>
</html>

```

#### basic tag

```html
EA: div (any tag be applicable)
<div></div>



```

#### multiply operator

```hmtl
EA: div*3 

<div></div>
<div></div>
<div></div>
````

#### nested tags

```html

EA: div>a
<div><a href=""></a></div>

```

#### text in tag

```html

EA: ul>li{text}
    
<ul>
    <li>text</li>
</ul>

```

#### numbering

```html

EA: ul>li*3{text $}

    <ul>
        <li>text 1</li>
        <li>text 2</li>
        <li>text 3</li>
    </ul>

```

#### class and id

```hmtl

    EA: div.my_class
    
    <div class="my_class"></div>
    
    EA: div#my_id
    
    <div id="my_id"></div>

    EA: .just_class
    
    <div class="just_class"></div>

    EA: #just_id
    
    <div id="just_id"></div>
    
```

#### sibling and climbing

```html

    EA: div>h1+a

    <div>
        <h1></h1>
        <a href=""></a>
    </div>

    EA: div>ul>li*2^ol>li*2

    <div>
        <ul>
            <li></li>
            <li></li>
        </ul>
        <ol>
            <li></li>
            <li></li>
        </ol>
    </div>

```

#### custom attribute

```html

    EA: button[text="click" size=10]

    <button text="click" size="10"></button>

```

#### combined emmet

```html

EA: div.container>header+nav+(seciton.section$>article.subject-$*3)*2+footer

    <div class="container">
        <header></header>
        <nav></nav>
        <seciton class="section1">
            <article class="subject-1"></article>
            <article class="subject-2"></article>
            <article class="subject-3"></article>
        </seciton>
        <seciton class="section2">
            <article class="subject-1"></article>
            <article class="subject-2"></article>
            <article class="subject-3"></article>
        </seciton>
        <footer></footer>
    </div>

```

