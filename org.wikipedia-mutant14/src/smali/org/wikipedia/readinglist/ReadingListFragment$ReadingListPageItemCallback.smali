.class Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;
.super Ljava/lang/Object;
.source "ReadingListFragment.java"

# interfaces
.implements Lorg/wikipedia/views/PageItemView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/ReadingListFragment;
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
.field final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V
    .locals 0

    .line 804
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/readinglist/ReadingListFragment$1;)V
    .locals 0

    .line 804
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    return-void
.end method

.method static synthetic lambda$onClick$0(Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 815
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    invoke-virtual {v1, p0}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->getListsContainPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->updateLists(Ljava/util/List;Z)V

    .line 816
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->updatePage(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSecondaryActionClick$1$ReadingListFragment$ReadingListPageItemCallback()V
    .locals 1

    .line 861
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$2300(Lorg/wikipedia/readinglist/ReadingListFragment;)Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 862
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1500(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    return-void
.end method

.method public bridge synthetic onActionClick(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 804
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;->onActionClick(Lorg/wikipedia/readinglist/database/ReadingListPage;Landroid/view/View;)V

    return-void
.end method

.method public onActionClick(Lorg/wikipedia/readinglist/database/ReadingListPage;Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 844
    :cond_0
    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {p2}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$2800(Lorg/wikipedia/readinglist/ReadingListFragment;)Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    move-result-object p2

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 845
    invoke-static {v1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1300(Lorg/wikipedia/readinglist/ReadingListFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 846
    invoke-static {v1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1100(Lorg/wikipedia/readinglist/ReadingListFragment;)Lorg/wikipedia/readinglist/database/ReadingList;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    invoke-virtual {v1, p1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->getListsContainPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->id()J

    move-result-wide v2

    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1200(Lorg/wikipedia/readinglist/ReadingListFragment;)Landroidx/appcompat/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 845
    :goto_1
    invoke-static {v1, v2, v3, p1}, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->newInstance(Ljava/util/List;JZ)Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;

    move-result-object p1

    .line 844
    invoke-virtual {p2, v0, p1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method public bridge synthetic onClick(Ljava/lang/Object;)V
    .locals 0

    .line 804
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;->onClick(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    return-void
.end method

.method public onClick(Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 3

    .line 807
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1200(Lorg/wikipedia/readinglist/ReadingListFragment;)Landroidx/appcompat/view/ActionMode;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/views/MultiSelectActionModeCallback;->is(Landroidx/appcompat/view/ActionMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$2600(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 810
    invoke-static {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->toPageTitle(Lorg/wikipedia/readinglist/database/ReadingListPage;)Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    .line 811
    new-instance v1, Lorg/wikipedia/history/HistoryEntry;

    const/16 v2, 0xb

    invoke-direct {v1, v0, v2}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    .line 813
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->touch()V

    .line 814
    new-instance v0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListPageItemCallback$KBnAFKsOLaxXWfcWVJHffsO3Q6E;

    invoke-direct {v0, p1}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListPageItemCallback$KBnAFKsOLaxXWfcWVJHffsO3Q6E;-><init>(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Completable;->fromAction(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    .line 817
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Completable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    .line 819
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/wikipedia/page/PageActivity;->newIntentForCurrentTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-virtual {v1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$2700(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/page/PageTitle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onListChipClick(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 2

    .line 870
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/wikipedia/readinglist/ReadingListActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/readinglist/database/ReadingList;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic onLongClick(Ljava/lang/Object;)Z
    .locals 0

    .line 804
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;->onLongClick(Lorg/wikipedia/readinglist/database/ReadingListPage;)Z

    move-result p1

    return p1
.end method

.method public onLongClick(Lorg/wikipedia/readinglist/database/ReadingListPage;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 828
    :cond_0
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$2800(Lorg/wikipedia/readinglist/ReadingListFragment;)Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 829
    invoke-static {v3}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1300(Lorg/wikipedia/readinglist/ReadingListFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 830
    invoke-static {v3}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1100(Lorg/wikipedia/readinglist/ReadingListFragment;)Lorg/wikipedia/readinglist/database/ReadingList;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_1
    sget-object v3, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    invoke-virtual {v3, p1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->getListsContainPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)Ljava/util/List;

    move-result-object v3

    :goto_0
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->id()J

    move-result-wide v4

    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1200(Lorg/wikipedia/readinglist/ReadingListFragment;)Landroidx/appcompat/view/ActionMode;

    move-result-object p1

    const/4 v6, 0x1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 829
    :cond_2
    invoke-static {v3, v4, v5, v0}, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->newInstance(Ljava/util/List;JZ)Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;

    move-result-object p1

    .line 828
    invoke-virtual {v1, v2, p1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    return v6
.end method

.method public bridge synthetic onSecondaryActionClick(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 804
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;->onSecondaryActionClick(Lorg/wikipedia/readinglist/database/ReadingListPage;Landroid/view/View;)V

    return-void
.end method

.method public onSecondaryActionClick(Lorg/wikipedia/readinglist/database/ReadingListPage;Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 852
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isDownloadOnlyOverWiFiEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/wikipedia/util/DeviceUtil;->isOnWiFi()Z

    move-result p2

    if-nez p2, :cond_0

    .line 853
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->status()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 854
    invoke-virtual {p1, p2}, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline(Z)V

    .line 857
    :cond_0
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->saving()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 858
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f10031b

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 860
    :cond_1
    sget-object p2, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListPageItemCallback$PJhw_hZGK93gp3OGl32p34eVPno;

    invoke-direct {v1, p0}, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListPageItemCallback$PJhw_hZGK93gp3OGl32p34eVPno;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;)V

    invoke-virtual {p2, v0, p1, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->toggleOffline(Landroid/app/Activity;Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onThumbClick(Ljava/lang/Object;)V
    .locals 0

    .line 804
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;->onThumbClick(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    return-void
.end method

.method public onThumbClick(Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 0

    .line 836
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;->onClick(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    return-void
.end method
