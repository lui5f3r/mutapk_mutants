.class public abstract Lorg/wikipedia/feed/model/ListCard;
.super Lorg/wikipedia/feed/model/WikiSiteCard;
.source "ListCard.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/wikipedia/feed/model/Card;",
        ">",
        "Lorg/wikipedia/feed/model/WikiSiteCard;"
    }
.end annotation


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lorg/wikipedia/dataclient/WikiSite;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p2}, Lorg/wikipedia/feed/model/WikiSiteCard;-><init>(Lorg/wikipedia/dataclient/WikiSite;)V

    .line 15
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/feed/model/ListCard;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public items()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lorg/wikipedia/feed/model/ListCard;->items:Ljava/util/List;

    return-object v0
.end method
