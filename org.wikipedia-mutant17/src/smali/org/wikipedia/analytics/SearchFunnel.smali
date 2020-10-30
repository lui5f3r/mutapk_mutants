.class public Lorg/wikipedia/analytics/SearchFunnel;
.super Lorg/wikipedia/analytics/Funnel;
.source "SearchFunnel.java"


# static fields
.field private static final REVISION:I = 0x115c7e3

.field private static final SCHEMA_NAME:Ljava/lang/String; = "MobileWikiAppSearch"


# instance fields
.field private source:Lorg/wikipedia/Constants$InvokeSource;


# direct methods
.method public constructor <init>(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/Constants$InvokeSource;)V
    .locals 3

    const-string v0, "MobileWikiAppSearch"

    const v1, 0x115c7e3

    const/16 v2, 0x64

    .line 20
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/wikipedia/analytics/Funnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;II)V

    .line 21
    iput-object p2, p0, Lorg/wikipedia/analytics/SearchFunnel;->source:Lorg/wikipedia/Constants$InvokeSource;

    return-void
.end method


# virtual methods
.method public bridge synthetic getSessionToken()Ljava/lang/String;
    .locals 1

    .line 10
    invoke-super {p0}, Lorg/wikipedia/analytics/Funnel;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected preprocessData(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 83
    iget-object v0, p0, Lorg/wikipedia/analytics/SearchFunnel;->source:Lorg/wikipedia/Constants$InvokeSource;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "invoke_source"

    invoke-virtual {p0, p1, v1, v0}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    invoke-super {p0, p1}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public searchCancel(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cancel"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "language"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 32
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public searchClick(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "click"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "position"

    aput-object v2, v0, v1

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 p1, 0x4

    const-string v1, "language"

    aput-object v1, v0, p1

    const/4 p1, 0x5

    aput-object p2, v0, p1

    .line 39
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public searchDidYouMean(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "didyoumean"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "language"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 47
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public searchError(ZILjava/lang/String;)V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "error"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type_of_search"

    aput-object v2, v0, v1

    if-eqz p1, :cond_0

    const-string p1, "full"

    goto :goto_0

    :cond_0
    const-string p1, "prefix"

    :goto_0
    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 p1, 0x4

    const-string v1, "time_to_display_results"

    aput-object v1, v0, p1

    const/4 p1, 0x5

    .line 67
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x6

    const-string p2, "language"

    aput-object p2, v0, p1

    const/4 p1, 0x7

    aput-object p3, v0, p1

    .line 64
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public searchLanguageSwitch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 73
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "langswitch"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "language"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public searchResults(ZIILjava/lang/String;)V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "results"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type_of_search"

    aput-object v2, v0, v1

    if-eqz p1, :cond_0

    const-string p1, "full"

    goto :goto_0

    :cond_0
    const-string p1, "prefix"

    :goto_0
    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 p1, 0x4

    const-string v1, "number_of_results"

    aput-object v1, v0, p1

    const/4 p1, 0x5

    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x6

    const-string p2, "time_to_display_results"

    aput-object p2, v0, p1

    const/4 p1, 0x7

    .line 58
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/16 p1, 0x8

    const-string p2, "language"

    aput-object p2, v0, p1

    const/16 p1, 0x9

    aput-object p4, v0, p1

    .line 54
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public searchStart()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "start"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "language"

    aput-object v2, v0, v1

    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/analytics/Funnel;->getApp()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->listToJsonArrayString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 25
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method
