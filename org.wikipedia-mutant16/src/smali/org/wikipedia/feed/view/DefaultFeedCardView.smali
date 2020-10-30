.class public abstract Lorg/wikipedia/feed/view/DefaultFeedCardView;
.super Lorg/wikipedia/views/WikiCardView;
.source "DefaultFeedCardView.java"

# interfaces
.implements Lorg/wikipedia/feed/view/FeedCardView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/wikipedia/feed/model/Card;",
        ">",
        "Lorg/wikipedia/views/WikiCardView;",
        "Lorg/wikipedia/feed/view/FeedCardView<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private callback:Lorg/wikipedia/feed/view/FeedAdapter$Callback;

.field private card:Lorg/wikipedia/feed/model/Card;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lorg/wikipedia/views/WikiCardView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getCallback()Lorg/wikipedia/feed/view/FeedAdapter$Callback;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/wikipedia/feed/view/DefaultFeedCardView;->callback:Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    return-object v0
.end method

.method public getCard()Lorg/wikipedia/feed/model/Card;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lorg/wikipedia/feed/view/DefaultFeedCardView;->card:Lorg/wikipedia/feed/model/Card;

    return-object v0
.end method

.method public setCallback(Lorg/wikipedia/feed/view/FeedAdapter$Callback;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/wikipedia/feed/view/DefaultFeedCardView;->callback:Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    return-void
.end method

.method public setCard(Lorg/wikipedia/feed/model/Card;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lorg/wikipedia/feed/view/DefaultFeedCardView;->card:Lorg/wikipedia/feed/model/Card;

    return-void
.end method

.method protected setLayoutDirectionByWikiSite(Lorg/wikipedia/dataclient/WikiSite;Landroid/view/View;)V
    .locals 0

    .line 40
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/L10nUtil;->isLangRTL(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutDirection(I)V

    return-void
.end method
