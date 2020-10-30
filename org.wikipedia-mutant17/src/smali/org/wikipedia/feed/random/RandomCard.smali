.class public Lorg/wikipedia/feed/random/RandomCard;
.super Lorg/wikipedia/feed/model/Card;
.source "RandomCard.java"


# instance fields
.field private wiki:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method public constructor <init>(Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/wikipedia/feed/model/Card;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/wikipedia/feed/random/RandomCard;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    return-void
.end method


# virtual methods
.method public type()Lorg/wikipedia/feed/model/CardType;
    .locals 1

    .line 17
    sget-object v0, Lorg/wikipedia/feed/model/CardType;->RANDOM:Lorg/wikipedia/feed/model/CardType;

    return-object v0
.end method

.method public wikiSite()Lorg/wikipedia/dataclient/WikiSite;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/wikipedia/feed/random/RandomCard;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    return-object v0
.end method
