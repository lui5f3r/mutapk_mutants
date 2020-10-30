.class public Lorg/wikipedia/feed/news/NewsItemCard;
.super Lorg/wikipedia/feed/model/Card;
.source "NewsItemCard.java"


# instance fields
.field private newsItem:Lorg/wikipedia/feed/news/NewsItem;

.field private wiki:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method constructor <init>(Lorg/wikipedia/feed/news/NewsItem;Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/wikipedia/feed/model/Card;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/wikipedia/feed/news/NewsItemCard;->newsItem:Lorg/wikipedia/feed/news/NewsItem;

    .line 27
    iput-object p2, p0, Lorg/wikipedia/feed/news/NewsItemCard;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    return-void
.end method

.method private removeImageCaption(Landroid/text/Spanned;)Ljava/lang/CharSequence;
    .locals 7

    .line 56
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lorg/wikipedia/richtext/RichTextUtil;->getSpans(Landroid/text/Spanned;II)[Ljava/lang/Object;

    move-result-object v0

    .line 57
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 58
    instance-of v4, v3, Landroid/text/style/StyleSpan;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Landroid/text/style/StyleSpan;

    invoke-virtual {v4}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 59
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 60
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 61
    invoke-interface {p1, v4}, Landroid/text/Spanned;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    if-ne v5, v6, :cond_0

    add-int/lit8 v5, v3, -0x1

    invoke-interface {p1, v5}, Landroid/text/Spanned;->charAt(I)C

    move-result v5

    const/16 v6, 0x29

    if-ne v5, v6, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing spanned text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v4, v3}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/log/L;->v(Ljava/lang/CharSequence;)V

    .line 63
    invoke-static {p1, v4, v3}, Lorg/wikipedia/richtext/RichTextUtil;->remove(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public image()Landroid/net/Uri;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/wikipedia/feed/news/NewsItemCard;->newsItem:Lorg/wikipedia/feed/news/NewsItem;

    invoke-virtual {v0}, Lorg/wikipedia/feed/news/NewsItem;->thumb()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public item()Lorg/wikipedia/feed/news/NewsItem;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/wikipedia/feed/news/NewsItemCard;->newsItem:Lorg/wikipedia/feed/news/NewsItem;

    return-object v0
.end method

.method public links()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/wikipedia/feed/news/NewsItemCard;->newsItem:Lorg/wikipedia/feed/news/NewsItem;

    invoke-virtual {v0}, Lorg/wikipedia/feed/news/NewsItem;->links()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public text()Ljava/lang/CharSequence;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/wikipedia/feed/news/NewsItemCard;->newsItem:Lorg/wikipedia/feed/news/NewsItem;

    invoke-virtual {v0}, Lorg/wikipedia/feed/news/NewsItem;->story()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/wikipedia/feed/news/NewsItemCard;->removeImageCaption(Landroid/text/Spanned;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public type()Lorg/wikipedia/feed/model/CardType;
    .locals 1

    .line 43
    sget-object v0, Lorg/wikipedia/feed/model/CardType;->NEWS_ITEM:Lorg/wikipedia/feed/model/CardType;

    return-object v0
.end method

.method public wikiSite()Lorg/wikipedia/dataclient/WikiSite;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/wikipedia/feed/news/NewsItemCard;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    return-object v0
.end method
