.class Lorg/wikipedia/feed/view/StaticCardView$OverflowMenuClickListener;
.super Ljava/lang/Object;
.source "StaticCardView.java"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/view/StaticCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/view/StaticCardView;


# direct methods
.method private constructor <init>(Lorg/wikipedia/feed/view/StaticCardView;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lorg/wikipedia/feed/view/StaticCardView$OverflowMenuClickListener;->this$0:Lorg/wikipedia/feed/view/StaticCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/feed/view/StaticCardView;Lorg/wikipedia/feed/view/StaticCardView$1;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/view/StaticCardView$OverflowMenuClickListener;-><init>(Lorg/wikipedia/feed/view/StaticCardView;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 92
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    .line 100
    :pswitch_0
    iget-object p1, p0, Lorg/wikipedia/feed/view/StaticCardView$OverflowMenuClickListener;->this$0:Lorg/wikipedia/feed/view/StaticCardView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/wikipedia/feed/view/StaticCardView$OverflowMenuClickListener;->this$0:Lorg/wikipedia/feed/view/StaticCardView;

    invoke-virtual {v2}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    and-int/2addr p1, v1

    if-eqz p1, :cond_2

    .line 101
    iget-object p1, p0, Lorg/wikipedia/feed/view/StaticCardView$OverflowMenuClickListener;->this$0:Lorg/wikipedia/feed/view/StaticCardView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p1

    iget-object v1, p0, Lorg/wikipedia/feed/view/StaticCardView$OverflowMenuClickListener;->this$0:Lorg/wikipedia/feed/view/StaticCardView;

    invoke-virtual {v1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/wikipedia/feed/view/CardHeaderView$Callback;->onRequestEditCardLanguages(Lorg/wikipedia/feed/model/Card;)V

    :cond_2
    return v0

    .line 94
    :pswitch_1
    iget-object p1, p0, Lorg/wikipedia/feed/view/StaticCardView$OverflowMenuClickListener;->this$0:Lorg/wikipedia/feed/view/StaticCardView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/wikipedia/feed/view/StaticCardView$OverflowMenuClickListener;->this$0:Lorg/wikipedia/feed/view/StaticCardView;

    invoke-virtual {v2}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    and-int/2addr p1, v0

    if-eqz p1, :cond_5

    .line 95
    iget-object p1, p0, Lorg/wikipedia/feed/view/StaticCardView$OverflowMenuClickListener;->this$0:Lorg/wikipedia/feed/view/StaticCardView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/feed/view/StaticCardView$OverflowMenuClickListener;->this$0:Lorg/wikipedia/feed/view/StaticCardView;

    invoke-virtual {v0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/wikipedia/feed/view/CardHeaderView$Callback;->onRequestDismissCard(Lorg/wikipedia/feed/model/Card;)Z

    move-result p1

    return p1

    :cond_5
    return v1

    .line 106
    :pswitch_2
    iget-object p1, p0, Lorg/wikipedia/feed/view/StaticCardView$OverflowMenuClickListener;->this$0:Lorg/wikipedia/feed/view/StaticCardView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    iget-object v2, p0, Lorg/wikipedia/feed/view/StaticCardView$OverflowMenuClickListener;->this$0:Lorg/wikipedia/feed/view/StaticCardView;

    invoke-virtual {v2}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v2

    if-eqz v2, :cond_7

    const/4 v1, 0x1

    :cond_7
    and-int/2addr p1, v1

    if-eqz p1, :cond_8

    .line 107
    iget-object p1, p0, Lorg/wikipedia/feed/view/StaticCardView$OverflowMenuClickListener;->this$0:Lorg/wikipedia/feed/view/StaticCardView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p1

    iget-object v1, p0, Lorg/wikipedia/feed/view/StaticCardView$OverflowMenuClickListener;->this$0:Lorg/wikipedia/feed/view/StaticCardView;

    invoke-virtual {v1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/wikipedia/feed/view/CardHeaderView$Callback;->onRequestCustomize(Lorg/wikipedia/feed/model/Card;)V

    :cond_8
    return v0

    :pswitch_data_0
    .packed-switch 0x7f090225
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
