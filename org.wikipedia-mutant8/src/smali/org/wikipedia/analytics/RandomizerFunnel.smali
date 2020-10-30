.class public Lorg/wikipedia/analytics/RandomizerFunnel;
.super Lorg/wikipedia/analytics/TimedFunnel;
.source "RandomizerFunnel.java"


# static fields
.field private static final REV_ID:I = 0x114784d

.field private static final SCHEMA_NAME:Ljava/lang/String; = "MobileWikiAppRandomizer"


# instance fields
.field private numClicksBack:I

.field private numClicksForward:I

.field private numSwipesBack:I

.field private numSwipesForward:I

.field private final source:Lorg/wikipedia/Constants$InvokeSource;


# direct methods
.method public constructor <init>(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/Constants$InvokeSource;)V
    .locals 6

    const-string v2, "MobileWikiAppRandomizer"

    const v3, 0x114784d

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 21
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/analytics/TimedFunnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;IILorg/wikipedia/dataclient/WikiSite;)V

    .line 22
    iput-object p3, p0, Lorg/wikipedia/analytics/RandomizerFunnel;->source:Lorg/wikipedia/Constants$InvokeSource;

    return-void
.end method


# virtual methods
.method public clickedBack()V
    .locals 1

    .line 40
    iget v0, p0, Lorg/wikipedia/analytics/RandomizerFunnel;->numClicksBack:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/wikipedia/analytics/RandomizerFunnel;->numClicksBack:I

    return-void
.end method

.method public clickedForward()V
    .locals 1

    .line 36
    iget v0, p0, Lorg/wikipedia/analytics/RandomizerFunnel;->numClicksForward:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/wikipedia/analytics/RandomizerFunnel;->numClicksForward:I

    return-void
.end method

.method public done()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "source"

    aput-object v2, v0, v1

    .line 44
    iget-object v1, p0, Lorg/wikipedia/analytics/RandomizerFunnel;->source:Lorg/wikipedia/Constants$InvokeSource;

    .line 45
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "fingerSwipesForward"

    aput-object v2, v0, v1

    iget v1, p0, Lorg/wikipedia/analytics/RandomizerFunnel;->numSwipesForward:I

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    const-string v2, "fingerSwipesBack"

    aput-object v2, v0, v1

    iget v1, p0, Lorg/wikipedia/analytics/RandomizerFunnel;->numSwipesBack:I

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x6

    const-string v2, "diceClicks"

    aput-object v2, v0, v1

    iget v1, p0, Lorg/wikipedia/analytics/RandomizerFunnel;->numClicksForward:I

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x8

    const-string v2, "backClicks"

    aput-object v2, v0, v1

    iget v1, p0, Lorg/wikipedia/analytics/RandomizerFunnel;->numClicksBack:I

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 44
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic getSessionToken()Ljava/lang/String;
    .locals 1

    .line 10
    invoke-super {p0}, Lorg/wikipedia/analytics/Funnel;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pause()V
    .locals 0

    .line 10
    invoke-super {p0}, Lorg/wikipedia/analytics/TimedFunnel;->pause()V

    return-void
.end method

.method protected preprocessSessionToken(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume()V
    .locals 0

    .line 10
    invoke-super {p0}, Lorg/wikipedia/analytics/TimedFunnel;->resume()V

    return-void
.end method

.method public swipedBack()V
    .locals 1

    .line 32
    iget v0, p0, Lorg/wikipedia/analytics/RandomizerFunnel;->numSwipesBack:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/wikipedia/analytics/RandomizerFunnel;->numSwipesBack:I

    return-void
.end method

.method public swipedForward()V
    .locals 1

    .line 28
    iget v0, p0, Lorg/wikipedia/analytics/RandomizerFunnel;->numSwipesForward:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/wikipedia/analytics/RandomizerFunnel;->numSwipesForward:I

    return-void
.end method
