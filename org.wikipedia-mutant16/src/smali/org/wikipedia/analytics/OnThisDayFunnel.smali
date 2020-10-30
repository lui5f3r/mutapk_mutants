.class public Lorg/wikipedia/analytics/OnThisDayFunnel;
.super Lorg/wikipedia/analytics/TimedFunnel;
.source "OnThisDayFunnel.java"


# static fields
.field private static final REV_ID:I = 0x1147841

.field private static final SCHEMA_NAME:Ljava/lang/String; = "MobileWikiAppOnThisDay"


# instance fields
.field private maxScrolledPosition:I

.field private final source:I


# direct methods
.method public constructor <init>(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/Constants$InvokeSource;)V
    .locals 6

    const-string v2, "MobileWikiAppOnThisDay"

    const v3, 0x1147841

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 18
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/analytics/TimedFunnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;IILorg/wikipedia/dataclient/WikiSite;)V

    .line 19
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lorg/wikipedia/analytics/OnThisDayFunnel;->source:I

    return-void
.end method


# virtual methods
.method public done(I)V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "source"

    aput-object v2, v0, v1

    .line 31
    iget v1, p0, Lorg/wikipedia/analytics/OnThisDayFunnel;->source:I

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "totalEvents"

    aput-object v2, v0, v1

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 p1, 0x4

    const-string v1, "scrolledEvents"

    aput-object v1, v0, p1

    iget p1, p0, Lorg/wikipedia/analytics/OnThisDayFunnel;->maxScrolledPosition:I

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x5

    aput-object p1, v0, v1

    .line 31
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

.method public scrolledToPosition(I)V
    .locals 1

    .line 25
    iget v0, p0, Lorg/wikipedia/analytics/OnThisDayFunnel;->maxScrolledPosition:I

    if-le p1, v0, :cond_0

    .line 26
    iput p1, p0, Lorg/wikipedia/analytics/OnThisDayFunnel;->maxScrolledPosition:I

    :cond_0
    return-void
.end method
