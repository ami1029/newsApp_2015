require 'sinatra'
require 'rss'
require 'json'

get '/' do
    @top = RSS::Parser.parse("http://news.livedoor.com/topics/rss/top.xml")
    @dom = RSS::Parser.parse("http://news.livedoor.com/topics/rss/dom.xml")
    @dom_rel = RSS::Parser.parse("http://rss.dailynews.yahoo.co.jp/fc/domestic/rss.xml")
    @int = RSS::Parser.parse("http://news.livedoor.com/topics/rss/int.xml")
    @eco = RSS::Parser.parse("http://news.livedoor.com/topics/rss/eco.xml")
    @ent = RSS::Parser.parse("http://news.livedoor.com/topics/rss/ent.xml")
    @spo = RSS::Parser.parse("http://news.livedoor.com/topics/rss/spo.xml")
    @mov = RSS::Parser.parse("http://news.livedoor.com/rss/summary/52.xml")
    @gourmet = RSS::Parser.parse("http://news.livedoor.com/topics/rss/gourmet.xml")
    @love = RSS::Parser.parse("http://news.livedoor.com/topics/rss/love.xml")
    @trend = RSS::Parser.parse("http://news.livedoor.com/topics/rss/trend.xml")
    erb :index
end
