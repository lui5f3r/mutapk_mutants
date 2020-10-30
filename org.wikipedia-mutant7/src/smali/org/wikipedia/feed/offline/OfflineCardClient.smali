.class public Lorg/wikipedia/feed/offline/OfflineCardClient;
.super Lorg/wikipedia/feed/dataclient/DummyClient;
.source "OfflineCardClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/wikipedia/feed/dataclient/DummyClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getNewCard(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/feed/model/Card;
    .locals 0

    .line 9
    new-instance p1, Lorg/wikipedia/feed/offline/OfflineCard;

    invoke-direct {p1}, Lorg/wikipedia/feed/offline/OfflineCard;-><init>()V

    return-object p1
.end method
