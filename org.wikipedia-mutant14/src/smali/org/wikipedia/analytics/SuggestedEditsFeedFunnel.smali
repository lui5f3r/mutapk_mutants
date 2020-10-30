.class public Lorg/wikipedia/analytics/SuggestedEditsFeedFunnel;
.super Lorg/wikipedia/analytics/Funnel;
.source "SuggestedEditsFeedFunnel.java"


# static fields
.field private static final REVISION:I = 0x137da6b

.field private static final SCHEMA_NAME:Ljava/lang/String; = "MobileWikiAppSuggestedEditsFeed"


# instance fields
.field private source:Lorg/wikipedia/Constants$InvokeSource;

.field private type:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;


# direct methods
.method public constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Lorg/wikipedia/Constants$InvokeSource;)V
    .locals 4

    .line 17
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    const-string v1, "MobileWikiAppSuggestedEditsFeed"

    const v2, 0x137da6b

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/wikipedia/analytics/Funnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;II)V

    .line 18
    iput-object p1, p0, Lorg/wikipedia/analytics/SuggestedEditsFeedFunnel;->type:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 19
    iput-object p2, p0, Lorg/wikipedia/analytics/SuggestedEditsFeedFunnel;->source:Lorg/wikipedia/Constants$InvokeSource;

    return-void
.end method


# virtual methods
.method public editSuccess()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "editSuccess"

    aput-object v2, v0, v1

    .line 35
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

.method protected preprocessData(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 46
    iget-object v0, p0, Lorg/wikipedia/analytics/SuggestedEditsFeedFunnel;->source:Lorg/wikipedia/Constants$InvokeSource;

    invoke-virtual {v0}, Lorg/wikipedia/Constants$InvokeSource;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0, p1, v1, v0}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lorg/wikipedia/analytics/SuggestedEditsFeedFunnel;->type:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v0, v1, :cond_0

    const-string v0, "tags"

    goto :goto_1

    :cond_0
    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-eq v0, v1, :cond_2

    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "descriptions"

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "captions"

    :goto_1
    const-string v1, "type"

    invoke-virtual {p0, p1, v1, v0}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    invoke-super {p0, p1}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected preprocessSessionToken(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "start"

    aput-object v2, v0, v1

    .line 23
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public stop()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "stop"

    aput-object v2, v0, v1

    .line 29
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method
