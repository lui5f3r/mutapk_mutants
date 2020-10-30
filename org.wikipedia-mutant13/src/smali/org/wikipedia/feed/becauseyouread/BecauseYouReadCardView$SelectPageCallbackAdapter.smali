.class Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView$SelectPageCallbackAdapter;
.super Ljava/lang/Object;
.source "BecauseYouReadCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectPageCallbackAdapter"
.end annotation


# instance fields
.field private final card:Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;

.field final synthetic this$0:Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView;


# direct methods
.method constructor <init>(Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView;Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView$SelectPageCallbackAdapter;->this$0:Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView$SelectPageCallbackAdapter;->card:Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 59
    iget-object p1, p0, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView$SelectPageCallbackAdapter;->this$0:Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView;

    invoke-static {p1}, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView;->access$000(Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    iget-object p1, p0, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView$SelectPageCallbackAdapter;->this$0:Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView;

    invoke-static {p1}, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView;->access$100(Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView;)Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView$SelectPageCallbackAdapter;->card:Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;

    new-instance v1, Lorg/wikipedia/history/HistoryEntry;

    iget-object v2, p0, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView$SelectPageCallbackAdapter;->card:Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;

    invoke-virtual {v2}, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCard;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    invoke-interface {p1, v0, v1}, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadCardView$Callback;->onSelectPageFromExistingTab(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V

    :cond_0
    return-void
.end method
