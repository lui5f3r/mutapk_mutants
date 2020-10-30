.class public Lorg/wikipedia/feed/offline/OfflineCardView;
.super Landroid/widget/LinearLayout;
.source "OfflineCardView.java"

# interfaces
.implements Lorg/wikipedia/feed/view/FeedCardView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lorg/wikipedia/feed/view/FeedCardView<",
        "Lorg/wikipedia/feed/model/Card;",
        ">;"
    }
.end annotation


# instance fields
.field private callback:Lorg/wikipedia/feed/view/FeedAdapter$Callback;

.field padding:Landroid/widget/Space;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c00f5

    invoke-static {p1, v0, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method


# virtual methods
.method public getCard()Lorg/wikipedia/feed/model/Card;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 49
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 50
    iget-object v0, p0, Lorg/wikipedia/feed/offline/OfflineCardView;->padding:Landroid/widget/Space;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setVisibility(I)V

    return-void
.end method

.method onRetryClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/wikipedia/feed/offline/OfflineCardView;->callback:Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0}, Lorg/wikipedia/feed/view/FeedAdapter$Callback;->onRetryFromOffline()V

    :cond_0
    return-void
.end method

.method public setCallback(Lorg/wikipedia/feed/view/FeedAdapter$Callback;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/wikipedia/feed/offline/OfflineCardView;->callback:Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    return-void
.end method

.method public setCard(Lorg/wikipedia/feed/model/Card;)V
    .locals 0

    return-void
.end method

.method public setTopPadding()V
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/wikipedia/feed/offline/OfflineCardView;->padding:Landroid/widget/Space;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setVisibility(I)V

    return-void
.end method
