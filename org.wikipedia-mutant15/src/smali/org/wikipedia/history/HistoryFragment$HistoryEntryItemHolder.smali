.class Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;
.super Lorg/wikipedia/views/DefaultViewHolder;
.source "HistoryFragment.java"

# interfaces
.implements Lorg/wikipedia/views/SwipeableItemTouchHelperCallback$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/history/HistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryEntryItemHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/views/DefaultViewHolder<",
        "Lorg/wikipedia/views/PageItemView<",
        "Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;",
        ">;>;",
        "Lorg/wikipedia/views/SwipeableItemTouchHelperCallback$Callback;"
    }
.end annotation


# instance fields
.field private entry:Lorg/wikipedia/history/HistoryEntry;

.field final synthetic this$0:Lorg/wikipedia/history/HistoryFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/history/HistoryFragment;Lorg/wikipedia/views/PageItemView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/views/PageItemView<",
            "Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;",
            ">;)V"
        }
    .end annotation

    .line 365
    iput-object p1, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;->this$0:Lorg/wikipedia/history/HistoryFragment;

    .line 366
    invoke-direct {p0, p2}, Lorg/wikipedia/views/DefaultViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method bindItem(Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;)V
    .locals 3

    .line 370
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;->getEntry()Lorg/wikipedia/history/HistoryEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;->entry:Lorg/wikipedia/history/HistoryEntry;

    .line 371
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PageItemView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/PageItemView;->setItem(Ljava/lang/Object;)V

    .line 372
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PageItemView;

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;->getEntry()Lorg/wikipedia/history/HistoryEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/PageItemView;->setTitle(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PageItemView;

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;->getEntry()Lorg/wikipedia/history/HistoryEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/PageItemView;->setDescription(Ljava/lang/CharSequence;)V

    .line 374
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PageItemView;

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/PageItemView;->setImageUrl(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PageItemView;

    iget-object v1, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;->this$0:Lorg/wikipedia/history/HistoryFragment;

    invoke-static {v1}, Lorg/wikipedia/history/HistoryFragment;->access$500(Lorg/wikipedia/history/HistoryFragment;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;->getEntry()Lorg/wikipedia/history/HistoryEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/PageItemView;->setSelected(Z)V

    .line 376
    sget-object v0, Lorg/wikipedia/page/PageAvailableOfflineHandler;->INSTANCE:Lorg/wikipedia/page/PageAvailableOfflineHandler;

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;->getEntry()Lorg/wikipedia/history/HistoryEntry;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    new-instance v1, Lorg/wikipedia/history/-$$Lambda$HistoryFragment$HistoryEntryItemHolder$9UKYrXWkgEh6Sny5hIg2D8PyZGU;

    invoke-direct {v1, p0}, Lorg/wikipedia/history/-$$Lambda$HistoryFragment$HistoryEntryItemHolder$9UKYrXWkgEh6Sny5hIg2D8PyZGU;-><init>(Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;)V

    invoke-virtual {v0, p1, v1}, Lorg/wikipedia/page/PageAvailableOfflineHandler;->check(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/page/PageAvailableOfflineHandler$Callback;)V

    return-void
.end method

.method public synthetic lambda$bindItem$0$HistoryFragment$HistoryEntryItemHolder(Z)V
    .locals 1

    .line 376
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PageItemView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/PageItemView;->setViewsGreyedOut(Z)V

    return-void
.end method

.method public onSwipe()V
    .locals 2

    .line 382
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;->this$0:Lorg/wikipedia/history/HistoryFragment;

    invoke-static {v0}, Lorg/wikipedia/history/HistoryFragment;->access$500(Lorg/wikipedia/history/HistoryFragment;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;->entry:Lorg/wikipedia/history/HistoryEntry;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;->this$0:Lorg/wikipedia/history/HistoryFragment;

    invoke-static {v0}, Lorg/wikipedia/history/HistoryFragment;->access$600(Lorg/wikipedia/history/HistoryFragment;)V

    return-void
.end method
