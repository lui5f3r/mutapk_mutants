.class public Lorg/wikipedia/analytics/FeedFunnel;
.super Lorg/wikipedia/analytics/TimedFunnel;
.source "FeedFunnel.java"


# static fields
.field private static EXCLUDED_CARDS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/model/CardType;",
            ">;"
        }
    .end annotation
.end field

.field private static final REVISION:I = 0x1146b82

.field private static final SCHEMA_NAME:Ljava/lang/String; = "MobileWikiAppFeed"


# instance fields
.field private entered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/wikipedia/feed/model/CardType;

    .line 16
    sget-object v1, Lorg/wikipedia/feed/model/CardType;->SEARCH_BAR:Lorg/wikipedia/feed/model/CardType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/wikipedia/feed/model/CardType;->PROGRESS:Lorg/wikipedia/feed/model/CardType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/wikipedia/analytics/FeedFunnel;->EXCLUDED_CARDS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/WikipediaApp;)V
    .locals 3

    const-string v0, "MobileWikiAppFeed"

    const v1, 0x1146b82

    const/16 v2, 0x64

    .line 19
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/wikipedia/analytics/TimedFunnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public cardClicked(Lorg/wikipedia/feed/model/CardType;Ljava/lang/String;)V
    .locals 3

    .line 53
    sget-object v0, Lorg/wikipedia/analytics/FeedFunnel;->EXCLUDED_CARDS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cardClicked"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cardType"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 58
    invoke-virtual {p1}, Lorg/wikipedia/feed/model/CardType;->code()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x4

    const-string v1, "language"

    aput-object v1, v0, p1

    const/4 p1, 0x5

    aput-object p2, v0, p1

    .line 56
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public cardShown(Lorg/wikipedia/feed/model/CardType;Ljava/lang/String;)V
    .locals 3

    .line 42
    sget-object v0, Lorg/wikipedia/analytics/FeedFunnel;->EXCLUDED_CARDS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cardShown"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cardType"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 47
    invoke-virtual {p1}, Lorg/wikipedia/feed/model/CardType;->code()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x4

    const-string v1, "language"

    aput-object v1, v0, p1

    const/4 p1, 0x5

    aput-object p2, v0, p1

    .line 45
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public dismissCard(Lorg/wikipedia/feed/model/CardType;I)V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dismiss"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cardType"

    aput-object v2, v0, v1

    .line 80
    invoke-virtual {p1}, Lorg/wikipedia/feed/model/CardType;->code()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 p1, 0x4

    const-string v1, "position"

    aput-object v1, v0, p1

    .line 81
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    .line 78
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public enter()V
    .locals 4

    .line 23
    iget-boolean v0, p0, Lorg/wikipedia/analytics/FeedFunnel;->entered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lorg/wikipedia/analytics/FeedFunnel;->entered:Z

    .line 25
    invoke-virtual {p0}, Lorg/wikipedia/analytics/TimedFunnel;->resetDuration()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "action"

    aput-object v3, v1, v2

    const-string v2, "enter"

    aput-object v2, v1, v0

    .line 26
    invoke-virtual {p0, v1}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public exit()V
    .locals 3

    .line 33
    iget-boolean v0, p0, Lorg/wikipedia/analytics/FeedFunnel;->entered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lorg/wikipedia/analytics/FeedFunnel;->entered:Z

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "action"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "exit"

    aput-object v2, v1, v0

    .line 35
    invoke-virtual {p0, v1}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic getSessionToken()Ljava/lang/String;
    .locals 1

    .line 11
    invoke-super {p0}, Lorg/wikipedia/analytics/Funnel;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pause()V
    .locals 0

    .line 11
    invoke-super {p0}, Lorg/wikipedia/analytics/TimedFunnel;->pause()V

    return-void
.end method

.method public refresh(I)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "refresh"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "age"

    aput-object v2, v0, v1

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 71
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public requestMore(I)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "more"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "age"

    aput-object v2, v0, v1

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 64
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic resume()V
    .locals 0

    .line 11
    invoke-super {p0}, Lorg/wikipedia/analytics/TimedFunnel;->resume()V

    return-void
.end method
