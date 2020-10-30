.class public Lorg/wikipedia/feed/onthisday/OnThisDayCard;
.super Lorg/wikipedia/feed/model/WikiSiteCard;
.source "OnThisDayCard.java"


# instance fields
.field private age:I

.field private callback:Lorg/wikipedia/feed/view/FeedAdapter$Callback;

.field private date:Ljava/util/Calendar;

.field private eventShownOnCard:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

.field private nextYear:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/wikipedia/dataclient/WikiSite;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/onthisday/OnThisDay$Event;",
            ">;",
            "Lorg/wikipedia/dataclient/WikiSite;",
            "I)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p2}, Lorg/wikipedia/feed/model/WikiSiteCard;-><init>(Lorg/wikipedia/dataclient/WikiSite;)V

    .line 29
    invoke-static {p3}, Lorg/wikipedia/util/DateUtil;->getDefaultDateFor(I)Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->date:Ljava/util/Calendar;

    .line 30
    iput p3, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->age:I

    .line 32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_0

    .line 33
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-virtual {p2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 35
    :goto_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    iput-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->eventShownOnCard:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    add-int/2addr p2, p3

    .line 36
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->eventShownOnCard:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    :goto_1
    invoke-virtual {p1}, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year()I

    move-result p1

    iput p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->nextYear:I

    return-void
.end method


# virtual methods
.method public date()Ljava/util/Calendar;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->date:Ljava/util/Calendar;

    return-object v0
.end method

.method dayString()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->date:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/DateUtil;->getMonthOnlyDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected dismissHashCode()I
    .locals 3

    .line 88
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->date:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p0}, Lorg/wikipedia/feed/model/WikiSiteCard;->wikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method getAge()I
    .locals 1

    .line 84
    iget v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->age:I

    return v0
.end method

.method public getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->callback:Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    return-object v0
.end method

.method nextYear()I
    .locals 1

    .line 76
    iget v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->nextYear:I

    return v0
.end method

.method public pages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->eventShownOnCard:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    invoke-virtual {v0}, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->pages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setCallback(Lorg/wikipedia/feed/view/FeedAdapter$Callback;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->callback:Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    return-void
.end method

.method public subtitle()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->date:Ljava/util/Calendar;

    invoke-static {v0}, Lorg/wikipedia/util/DateUtil;->getFeedCardShortDateString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public text()Ljava/lang/CharSequence;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->eventShownOnCard:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    invoke-virtual {v0}, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->text()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 2

    .line 52
    invoke-virtual {p0}, Lorg/wikipedia/feed/model/WikiSiteCard;->wikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1001fd

    invoke-static {v0, v1}, Lorg/wikipedia/util/L10nUtil;->getStringForArticleLanguage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Lorg/wikipedia/feed/model/CardType;
    .locals 1

    .line 48
    sget-object v0, Lorg/wikipedia/feed/model/CardType;->ON_THIS_DAY:Lorg/wikipedia/feed/model/CardType;

    return-object v0
.end method

.method public year()I
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->eventShownOnCard:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    invoke-virtual {v0}, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year()I

    move-result v0

    return v0
.end method
