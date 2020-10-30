.class public Lorg/wikipedia/analytics/TabFunnel;
.super Lorg/wikipedia/analytics/Funnel;
.source "TabFunnel.java"


# static fields
.field private static final SCHEMA_NAME:Ljava/lang/String; = "MobileWikiAppTabs"

.field private static final SCHEMA_REVISION:I = 0x114786f


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 15
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    const-string v1, "MobileWikiAppTabs"

    const v2, 0x114786f

    const/16 v3, 0x64

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/wikipedia/analytics/Funnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;II)V

    return-void
.end method

.method private log(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lorg/wikipedia/analytics/TabFunnel;->log(Ljava/lang/String;ILjava/lang/Integer;)V

    return-void
.end method

.method private log(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 2

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "action"

    .line 48
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "tabCount"

    .line 49
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    const-string p1, "tabIndex"

    .line 51
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

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

.method public logCancel(I)V
    .locals 1

    const-string v0, "cancel"

    .line 39
    invoke-direct {p0, v0, p1}, Lorg/wikipedia/analytics/TabFunnel;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public logClose(II)V
    .locals 1

    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "close"

    invoke-direct {p0, v0, p1, p2}, Lorg/wikipedia/analytics/TabFunnel;->log(Ljava/lang/String;ILjava/lang/Integer;)V

    return-void
.end method

.method public logCreateNew(I)V
    .locals 1

    const-string v0, "createNew"

    .line 27
    invoke-direct {p0, v0, p1}, Lorg/wikipedia/analytics/TabFunnel;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public logEnterList(I)V
    .locals 1

    const-string v0, "enterList"

    .line 23
    invoke-direct {p0, v0, p1}, Lorg/wikipedia/analytics/TabFunnel;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public logOpenInNew(I)V
    .locals 1

    const-string v0, "openInNew"

    .line 19
    invoke-direct {p0, v0, p1}, Lorg/wikipedia/analytics/TabFunnel;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public logSelect(II)V
    .locals 1

    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "select"

    invoke-direct {p0, v0, p1, p2}, Lorg/wikipedia/analytics/TabFunnel;->log(Ljava/lang/String;ILjava/lang/Integer;)V

    return-void
.end method
