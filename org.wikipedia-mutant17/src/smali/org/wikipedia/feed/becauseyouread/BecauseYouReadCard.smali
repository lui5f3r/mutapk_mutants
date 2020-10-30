.class public Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;
.super Lorg/wikipedia/feed/model/ListCard;
.source "BecauseYouReadCard.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/feed/model/ListCard<",
        "Lorg/wikipedia/feed/becauseyouread/BecauseYouReadItemCard;",
        ">;"
    }
.end annotation


# instance fields
.field private entry:Lorg/wikipedia/history/HistoryEntry;


# direct methods
.method public constructor <init>(Lorg/wikipedia/history/HistoryEntry;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/history/HistoryEntry;",
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/becauseyouread/BecauseYouReadItemCard;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/wikipedia/feed/model/ListCard;-><init>(Ljava/util/List;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 25
    iput-object p1, p0, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;->entry:Lorg/wikipedia/history/HistoryEntry;

    return-void
.end method


# virtual methods
.method public daysOld()J
    .locals 5

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 55
    iget-object v2, p0, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;->entry:Lorg/wikipedia/history/HistoryEntry;

    invoke-virtual {v2}, Lorg/wikipedia/history/HistoryEntry;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 56
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected dismissHashCode()I
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;->entry:Lorg/wikipedia/history/HistoryEntry;

    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->hashCode()I

    move-result v0

    return v0
.end method

.method public getPageTitle()Lorg/wikipedia/page/PageTitle;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;->entry:Lorg/wikipedia/history/HistoryEntry;

    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    return-object v0
.end method

.method public image()Landroid/net/Uri;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;->entry:Lorg/wikipedia/history/HistoryEntry;

    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getThumbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;->entry:Lorg/wikipedia/history/HistoryEntry;

    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getThumbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public pageTitle()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;->entry:Lorg/wikipedia/history/HistoryEntry;

    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 2

    .line 31
    invoke-virtual {p0}, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    const v1, 0x7f10045d

    invoke-static {v0, v1}, Lorg/wikipedia/util/L10nUtil;->getStringForArticleLanguage(Lorg/wikipedia/page/PageTitle;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Lorg/wikipedia/feed/model/CardType;
    .locals 1

    .line 41
    sget-object v0, Lorg/wikipedia/feed/model/CardType;->BECAUSE_YOU_READ_LIST:Lorg/wikipedia/feed/model/CardType;

    return-object v0
.end method
