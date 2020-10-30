.class public Lorg/wikipedia/analytics/FunnelManager;
.super Ljava/lang/Object;
.source "FunnelManager.java"


# instance fields
.field private final app:Lorg/wikipedia/WikipediaApp;

.field private final editFunnels:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lorg/wikipedia/page/PageTitle;",
            "Lorg/wikipedia/analytics/EditFunnel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/wikipedia/WikipediaApp;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/analytics/FunnelManager;->editFunnels:Ljava/util/Hashtable;

    .line 16
    iput-object p1, p0, Lorg/wikipedia/analytics/FunnelManager;->app:Lorg/wikipedia/WikipediaApp;

    return-void
.end method


# virtual methods
.method public getEditFunnel(Lorg/wikipedia/page/PageTitle;)Lorg/wikipedia/analytics/EditFunnel;
    .locals 3

    .line 20
    iget-object v0, p0, Lorg/wikipedia/analytics/FunnelManager;->editFunnels:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lorg/wikipedia/analytics/FunnelManager;->editFunnels:Ljava/util/Hashtable;

    new-instance v1, Lorg/wikipedia/analytics/EditFunnel;

    iget-object v2, p0, Lorg/wikipedia/analytics/FunnelManager;->app:Lorg/wikipedia/WikipediaApp;

    invoke-direct {v1, v2, p1}, Lorg/wikipedia/analytics/EditFunnel;-><init>(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/page/PageTitle;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/analytics/FunnelManager;->editFunnels:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/analytics/EditFunnel;

    return-object p1
.end method
