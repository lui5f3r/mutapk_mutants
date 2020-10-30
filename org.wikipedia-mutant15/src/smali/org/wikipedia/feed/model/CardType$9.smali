.class final enum Lorg/wikipedia/feed/model/CardType$9;
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
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/wikipedia/feed/model/CardType;-><init>(Ljava/lang/String;IILorg/wikipedia/feed/model/CardType$1;)V

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

    .line 74
    new-instance v0, Lorg/wikipedia/feed/announcement/AnnouncementCardView;

    invoke-direct {v0, p1}, Lorg/wikipedia/feed/announcement/AnnouncementCardView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
