.class public Lorg/wikipedia/search/RecentSearchesFragment;
.super Landroidx/fragment/app/Fragment;
.source "RecentSearchesFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/search/RecentSearchesFragment$RecentSearchesAdapter;,
        Lorg/wikipedia/search/RecentSearchesFragment$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private adapter:Lorg/wikipedia/search/RecentSearchesFragment$RecentSearchesAdapter;

.field addLanguagesButton:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private callback:Lorg/wikipedia/search/RecentSearchesFragment$Callback;

.field deleteButton:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field emptyViewMessage:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field recentSearches:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field recentSearchesContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field recentSearchesList:Landroid/widget/ListView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field searchEmptyView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$null$0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 63
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    const-class v1, Lorg/wikipedia/search/RecentSearch;

    invoke-virtual {v0, v1}, Lorg/wikipedia/WikipediaApp;->getDatabaseClient(Ljava/lang/Class;)Lorg/wikipedia/database/DatabaseClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/database/DatabaseClient;->deleteAll()V

    return-void
.end method

.method static synthetic lambda$null$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 63
    sget-object p0, Lorg/wikipedia/search/-$$Lambda$RecentSearchesFragment$_ANegCljvf1S22sHrasfgnBAMTo;->INSTANCE:Lorg/wikipedia/search/-$$Lambda$RecentSearchesFragment$_ANegCljvf1S22sHrasfgnBAMTo;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Completable;->fromAction(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Completable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method private updateSearchEmptyView(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 130
    iget-object p1, p0, Lorg/wikipedia/search/RecentSearchesFragment;->searchEmptyView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 131
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 132
    iget-object p1, p0, Lorg/wikipedia/search/RecentSearchesFragment;->addLanguagesButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object p1, p0, Lorg/wikipedia/search/RecentSearchesFragment;->emptyViewMessage:Landroid/widget/TextView;

    const v0, 0x7f10037e

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/search/RecentSearchesFragment;->addLanguagesButton:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object p1, p0, Lorg/wikipedia/search/RecentSearchesFragment;->emptyViewMessage:Landroid/widget/TextView;

    const v0, 0x7f10037d

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/search/RecentSearchesFragment;->searchEmptyView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 76
    iget-object v0, p0, Lorg/wikipedia/search/RecentSearchesFragment;->recentSearchesContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$onActivityCreated$3$RecentSearchesFragment(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 86
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/search/RecentSearch;

    .line 87
    iget-object p2, p0, Lorg/wikipedia/search/RecentSearchesFragment;->callback:Lorg/wikipedia/search/RecentSearchesFragment$Callback;

    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p1}, Lorg/wikipedia/search/RecentSearch;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/wikipedia/search/RecentSearchesFragment$Callback;->switchToSearch(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onCreateView$2$RecentSearchesFragment(Landroid/view/View;)V
    .locals 2

    .line 60
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f100062

    .line 61
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f100064

    .line 62
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/search/-$$Lambda$RecentSearchesFragment$Jgy-7Kr5Wj-PERikrOJUXx8RcUA;->INSTANCE:Lorg/wikipedia/search/-$$Lambda$RecentSearchesFragment$Jgy-7Kr5Wj-PERikrOJUXx8RcUA;

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f100063

    .line 64
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 65
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 81
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 82
    new-instance p1, Lorg/wikipedia/search/RecentSearchesFragment$RecentSearchesAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p1, p0, v0, v1, v2}, Lorg/wikipedia/search/RecentSearchesFragment$RecentSearchesAdapter;-><init>(Lorg/wikipedia/search/RecentSearchesFragment;Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-object p1, p0, Lorg/wikipedia/search/RecentSearchesFragment;->adapter:Lorg/wikipedia/search/RecentSearchesFragment$RecentSearchesAdapter;

    .line 83
    iget-object v0, p0, Lorg/wikipedia/search/RecentSearchesFragment;->recentSearchesList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    iget-object p1, p0, Lorg/wikipedia/search/RecentSearchesFragment;->recentSearchesList:Landroid/widget/ListView;

    new-instance v0, Lorg/wikipedia/search/-$$Lambda$RecentSearchesFragment$YYoexsIzD_CPZqDHEgQVSgadzNg;

    invoke-direct {v0, p0}, Lorg/wikipedia/search/-$$Lambda$RecentSearchesFragment$YYoexsIzD_CPZqDHEgQVSgadzNg;-><init>(Lorg/wikipedia/search/RecentSearchesFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 92
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/16 v0, 0x65

    .line 93
    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 94
    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method onAddLangButtonClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 144
    iget-object v0, p0, Lorg/wikipedia/search/RecentSearchesFragment;->callback:Lorg/wikipedia/search/RecentSearchesFragment$Callback;

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0}, Lorg/wikipedia/search/RecentSearchesFragment$Callback;->onAddLanguageClicked()V

    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 106
    sget-object v2, Lorg/wikipedia/database/contract/SearchHistoryContract$Query;->URI:Landroid/net/Uri;

    .line 107
    sget-object v6, Lorg/wikipedia/database/contract/SearchHistoryContract$Query;->ORDER_MRU:Ljava/lang/String;

    .line 108
    new-instance p1, Landroidx/loader/content/CursorLoader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0062

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 57
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 59
    iget-object p2, p0, Lorg/wikipedia/search/RecentSearchesFragment;->deleteButton:Landroid/widget/ImageView;

    new-instance p3, Lorg/wikipedia/search/-$$Lambda$RecentSearchesFragment$saXIeG1MDBDszRL1GeMsoRX55Ek;

    invoke-direct {p3, p0}, Lorg/wikipedia/search/-$$Lambda$RecentSearchesFragment$saXIeG1MDBDszRL1GeMsoRX55Ek;-><init>(Lorg/wikipedia/search/RecentSearchesFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/view/View;

    .line 66
    iget-object p3, p0, Lorg/wikipedia/search/RecentSearchesFragment;->deleteButton:Landroid/widget/ImageView;

    aput-object p3, p2, v0

    invoke-static {p2}, Lorg/wikipedia/util/FeedbackUtil;->setButtonLongPressToast([Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 99
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    .line 100
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/search/RecentSearchesFragment;->adapter:Lorg/wikipedia/search/RecentSearchesFragment$RecentSearchesAdapter;

    invoke-virtual {p1, p2}, Landroidx/cursoradapter/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 117
    iget-object p1, p0, Lorg/wikipedia/search/RecentSearchesFragment;->recentSearchesList:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 118
    :goto_0
    iget-object v0, p0, Lorg/wikipedia/search/RecentSearchesFragment;->searchEmptyView:Landroid/view/View;

    const/4 v1, 0x4

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x4

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 119
    invoke-direct {p0, p1}, Lorg/wikipedia/search/RecentSearchesFragment;->updateSearchEmptyView(Z)V

    .line 120
    iget-object v0, p0, Lorg/wikipedia/search/RecentSearchesFragment;->recentSearches:Landroid/view/View;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p2, 0x4

    :goto_2
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/search/RecentSearchesFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 151
    iget-object p1, p0, Lorg/wikipedia/search/RecentSearchesFragment;->adapter:Lorg/wikipedia/search/RecentSearchesFragment$RecentSearchesAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/cursoradapter/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public setCallback(Lorg/wikipedia/search/RecentSearchesFragment$Callback;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lorg/wikipedia/search/RecentSearchesFragment;->callback:Lorg/wikipedia/search/RecentSearchesFragment$Callback;

    return-void
.end method

.method public show()V
    .locals 2

    .line 72
    iget-object v0, p0, Lorg/wikipedia/search/RecentSearchesFragment;->recentSearchesContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method updateList()V
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/wikipedia/search/RecentSearchesFragment;->adapter:Lorg/wikipedia/search/RecentSearchesFragment$RecentSearchesAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
