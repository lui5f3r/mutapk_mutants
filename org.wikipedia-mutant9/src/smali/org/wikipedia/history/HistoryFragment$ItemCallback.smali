.class Lorg/wikipedia/history/HistoryFragment$ItemCallback;
.super Ljava/lang/Object;
.source "HistoryFragment.java"

# interfaces
.implements Lorg/wikipedia/views/PageItemView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/history/HistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/wikipedia/views/PageItemView$Callback<",
        "Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/history/HistoryFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/history/HistoryFragment;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lorg/wikipedia/history/HistoryFragment$ItemCallback;->this$0:Lorg/wikipedia/history/HistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/history/HistoryFragment;Lorg/wikipedia/history/HistoryFragment$1;)V
    .locals 0

    .line 472
    invoke-direct {p0, p1}, Lorg/wikipedia/history/HistoryFragment$ItemCallback;-><init>(Lorg/wikipedia/history/HistoryFragment;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onActionClick(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 472
    check-cast p1, Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/history/HistoryFragment$ItemCallback;->onActionClick(Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;Landroid/view/View;)V

    return-void
.end method

.method public onActionClick(Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onClick(Ljava/lang/Object;)V
    .locals 0

    .line 472
    check-cast p1, Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;

    invoke-virtual {p0, p1}, Lorg/wikipedia/history/HistoryFragment$ItemCallback;->onClick(Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;)V

    return-void
.end method

.method public onClick(Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;)V
    .locals 3

    .line 475
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$ItemCallback;->this$0:Lorg/wikipedia/history/HistoryFragment;

    invoke-static {v0}, Lorg/wikipedia/history/HistoryFragment;->access$500(Lorg/wikipedia/history/HistoryFragment;)Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$ItemCallback;->this$0:Lorg/wikipedia/history/HistoryFragment;

    invoke-static {v0}, Lorg/wikipedia/history/HistoryFragment;->access$500(Lorg/wikipedia/history/HistoryFragment;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$ItemCallback;->this$0:Lorg/wikipedia/history/HistoryFragment;

    invoke-static {v0, p1}, Lorg/wikipedia/history/HistoryFragment;->access$1100(Lorg/wikipedia/history/HistoryFragment;Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 478
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$ItemCallback;->this$0:Lorg/wikipedia/history/HistoryFragment;

    new-instance v1, Lorg/wikipedia/history/HistoryEntry;

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;->getEntry()Lorg/wikipedia/history/HistoryEntry;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    invoke-static {v0, v1}, Lorg/wikipedia/history/HistoryFragment;->access$1200(Lorg/wikipedia/history/HistoryFragment;Lorg/wikipedia/history/HistoryEntry;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onListChipClick(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onLongClick(Ljava/lang/Object;)Z
    .locals 0

    .line 472
    check-cast p1, Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;

    invoke-virtual {p0, p1}, Lorg/wikipedia/history/HistoryFragment$ItemCallback;->onLongClick(Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;)Z

    move-result p1

    return p1
.end method

.method public onLongClick(Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;)Z
    .locals 1

    .line 484
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$ItemCallback;->this$0:Lorg/wikipedia/history/HistoryFragment;

    invoke-static {v0}, Lorg/wikipedia/history/HistoryFragment;->access$1300(Lorg/wikipedia/history/HistoryFragment;)V

    .line 485
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$ItemCallback;->this$0:Lorg/wikipedia/history/HistoryFragment;

    invoke-static {v0, p1}, Lorg/wikipedia/history/HistoryFragment;->access$1100(Lorg/wikipedia/history/HistoryFragment;Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onSecondaryActionClick(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 472
    check-cast p1, Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/history/HistoryFragment$ItemCallback;->onSecondaryActionClick(Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;Landroid/view/View;)V

    return-void
.end method

.method public onSecondaryActionClick(Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onThumbClick(Ljava/lang/Object;)V
    .locals 0

    .line 472
    check-cast p1, Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;

    invoke-virtual {p0, p1}, Lorg/wikipedia/history/HistoryFragment$ItemCallback;->onThumbClick(Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;)V

    return-void
.end method

.method public onThumbClick(Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;)V
    .locals 0

    .line 491
    invoke-virtual {p0, p1}, Lorg/wikipedia/history/HistoryFragment$ItemCallback;->onClick(Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;)V

    return-void
.end method
