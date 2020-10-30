.class final enum Lorg/wikipedia/feed/model/CardType$2;
.super Lorg/wikipedia/feed/model/CardType;
.source "CardType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/model/CardType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IILorg/wikipedia/feed/FeedContentType;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 33
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/feed/model/CardType;-><init>(Ljava/lang/String;IILorg/wikipedia/feed/FeedContentType;Lorg/wikipedia/feed/model/CardType$1;)V

    return-void
.end method


# virtual methods
.method public newView(Landroid/content/Context;)Lorg/wikipedia/feed/view/FeedCardView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lorg/wikipedia/feed/view/FeedCardView<",
            "*>;"
        }
    .end annotation

    .line 35
    new-instance v0, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView;

    invoke-direct {v0, p1}, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
