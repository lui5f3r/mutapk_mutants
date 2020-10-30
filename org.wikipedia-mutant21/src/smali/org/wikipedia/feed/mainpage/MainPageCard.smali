.class public Lorg/wikipedia/feed/mainpage/MainPageCard;
.super Lorg/wikipedia/feed/model/Card;
.source "MainPageCard.java"


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
    sget-object v0, Lorg/wikipedia/feed/model/CardType;->MAIN_PAGE:Lorg/wikipedia/feed/model/CardType;

    return-object v0
.end method
