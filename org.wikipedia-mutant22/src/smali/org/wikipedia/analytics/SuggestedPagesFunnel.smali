.class public Lorg/wikipedia/analytics/SuggestedPagesFunnel;
.super Lorg/wikipedia/analytics/Funnel;
.source "SuggestedPagesFunnel.java"


# static fields
.field private static final READ_MORE_SOURCE_FULL_TEXT:I = 0x0

.field private static final READ_MORE_SOURCE_MORELIKE:I = 0x1

.field private static final REV_ID:I = 0x1146a13

.field private static final SCHEMA_NAME:Ljava/lang/String; = "MobileWikiAppArticleSuggestions"


# instance fields
.field private latency:J

.field private readMoreSource:I


# direct methods
.method public constructor <init>(Lorg/wikipedia/WikipediaApp;)V
    .locals 3

    const-string v0, "MobileWikiAppArticleSuggestions"

    const v1, 0x1146a13

    const/16 v2, 0x64

    .line 24
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/wikipedia/analytics/Funnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;II)V

    const/4 p1, 0x1

    .line 25
    iput p1, p0, Lorg/wikipedia/analytics/SuggestedPagesFunnel;->readMoreSource:I

    return-void
.end method


# virtual methods
.method public bridge synthetic getSessionToken()Ljava/lang/String;
    .locals 1

    .line 14
    invoke-super {p0}, Lorg/wikipedia/analytics/Funnel;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logSuggestionClicked(Lorg/wikipedia/page/PageTitle;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/page/PageTitle;",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            ">;I)V"
        }
    .end annotation

    .line 53
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "action"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "clicked"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "pageTitle"

    aput-object v3, v1, v2

    .line 55
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 p1, 0x4

    const-string v2, "readMoreList"

    aput-object v2, v1, p1

    const-string p1, "|"

    .line 56
    invoke-static {p1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v1, p2

    const/4 p1, 0x6

    const-string p2, "readMoreIndex"

    aput-object p2, v1, p1

    .line 57
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x7

    aput-object p1, v1, p2

    .line 52
    invoke-virtual {p0, v0, v1}, Lorg/wikipedia/analytics/Funnel;->log(Lorg/wikipedia/dataclient/WikiSite;[Ljava/lang/Object;)V

    return-void
.end method

.method public logSuggestionsShown(Lorg/wikipedia/page/PageTitle;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/page/PageTitle;",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "action"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "shown"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "pageTitle"

    aput-object v3, v1, v2

    .line 44
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 p1, 0x4

    const-string v2, "readMoreList"

    aput-object v2, v1, p1

    const-string p1, "|"

    .line 45
    invoke-static {p1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v1, p2

    const/4 p1, 0x6

    const-string p2, "latency"

    aput-object p2, v1, p1

    iget-wide p1, p0, Lorg/wikipedia/analytics/SuggestedPagesFunnel;->latency:J

    .line 46
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x7

    aput-object p1, v1, p2

    .line 41
    invoke-virtual {p0, v0, v1}, Lorg/wikipedia/analytics/Funnel;->log(Lorg/wikipedia/dataclient/WikiSite;[Ljava/lang/Object;)V

    return-void
.end method

.method protected preprocessData(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 30
    iget v0, p0, Lorg/wikipedia/analytics/SuggestedPagesFunnel;->readMoreSource:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "readMoreSource"

    invoke-virtual {p0, p1, v1, v0}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    invoke-super {p0, p1}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected preprocessSessionToken(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public setLatency(J)V
    .locals 0

    .line 37
    iput-wide p1, p0, Lorg/wikipedia/analytics/SuggestedPagesFunnel;->latency:J

    return-void
.end method
