.class public Lorg/wikipedia/readinglist/AddToReadingListDialog;
.super Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;
.source "AddToReadingListDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListAdapter;,
        Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemHolder;,
        Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemCallback;,
        Lorg/wikipedia/readinglist/AddToReadingListDialog$CreateButtonClickListener;
    }
.end annotation


# static fields
.field static final PAGE_TITLE_LIST:Ljava/lang/String; = "pageTitleList"

.field static final SHOW_DEFAULT_LIST:Ljava/lang/String; = "showDefaultList"


# instance fields
.field private adapter:Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListAdapter;

.field private createClickListener:Lorg/wikipedia/readinglist/AddToReadingListDialog$CreateButtonClickListener;

.field private dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field invokeSource:Lorg/wikipedia/Constants$InvokeSource;

.field private listItemCallback:Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemCallback;

.field private listsContainer:Landroid/view/View;

.field private onboardingButton:Landroid/view/View;

.field private onboardingContainer:Landroid/view/View;

.field readingLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/readinglist/database/ReadingList;",
            ">;"
        }
    .end annotation
.end field

.field private showDefaultList:Z

.field private titles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/page/PageTitle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;-><init>()V

    .line 48
    new-instance v0, Lorg/wikipedia/readinglist/AddToReadingListDialog$CreateButtonClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/readinglist/AddToReadingListDialog$CreateButtonClickListener;-><init>(Lorg/wikipedia/readinglist/AddToReadingListDialog;Lorg/wikipedia/readinglist/AddToReadingListDialog$1;)V

    iput-object v0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->createClickListener:Lorg/wikipedia/readinglist/AddToReadingListDialog$CreateButtonClickListener;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->readingLists:Ljava/util/List;

    .line 52
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 58
    new-instance v0, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemCallback;

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemCallback;-><init>(Lorg/wikipedia/readinglist/AddToReadingListDialog;Lorg/wikipedia/readinglist/AddToReadingListDialog$1;)V

    iput-object v0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->listItemCallback:Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemCallback;

    return-void
.end method

.method static synthetic access$300(Lorg/wikipedia/readinglist/AddToReadingListDialog;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->showCreateListDialog()V

    return-void
.end method

.method static synthetic access$400(Lorg/wikipedia/readinglist/AddToReadingListDialog;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->titles:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lorg/wikipedia/readinglist/AddToReadingListDialog;Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->addAndDismiss(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lorg/wikipedia/readinglist/AddToReadingListDialog;)Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemCallback;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->listItemCallback:Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemCallback;

    return-object p0
.end method

.method private addAndDismiss(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/readinglist/database/ReadingList;",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/PageTitle;",
            ">;)V"
        }
    .end annotation

    .line 213
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {}, Lorg/wikipedia/settings/SiteInfoClient;->getMaxPagesPerReadingList()I

    move-result v1

    if-le v0, v1, :cond_0

    const p2, 0x7f100315

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 214
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->title()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {}, Lorg/wikipedia/settings/SiteInfoClient;->getMaxPagesPerReadingList()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 215
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget v0, Lorg/wikipedia/util/FeedbackUtil;->LENGTH_DEFAULT:I

    invoke-static {p2, p1, v0}, Lorg/wikipedia/util/FeedbackUtil;->makeSnackbar(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 216
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->dismiss()V

    return-void

    .line 219
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->commitChanges(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;)V

    return-void
.end method

.method private checkAndShowOnboarding()V
    .locals 5

    .line 149
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isReadingListTutorialEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 152
    iget-object v2, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->readingLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 153
    invoke-virtual {v3}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 155
    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->setReadingListTutorialEnabled(Z)V

    const/4 v0, 0x0

    .line 160
    :cond_1
    iget-object v2, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->onboardingButton:Landroid/view/View;

    new-instance v3, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$AlHwPmsf6ZQYqH86Qcz7tLmxSfg;

    invoke-direct {v3, p0}, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$AlHwPmsf6ZQYqH86Qcz7tLmxSfg;-><init>(Lorg/wikipedia/readinglist/AddToReadingListDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v2, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->listsContainer:Landroid/view/View;

    const/16 v3, 0x8

    if-eqz v0, :cond_2

    const/16 v4, 0x8

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v2, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->onboardingContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$commitChanges$4(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 229
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->addPagesToListIfNotExist(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$showViewListSnackBar$6(Lorg/wikipedia/readinglist/database/ReadingList;Landroid/view/View;)V
    .locals 1

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/wikipedia/readinglist/ReadingListActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/readinglist/database/ReadingList;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$updateLists$1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->getAllLists()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/util/List;Lorg/wikipedia/Constants$InvokeSource;)Lorg/wikipedia/readinglist/AddToReadingListDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/PageTitle;",
            ">;",
            "Lorg/wikipedia/Constants$InvokeSource;",
            ")",
            "Lorg/wikipedia/readinglist/AddToReadingListDialog;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 73
    invoke-static {p0, p1, v0}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->newInstance(Ljava/util/List;Lorg/wikipedia/Constants$InvokeSource;Landroid/content/DialogInterface$OnDismissListener;)Lorg/wikipedia/readinglist/AddToReadingListDialog;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/util/List;Lorg/wikipedia/Constants$InvokeSource;Landroid/content/DialogInterface$OnDismissListener;)Lorg/wikipedia/readinglist/AddToReadingListDialog;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/PageTitle;",
            ">;",
            "Lorg/wikipedia/Constants$InvokeSource;",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ")",
            "Lorg/wikipedia/readinglist/AddToReadingListDialog;"
        }
    .end annotation

    .line 79
    new-instance v0, Lorg/wikipedia/readinglist/AddToReadingListDialog;

    invoke-direct {v0}, Lorg/wikipedia/readinglist/AddToReadingListDialog;-><init>()V

    .line 80
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p0, "pageTitleList"

    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p0, "invokeSource"

    .line 82
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "showDefaultList"

    const/4 p1, 0x1

    .line 83
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {v0, p2}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v0
.end method

.method public static newInstance(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)Lorg/wikipedia/readinglist/AddToReadingListDialog;
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-static {p0, p1, v0}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->newInstance(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Landroid/content/DialogInterface$OnDismissListener;)Lorg/wikipedia/readinglist/AddToReadingListDialog;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Landroid/content/DialogInterface$OnDismissListener;)Lorg/wikipedia/readinglist/AddToReadingListDialog;
    .locals 0

    .line 68
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->newInstance(Ljava/util/List;Lorg/wikipedia/Constants$InvokeSource;Landroid/content/DialogInterface$OnDismissListener;)Lorg/wikipedia/readinglist/AddToReadingListDialog;

    move-result-object p0

    return-object p0
.end method

.method private showCreateListDialog()V
    .locals 4

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    iget-object v1, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->readingLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 203
    invoke-virtual {v2}, Lorg/wikipedia/readinglist/database/ReadingList;->title()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$pdIhyQmA0EP9r6peLTb5opoqyQI;

    invoke-direct {v2, p0}, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$pdIhyQmA0EP9r6peLTb5opoqyQI;-><init>(Lorg/wikipedia/readinglist/AddToReadingListDialog;)V

    const-string v3, ""

    invoke-static {v1, v3, v3, v0, v2}, Lorg/wikipedia/readinglist/ReadingListTitleDialog;->readingListTitleDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListTitleDialog$Callback;)Lorg/wikipedia/views/TextInputDialog;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateLists()V
    .locals 4

    .line 173
    iget-object v0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    sget-object v1, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$WNOqC2oYHbSaxvJiyyYpldcat48;->INSTANCE:Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$WNOqC2oYHbSaxvJiyyYpldcat48;

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 174
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 175
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$_S7Jel2CPVM7LlY4mUSI_zbtJbs;

    invoke-direct {v2, p0}, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$_S7Jel2CPVM7LlY4mUSI_zbtJbs;-><init>(Lorg/wikipedia/readinglist/AddToReadingListDialog;)V

    sget-object v3, Lorg/wikipedia/readinglist/-$$Lambda$O4DkAcgiJ8LtE6m3iiV52pd94rg;->INSTANCE:Lorg/wikipedia/readinglist/-$$Lambda$O4DkAcgiJ8LtE6m3iiV52pd94rg;

    .line 176
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 173
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method commitChanges(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/readinglist/database/ReadingList;",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/PageTitle;",
            ">;)V"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v1, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$XGZGsbp8rsB_9EW84SJviVaXXG4;

    invoke-direct {v1, p1, p2}, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$XGZGsbp8rsB_9EW84SJviVaXXG4;-><init>(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;)V

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 230
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 231
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$8tC0WUULmArmA847lvIReCjGx10;

    invoke-direct {v2, p0, p2, p1}, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$8tC0WUULmArmA847lvIReCjGx10;-><init>(Lorg/wikipedia/readinglist/AddToReadingListDialog;Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingList;)V

    sget-object p1, Lorg/wikipedia/readinglist/-$$Lambda$O4DkAcgiJ8LtE6m3iiV52pd94rg;->INSTANCE:Lorg/wikipedia/readinglist/-$$Lambda$O4DkAcgiJ8LtE6m3iiV52pd94rg;

    .line 232
    invoke-virtual {v1, v2, p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 229
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 138
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 139
    iget-object v0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 140
    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$checkAndShowOnboarding$0$AddToReadingListDialog(Landroid/view/View;)V
    .locals 1

    .line 161
    iget-object p1, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->onboardingContainer:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object p1, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->listsContainer:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 163
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setReadingListTutorialEnabled(Z)V

    .line 164
    iget-object p1, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->readingLists:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 165
    invoke-direct {p0}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->showCreateListDialog()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$commitChanges$5$AddToReadingListDialog(Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 234
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 235
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ne p3, v3, :cond_0

    const p3, 0x7f100314

    new-array v0, v1, [Ljava/lang/Object;

    .line 236
    invoke-virtual {p2}, Lorg/wikipedia/readinglist/database/ReadingList;->title()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/page/PageTitle;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {p0, p3, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    const p1, 0x7f10031d

    new-array p3, v3, [Ljava/lang/Object;

    .line 237
    invoke-virtual {p2}, Lorg/wikipedia/readinglist/database/ReadingList;->title()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    invoke-virtual {p0, p1, p3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 239
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_2

    const p1, 0x7f100313

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    aput-object p3, v0, v2

    invoke-virtual {p2}, Lorg/wikipedia/readinglist/database/ReadingList;->title()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v3

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const p1, 0x7f10031c

    new-array v0, v1, [Ljava/lang/Object;

    .line 240
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v2

    invoke-virtual {p2}, Lorg/wikipedia/readinglist/database/ReadingList;->title()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v3

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 241
    :goto_0
    new-instance p3, Lorg/wikipedia/analytics/ReadingListsFunnel;

    invoke-direct {p3}, Lorg/wikipedia/analytics/ReadingListsFunnel;-><init>()V

    iget-object v0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->readingLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    invoke-virtual {p3, p2, v0, v1}, Lorg/wikipedia/analytics/ReadingListsFunnel;->logAddToList(Lorg/wikipedia/readinglist/database/ReadingList;ILorg/wikipedia/Constants$InvokeSource;)V

    .line 243
    :goto_1
    invoke-virtual {p0, p2, p1}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->showViewListSnackBar(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showCreateListDialog$3$AddToReadingListDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 207
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->createList(Ljava/lang/String;Ljava/lang/String;)Lorg/wikipedia/readinglist/database/ReadingList;

    move-result-object p1

    .line 208
    iget-object p2, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->titles:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->addAndDismiss(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$updateLists$2$AddToReadingListDialog(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 177
    iput-object p1, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->readingLists:Ljava/util/List;

    .line 178
    iget-boolean v0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->showDefaultList:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 179
    iget-object p1, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->readingLists:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 181
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->readingLists:Ljava/util/List;

    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->getReadingListSortMode(I)I

    move-result v0

    invoke-static {p1, v0}, Lorg/wikipedia/readinglist/database/ReadingList;->sort(Ljava/util/List;I)V

    .line 182
    iget-object p1, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->adapter:Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 183
    invoke-direct {p0}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->checkAndShowOnboarding()V

    return-void
.end method

.method logClick(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    .line 224
    new-instance p1, Lorg/wikipedia/analytics/ReadingListsFunnel;

    invoke-direct {p1}, Lorg/wikipedia/analytics/ReadingListsFunnel;-><init>()V

    iget-object v0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    invoke-virtual {p1, v0}, Lorg/wikipedia/analytics/ReadingListsFunnel;->logAddClick(Lorg/wikipedia/Constants$InvokeSource;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "pageTitleList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->titles:Ljava/util/List;

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "invokeSource"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/Constants$InvokeSource;

    iput-object p1, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "showDefaultList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->showDefaultList:Z

    .line 95
    new-instance p1, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListAdapter;-><init>(Lorg/wikipedia/readinglist/AddToReadingListDialog;Lorg/wikipedia/readinglist/AddToReadingListDialog$1;)V

    iput-object p1, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->adapter:Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListAdapter;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0040

    .line 101
    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090209

    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->listsContainer:Landroid/view/View;

    const p2, 0x7f0902b9

    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->onboardingContainer:Landroid/view/View;

    const p2, 0x7f0902b8

    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->onboardingButton:Landroid/view/View;

    const p2, 0x7f090206

    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 108
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 109
    iget-object v0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->adapter:Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListAdapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p2, 0x7f0900e3

    .line 111
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 112
    iget-object v0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->createClickListener:Lorg/wikipedia/readinglist/AddToReadingListDialog$CreateButtonClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {p0, p3}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->logClick(Landroid/os/Bundle;)V

    .line 117
    iget-object p2, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->onboardingContainer:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object p2, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->listsContainer:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 119
    invoke-direct {p0}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->updateLists()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 133
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 125
    invoke-super {p0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;->onStart()V

    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const v1, 0x7f07018d

    .line 127
    invoke-static {v1}, Lorg/wikipedia/util/DimenUtil;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v1

    .line 126
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method showViewListSnackBar(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/lang/String;)V
    .locals 2

    .line 249
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lorg/wikipedia/util/FeedbackUtil;->LENGTH_DEFAULT:I

    invoke-static {v0, p2, v1}, Lorg/wikipedia/util/FeedbackUtil;->makeSnackbar(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p2

    new-instance v0, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$I9Aw7skMZf1aOtaNcHQtlsXsey0;

    invoke-direct {v0, p1}, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$I9Aw7skMZf1aOtaNcHQtlsXsey0;-><init>(Lorg/wikipedia/readinglist/database/ReadingList;)V

    const p1, 0x7f100311

    .line 250
    invoke-virtual {p2, p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p2}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method
