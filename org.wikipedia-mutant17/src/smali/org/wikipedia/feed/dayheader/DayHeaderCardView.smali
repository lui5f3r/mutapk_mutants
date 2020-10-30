.class public Lorg/wikipedia/feed/dayheader/DayHeaderCardView;
.super Landroid/widget/FrameLayout;
.source "DayHeaderCardView.java"

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


# instance fields
.field private card:Lorg/wikipedia/feed/model/Card;

.field private dayTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c00f0

    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0900ec

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/wikipedia/feed/dayheader/DayHeaderCardView;->dayTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getCard()Lorg/wikipedia/feed/model/Card;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/wikipedia/feed/dayheader/DayHeaderCardView;->card:Lorg/wikipedia/feed/model/Card;

    return-object v0
.end method

.method public setCallback(Lorg/wikipedia/feed/view/FeedAdapter$Callback;)V
    .locals 0

    return-void
.end method

.method public setCard(Lorg/wikipedia/feed/model/Card;)V
    .locals 1

    .line 26
    iput-object p1, p0, Lorg/wikipedia/feed/dayheader/DayHeaderCardView;->card:Lorg/wikipedia/feed/model/Card;

    .line 27
    iget-object v0, p0, Lorg/wikipedia/feed/dayheader/DayHeaderCardView;->dayTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/model/Card;->title()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
