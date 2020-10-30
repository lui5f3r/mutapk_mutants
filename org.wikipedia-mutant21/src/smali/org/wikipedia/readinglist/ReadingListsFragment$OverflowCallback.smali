.class Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;
.super Ljava/lang/Object;
.source "ReadingListsFragment.java"

# interfaces
.implements Lorg/wikipedia/views/ReadingListsOverflowView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/ReadingListsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Lorg/wikipedia/readinglist/ReadingListsFragment$1;)V
    .locals 0

    .line 267
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V

    return-void
.end method


# virtual methods
.method public createNewListClick()V
    .locals 5

    .line 276
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    const v1, 0x7f100336

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 278
    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-static {v2}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$700(Lorg/wikipedia/readinglist/ReadingListsFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 279
    instance-of v4, v3, Lorg/wikipedia/readinglist/database/ReadingList;

    if-eqz v4, :cond_0

    .line 280
    check-cast v3, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v3}, Lorg/wikipedia/readinglist/database/ReadingList;->title()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 283
    :cond_1
    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$OverflowCallback$8KbM4pPzWnFAL56H1AdDg_J8XYE;

    invoke-direct {v3, p0}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$OverflowCallback$8KbM4pPzWnFAL56H1AdDg_J8XYE;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;)V

    const-string v4, ""

    invoke-static {v2, v0, v4, v1, v3}, Lorg/wikipedia/readinglist/ReadingListTitleDialog;->readingListTitleDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListTitleDialog$Callback;)Lorg/wikipedia/views/TextInputDialog;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public synthetic lambda$createNewListClick$0$ReadingListsFragment$OverflowCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 285
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->createList(Ljava/lang/String;Ljava/lang/String;)Lorg/wikipedia/readinglist/database/ReadingList;

    .line 286
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists()V

    return-void
.end method

.method public refreshClick()V
    .locals 2

    .line 292
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    iget-object v0, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 293
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-static {v0, v1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->refreshSync(Landroidx/fragment/app/Fragment;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    return-void
.end method

.method public sortByClick()V
    .locals 3

    .line 270
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$600(Lorg/wikipedia/readinglist/ReadingListsFragment;)Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 271
    invoke-static {v2}, Lorg/wikipedia/settings/Prefs;->getReadingListSortMode(I)I

    move-result v2

    invoke-static {v2}, Lorg/wikipedia/readinglist/SortReadingListsDialog;->newInstance(I)Lorg/wikipedia/readinglist/SortReadingListsDialog;

    move-result-object v2

    .line 270
    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method
