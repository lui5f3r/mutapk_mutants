.class public Lorg/wikipedia/feed/accessibility/AccessibilityCardView;
.super Landroid/widget/LinearLayout;
.source "AccessibilityCardView.java"

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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c00ed

    invoke-static {p1, v0, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 23
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method


# virtual methods
.method public getCard()Lorg/wikipedia/feed/model/Card;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method onLoadMoreClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 27
    iget-object v0, p0, Lorg/wikipedia/feed/accessibility/AccessibilityCardView;->callback:Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0}, Lorg/wikipedia/feed/view/FeedAdapter$Callback;->onRequestMore()V

    :cond_0
    return-void
.end method

.method public setCallback(Lorg/wikipedia/feed/view/FeedAdapter$Callback;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/wikipedia/feed/accessibility/AccessibilityCardView;->callback:Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    return-void
.end method

.method public setCard(Lorg/wikipedia/feed/model/Card;)V
    .locals 0

    return-void
.end method
