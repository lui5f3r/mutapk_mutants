.class public abstract Lorg/wikipedia/feed/model/WikiSiteCard;
.super Lorg/wikipedia/feed/model/Card;
.source "WikiSiteCard.java"


# instance fields
.field private wiki:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method public constructor <init>(Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lorg/wikipedia/feed/model/Card;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/wikipedia/feed/model/WikiSiteCard;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    return-void
.end method


# virtual methods
.method public wikiSite()Lorg/wikipedia/dataclient/WikiSite;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/wikipedia/feed/model/WikiSiteCard;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    return-object v0
.end method
