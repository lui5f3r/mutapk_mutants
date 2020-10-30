.class Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;
.super Ljava/lang/Object;
.source "ReadingListsFragment.java"

# interfaces
.implements Lorg/wikipedia/views/PageItemView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/ReadingListsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadingListPageItemCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/wikipedia/views/PageItemView$Callback<",
        "Lorg/wikipedia/readinglist/database/ReadingListPage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Lorg/wikipedia/readinglist/ReadingListsFragment$1;)V
    .locals 0

    .line 595
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V

    return-void
.end method

.method static synthetic lambda$onClick$0(Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 605
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    invoke-virtual {v1, p0}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->getListsContainPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->updateLists(Ljava/util/List;Z)V

    .line 606
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->updatePage(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSecondaryActionClick$1$ReadingListsFragment$ReadingListPageItemCallback()V
    .locals 1

    .line 649
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$1400(Lorg/wikipedia/readinglist/ReadingListsFragment;)Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onActionClick(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 595
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;->onActionClick(Lorg/wikipedia/readinglist/database/ReadingListPage;Landroid/view/View;)V

    return-void
.end method

.method public onActionClick(Lorg/wikipedia/readinglist/database/ReadingListPage;Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 633
    :cond_0
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-static {p2}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$600(Lorg/wikipedia/readinglist/ReadingListsFragment;)Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    move-result-object p2

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    .line 634
    invoke-virtual {v1, p1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->getListsContainPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->id()J

    move-result-wide v2

    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$1100(Lorg/wikipedia/readinglist/ReadingListsFragment;)Landroidx/appcompat/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {v1, v2, v3, p1}, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->newInstance(Ljava/util/List;JZ)Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;

    move-result-object p1

    .line 633
    invoke-virtual {p2, v0, p1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method public bridge synthetic onClick(Ljava/lang/Object;)V
    .locals 0

    .line 595
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;->onClick(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    return-void
.end method

.method public onClick(Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 600
    invoke-static {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->toPageTitle(Lorg/wikipedia/readinglist/database/ReadingListPage;)Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    .line 601
    new-instance v1, Lorg/wikipedia/history/HistoryEntry;

    const/16 v2, 0xb

    invoke-direct {v1, v0, v2}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    .line 603
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->touch()V

    .line 604
    new-instance v0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$ReadingListPageItemCallback$DE23Z-0QwNux7npVWM2lpUP71aw;

    invoke-direct {v0, p1}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$ReadingListPageItemCallback$DE23Z-0QwNux7npVWM2lpUP71aw;-><init>(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Completable;->fromAction(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 607
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Completable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    .line 609
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/wikipedia/page/PageActivity;->newIntentForCurrentTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onListChipClick(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 2

    .line 657
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/wikipedia/readinglist/ReadingListActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/readinglist/database/ReadingList;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic onLongClick(Ljava/lang/Object;)Z
    .locals 0

    .line 595
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;->onLongClick(Lorg/wikipedia/readinglist/database/ReadingListPage;)Z

    move-result p1

    return p1
.end method

.method public onLongClick(Lorg/wikipedia/readinglist/database/ReadingListPage;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 618
    :cond_0
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-static {v1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$600(Lorg/wikipedia/readinglist/ReadingListsFragment;)Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    .line 619
    invoke-virtual {v3, p1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->getListsContainPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->id()J

    move-result-wide v4

    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->access$1100(Lorg/wikipedia/readinglist/ReadingListsFragment;)Landroidx/appcompat/view/ActionMode;

    move-result-object p1

    const/4 v6, 0x1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v3, v4, v5, v0}, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->newInstance(Ljava/util/List;JZ)Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;

    move-result-object p1

    .line 618
    invoke-virtual {v1, v2, p1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    return v6
.end method

.method public bridge synthetic onSecondaryActionClick(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 595
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;->onSecondaryActionClick(Lorg/wikipedia/readinglist/database/ReadingListPage;Landroid/view/View;)V

    return-void
.end method

.method public onSecondaryActionClick(Lorg/wikipedia/readinglist/database/ReadingListPage;Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 640
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isDownloadOnlyOverWiFiEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/wikipedia/util/DeviceUtil;->isOnWiFi()Z

    move-result p2

    if-nez p2, :cond_0

    .line 641
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->status()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 642
    invoke-virtual {p1, p2}, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline(Z)V

    .line 645
    :cond_0
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->saving()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 646
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f10031b

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 648
    :cond_1
    sget-object p2, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$ReadingListPageItemCallback$t7fxXlEj_Sz8Rs6e3QlxGJn40ro;

    invoke-direct {v1, p0}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$ReadingListPageItemCallback$t7fxXlEj_Sz8Rs6e3QlxGJn40ro;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;)V

    invoke-virtual {p2, v0, p1, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->toggleOffline(Landroid/app/Activity;Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onThumbClick(Ljava/lang/Object;)V
    .locals 0

    .line 595
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;->onThumbClick(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    return-void
.end method

.method public onThumbClick(Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 0

    .line 625
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemCallback;->onClick(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    return-void
.end method
