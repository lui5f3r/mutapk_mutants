.class public Lorg/wikipedia/feed/mainpage/MainPageCardView;
.super Lorg/wikipedia/feed/view/StaticCardView;
.source "MainPageCardView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/feed/view/StaticCardView<",
        "Lorg/wikipedia/feed/mainpage/MainPageCard;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/view/StaticCardView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private goToMainPage()V
    .locals 5

    .line 45
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object v0

    invoke-virtual {p0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/history/HistoryEntry;

    .line 47
    invoke-static {}, Lorg/wikipedia/feed/mainpage/MainPageClient;->getMainPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v3

    const/16 v4, 0x11

    invoke-direct {v2, v3, v4}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    .line 46
    invoke-interface {v0, v1, v2}, Lorg/wikipedia/feed/view/ListCardItemView$Callback;->onSelectPage(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onActionClick(Landroid/view/View;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/wikipedia/feed/mainpage/MainPageCardView;->goToMainPage()V

    return-void
.end method

.method protected onContentClick(Landroid/view/View;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/wikipedia/feed/mainpage/MainPageCardView;->goToMainPage()V

    return-void
.end method

.method public setCallback(Lorg/wikipedia/feed/view/FeedAdapter$Callback;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->setCallback(Lorg/wikipedia/feed/view/FeedAdapter$Callback;)V

    return-void
.end method

.method public setCard(Lorg/wikipedia/feed/mainpage/MainPageCard;)V
    .locals 3

    .line 23
    invoke-super {p0, p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->setCard(Lorg/wikipedia/feed/model/Card;)V

    const p1, 0x7f10046a

    .line 24
    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/view/StaticCardView;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/view/StaticCardView;->setTitle(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 26
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f100469

    .line 25
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/view/StaticCardView;->setSubtitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f080123

    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/view/StaticCardView;->setIcon(I)V

    const p1, 0x7f060086

    .line 28
    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/view/StaticCardView;->setContainerBackground(I)V

    const p1, 0x7f080094

    const v0, 0x7f100468

    .line 29
    invoke-virtual {p0, p1, v0}, Lorg/wikipedia/feed/view/StaticCardView;->setAction(II)V

    return-void
.end method

.method public bridge synthetic setCard(Lorg/wikipedia/feed/model/Card;)V
    .locals 0

    .line 17
    check-cast p1, Lorg/wikipedia/feed/mainpage/MainPageCard;

    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/mainpage/MainPageCardView;->setCard(Lorg/wikipedia/feed/mainpage/MainPageCard;)V

    return-void
.end method
