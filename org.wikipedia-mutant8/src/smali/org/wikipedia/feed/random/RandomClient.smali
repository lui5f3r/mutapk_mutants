.class public Lorg/wikipedia/feed/random/RandomClient;
.super Lorg/wikipedia/feed/dataclient/DummyClient;
.source "RandomClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/wikipedia/feed/dataclient/DummyClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getNewCard(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/feed/model/Card;
    .locals 1

    .line 9
    new-instance v0, Lorg/wikipedia/feed/random/RandomCard;

    invoke-direct {v0, p1}, Lorg/wikipedia/feed/random/RandomCard;-><init>(Lorg/wikipedia/dataclient/WikiSite;)V

    return-object v0
.end method
