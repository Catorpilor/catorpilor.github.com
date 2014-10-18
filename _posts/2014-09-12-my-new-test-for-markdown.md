---
layout: post
title: 小试Markdown
date: 2014-09-12 16:45
tags:
- markdown 
summary: 准备开始用md来写博客
---

之前的Blog都是用[textile][textile link]来写的,鉴于当下markdown这么流行遂转行来体验下。关于textile与markdown的比较知乎上[这篇文章][textile vs markdown]不错，感兴趣的童鞋可以去看看。

> 工欲善其事，必先利其器

Mac下markdown的编辑器网上一搜一大堆，该如何选择编辑器就是个见仁见智的过程了。鉴于我自己是 __sublime text__ 的重度用户所以选择的范围就仅限于TA的扩展了，最终在查阅了一番资料以及初步试用后选择了 


### MarkdownEditing

Markdown plugin for Sublime Text. Provides a decent Markdown color scheme (light and dark) with more __robust__ syntax highlighting and useful Markdown editing features for Sublime Text. 3 flavors are supported: Standard Markdown, __GitHub flavored Markdown__, MultiMarkdown.

这个插件功能很强大，上手也比较容易。建议在使用前好好读读[README][Readme]，会让你更快更好的感受到插件带来的各种便利。关于使用中的一些Tips介绍可以在[Wiki][Wiki]中找到，这是持续更新的!

## 使用心得

   - markdown的一大特性就是可以和HTML组合一起使用。在Blog中我希望所有图片都是自适应屏幕大小的。Textile可以非常方便的为图片添加相应的属性`!=(specified class)link to picture!`Markdown不支持这种语法，只能手动添加相应的html代码跟md组合起来具体实现如下`<p class="resize" markdown="1">!link to picture</p>`
   
持续更新中.......

[textile link]: http://redcloth.org/textile
[textile vs markdown]: http://www.zhihu.com/question/20912653
[Readme]: https://github.com/SublimeText-Markdown/MarkdownEditing/blob/master/README.md
[TableEditor]:                 https://github.com/vkocubinsky/SublimeTableEditor
[Knockdown]:                   https://github.com/aziz/knockdown/
[Sublime Markdown Extended]:   https://github.com/jonschlinkert/sublime-markdown-extended
[SmartMarkdown]:               https://github.com/demon386/SmartMarkdown
[Typewriter]:                  https://github.com/alehandrof/Typewriter
[OpenUrl]:                     https://github.com/noahcoad/open-url
[brettterpstra]: http://brettterpstra.com
[geekabouttown]: http://geekabouttown.com/posts/sublime-text-2-markdown-footnote-goodness
[github]: https://raw.github.com/SublimeText-Markdown/MarkdownEditing/master/screenshots/light.png
[github 2]: https://raw.github.com/SublimeText-Markdown/MarkdownEditing/master/screenshots/dark.png
[github 3]: https://raw.github.com/SublimeText-Markdown/MarkdownEditing/master/screenshots/yellow.png
[github 4]: https://github.com/jngeist
[github 5]: https://raw.github.com/SublimeText-Markdown/MarkdownEditing/master/screenshots/underscore-in-words.png
[github 6]: https://raw.github.com/SublimeText-Markdown/MarkdownEditing/master/screenshots/fenced-code-block.png
[github 7]: https://raw.github.com/SublimeText-Markdown/MarkdownEditing/master/screenshots/keyboard-shortcut.png
[github 8]: https://raw.github.com/SublimeText-Markdown/MarkdownEditing/master/screenshots/strikethrough.png
[github 9]: https://github.com/maliayas
[opensource]: http://www.opensource.org/licenses/MIT
[wbond]: http://wbond.net/sublime_packages/package_control
[wbond 2]: http://wbond.net/sublime_packages/package_control/installation
[FullScreenStatus]: https://github.com/maliayas/SublimeText_FullScreenStatus
[macstories]: http://www.macstories.net/roundups/sublime-text-2-and-markdown-tips-tricks-and-links/
[tips]: https://github.com/SublimeText-Markdown/MarkdownEditing/wiki/Tips
[Wiki]: https://github.com/SublimeText-Markdown/MarkdownEditing/wiki
[GFM]: https://help.github.com/articles/github-flavored-markdown
[#158]: https://github.com/SublimeText-Markdown/MarkdownEditing/issues/158

