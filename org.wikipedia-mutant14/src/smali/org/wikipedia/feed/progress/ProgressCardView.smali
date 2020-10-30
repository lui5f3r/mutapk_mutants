.class public Lorg/wikipedia/feed/progress/ProgressCardView;
.super Landroid/widget/FrameLayout;
.source "ProgressCardView.java"

# interfaces
.implements Lorg/wikipedia/feed/view/FeedCardView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lorg/wikipedia/feed/view/FeedCardView<",
        "Lorg/wikipedia/feed/model/Card;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c00f7

    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getCard()Lorg/wikipedia/feed/model/Card;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setCallback(Lorg/wikipedia/feed/view/FeedAdapter$Callback;)V
    .locals 0

    return-void
.end method

.method public setCard(Lorg/wikipedia/feed/model/Card;)V
    .locals 0

    return-void
.end method
