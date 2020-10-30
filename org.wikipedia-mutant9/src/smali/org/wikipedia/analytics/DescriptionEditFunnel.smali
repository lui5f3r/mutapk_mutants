.class public Lorg/wikipedia/analytics/DescriptionEditFunnel;
.super Lorg/wikipedia/analytics/EditFunnel;
.source "DescriptionEditFunnel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;
    }
.end annotation


# instance fields
.field private final source:Lorg/wikipedia/Constants$InvokeSource;

.field private final type:Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;


# direct methods
.method public constructor <init>(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;Lorg/wikipedia/Constants$InvokeSource;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/analytics/EditFunnel;-><init>(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/page/PageTitle;)V

    .line 32
    iput-object p3, p0, Lorg/wikipedia/analytics/DescriptionEditFunnel;->type:Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;

    .line 33
    iput-object p4, p0, Lorg/wikipedia/analytics/DescriptionEditFunnel;->source:Lorg/wikipedia/Constants$InvokeSource;

    return-void
.end method


# virtual methods
.method public logAbuseFilterWarning(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "abuseFilterWarning"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "abuseFilterName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 p1, 0x4

    const-string v1, "wikidataDescriptionEdit"

    aput-object v1, v0, p1

    .line 72
    iget-object p1, p0, Lorg/wikipedia/analytics/DescriptionEditFunnel;->type:Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;

    .line 75
    invoke-virtual {p1}, Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;->toLogString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x5

    aput-object p1, v0, v1

    .line 72
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public logError(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "error"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "errorText"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 p1, 0x4

    const-string v1, "wikidataDescriptionEdit"

    aput-object v1, v0, p1

    .line 80
    iget-object p1, p0, Lorg/wikipedia/analytics/DescriptionEditFunnel;->type:Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;

    .line 83
    invoke-virtual {p1}, Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;->toLogString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x5

    aput-object p1, v0, v1

    .line 80
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public logReady()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ready"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "wikidataDescriptionEdit"

    aput-object v2, v0, v1

    .line 50
    iget-object v1, p0, Lorg/wikipedia/analytics/DescriptionEditFunnel;->type:Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;

    .line 52
    invoke-virtual {v1}, Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;->toLogString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 50
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public logSaveAttempt()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "saveAttempt"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "wikidataDescriptionEdit"

    aput-object v2, v0, v1

    .line 57
    iget-object v1, p0, Lorg/wikipedia/analytics/DescriptionEditFunnel;->type:Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;

    .line 59
    invoke-virtual {v1}, Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;->toLogString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 57
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public logSaved(J)V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "saved"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "revID"

    aput-object v2, v0, v1

    .line 66
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const/4 p1, 0x4

    const-string p2, "wikidataDescriptionEdit"

    aput-object p2, v0, p1

    iget-object p1, p0, Lorg/wikipedia/analytics/DescriptionEditFunnel;->type:Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;

    .line 67
    invoke-virtual {p1}, Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;->toLogString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    .line 64
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public logStart()V
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

    const-string v2, "wikidataDescriptionEdit"

    aput-object v2, v0, v1

    .line 43
    iget-object v1, p0, Lorg/wikipedia/analytics/DescriptionEditFunnel;->type:Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;

    .line 45
    invoke-virtual {v1}, Lorg/wikipedia/analytics/DescriptionEditFunnel$Type;->toLogString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 43
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method protected preprocessData(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 38
    iget-object v0, p0, Lorg/wikipedia/analytics/DescriptionEditFunnel;->source:Lorg/wikipedia/Constants$InvokeSource;

    invoke-virtual {v0}, Lorg/wikipedia/Constants$InvokeSource;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0, p1, v1, v0}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    invoke-super {p0, p1}, Lorg/wikipedia/analytics/EditFunnel;->preprocessData(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
