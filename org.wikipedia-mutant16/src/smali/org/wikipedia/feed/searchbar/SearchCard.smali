.class public Lorg/wikipedia/feed/searchbar/SearchCard;
.super Lorg/wikipedia/feed/model/Card;
.source "SearchCard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lorg/wikipedia/feed/model/Card;-><init>()V

    return-void
.end method


# virtual methods
.method public type()Lorg/wikipedia/feed/model/CardType;
    .locals 1

    .line 10
    sget-object v0, Lorg/wikipedia/feed/model/CardType;->SEARCH_BAR:Lorg/wikipedia/feed/model/CardType;

    return-object v0
.end method
