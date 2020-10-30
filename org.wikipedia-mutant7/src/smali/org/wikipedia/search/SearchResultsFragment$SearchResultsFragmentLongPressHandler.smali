.class Lorg/wikipedia/search/SearchResultsFragment$SearchResultsFragmentLongPressHandler;
.super Ljava/lang/Object;
.source "SearchResultsFragment.java"

# interfaces
.implements Lorg/wikipedia/LongPressHandler$OverflowMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/search/SearchResultsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchResultsFragmentLongPressHandler"
.end annotation


# instance fields
.field private lastPositionRequested:I

.field final synthetic this$0:Lorg/wikipedia/search/SearchResultsFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/search/SearchResultsFragment;I)V
    .locals 0

    .line 461
    iput-object p1, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultsFragmentLongPressHandler;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    iput p2, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultsFragmentLongPressHandler;->lastPositionRequested:I

    return-void
.end method


# virtual methods
.method public onAddToList(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)V
    .locals 1

    .line 499
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultsFragmentLongPressHandler;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-static {v0}, Lorg/wikipedia/search/SearchResultsFragment;->access$100(Lorg/wikipedia/search/SearchResultsFragment;)Lorg/wikipedia/search/SearchResultsFragment$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 501
    invoke-interface {v0, p1, p2}, Lorg/wikipedia/search/SearchResultsFragment$Callback;->onSearchResultAddToList(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)V

    :cond_0
    return-void
.end method

.method public onCopyLink(Lorg/wikipedia/page/PageTitle;)V
    .locals 1

    .line 483
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultsFragmentLongPressHandler;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-static {v0}, Lorg/wikipedia/search/SearchResultsFragment;->access$100(Lorg/wikipedia/search/SearchResultsFragment;)Lorg/wikipedia/search/SearchResultsFragment$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 485
    invoke-interface {v0, p1}, Lorg/wikipedia/search/SearchResultsFragment$Callback;->onSearchResultCopyLink(Lorg/wikipedia/page/PageTitle;)V

    :cond_0
    return-void
.end method

.method public onOpenInNewTab(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V
    .locals 2

    .line 475
    iget-object p2, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultsFragmentLongPressHandler;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-static {p2}, Lorg/wikipedia/search/SearchResultsFragment;->access$100(Lorg/wikipedia/search/SearchResultsFragment;)Lorg/wikipedia/search/SearchResultsFragment$Callback;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 477
    iget v1, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultsFragmentLongPressHandler;->lastPositionRequested:I

    invoke-interface {p2, p1, v0, v1}, Lorg/wikipedia/search/SearchResultsFragment$Callback;->navigateToTitle(Lorg/wikipedia/page/PageTitle;ZI)V

    :cond_0
    return-void
.end method

.method public onOpenLink(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V
    .locals 2

    .line 467
    iget-object p2, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultsFragmentLongPressHandler;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-static {p2}, Lorg/wikipedia/search/SearchResultsFragment;->access$100(Lorg/wikipedia/search/SearchResultsFragment;)Lorg/wikipedia/search/SearchResultsFragment$Callback;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 469
    iget v1, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultsFragmentLongPressHandler;->lastPositionRequested:I

    invoke-interface {p2, p1, v0, v1}, Lorg/wikipedia/search/SearchResultsFragment$Callback;->navigateToTitle(Lorg/wikipedia/page/PageTitle;ZI)V

    :cond_0
    return-void
.end method

.method public onShareLink(Lorg/wikipedia/page/PageTitle;)V
    .locals 1

    .line 491
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment$SearchResultsFragmentLongPressHandler;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-static {v0}, Lorg/wikipedia/search/SearchResultsFragment;->access$100(Lorg/wikipedia/search/SearchResultsFragment;)Lorg/wikipedia/search/SearchResultsFragment$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 493
    invoke-interface {v0, p1}, Lorg/wikipedia/search/SearchResultsFragment$Callback;->onSearchResultShareLink(Lorg/wikipedia/page/PageTitle;)V

    :cond_0
    return-void
.end method
