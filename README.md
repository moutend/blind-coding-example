# blind-coding-example

<iframe width="560" height="315" src="https://www.youtube.com/embed/sAi_Yf4GOS4" frameborder="0" allowfullscreen></iframe>

Hi, I'm @moutend.
I have visually impaired,
but I can write the codes by using VoiceOver that is built-in screen reader for Mac OSX.
In this video,
I made a tiny CLI tool that allows me to show the chatting history of Slack by using Slack web API

**Environment**

- Mac OSX 10.11.3
- Ruby 2.2.4
- VoiceOver (screen reader)
- Vim (text editor)

# Usage

After creating new slack api token, please export that token at first and then try run the `./slack-less`.

    $ export SLACK_API_TOKEN='...'
    $ ./slack-less -c general

# LICENSE

MIT
