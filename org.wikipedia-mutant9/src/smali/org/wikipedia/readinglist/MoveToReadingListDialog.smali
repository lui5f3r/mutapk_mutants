.class public Lorg/wikipedia/readinglist/MoveToReadingListDialog;
.super Lorg/wikipedia/readinglist/AddToReadingListDialog;
.source "MoveToReadingListDialog.java"


# static fields
.field private static final SOURCE_READING_LIST_ID:Ljava/lang/String; = "sourceReadingListId"


# instance fields
.field private sourceReadingList:Lorg/wikipedia/readinglist/database/ReadingList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/wikipedia/readinglist/AddToReadingListDialog;-><init>()V

    return-void
.end method

.method public static newInstance(JLjava/util/List;Lorg/wikipedia/Constants$InvokeSource;)Lorg/wikipedia/readinglist/MoveToReadingListDialog;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/PageTitle;",
            ">;",
            "Lorg/wikipedia/Constants$InvokeSource;",
            ")",
            "Lorg/wikipedia/readinglist/MoveToReadingListDialog;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-wide v0, p0

    move-object v2, p2

    move-object v3, p3

    .line 45
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/readinglist/MoveToReadingListDialog;->newInstance(JLjava/util/List;Lorg/wikipedia/Constants$InvokeSource;ZLandroid/content/DialogInterface$OnDismissListener;)Lorg/wikipedia/readinglist/MoveToReadingListDialog;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(JLjava/util/List;Lorg/wikipedia/Constants$InvokeSource;ZLandroid/content/DialogInterface$OnDismissListener;)Lorg/wikipedia/readinglist/MoveToReadingListDialog;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/PageTitle;",
            ">;",
            "Lorg/wikipedia/Constants$InvokeSource;",
            "Z",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ")",
            "Lorg/wikipedia/readinglist/MoveToReadingListDialog;"
        }
    .end annotation

    .line 53
    new-instance v0, Lorg/wikipedia/readinglist/MoveToReadingListDialog;

    invoke-direct {v0}, Lorg/wikipedia/readinglist/MoveToReadingListDialog;-><init>()V

    .line 54
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "pageTitleList"

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p2, "invokeSource"

    .line 56
    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p2, "sourceReadingListId"

    .line 57
    invoke-virtual {v1, p2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "showDefaultList"

    .line 58
    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {v0, p5}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v0
.end method

.method public static newInstance(JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)Lorg/wikipedia/readinglist/MoveToReadingListDialog;
    .locals 6

    .line 39
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-wide v0, p0

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lorg/wikipedia/readinglist/MoveToReadingListDialog;->newInstance(JLjava/util/List;Lorg/wikipedia/Constants$InvokeSource;ZLandroid/content/DialogInterface$OnDismissListener;)Lorg/wikipedia/readinglist/MoveToReadingListDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method commitChanges(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;)V
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

    .line 89
    iget-object v0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v1, Lorg/wikipedia/readinglist/-$$Lambda$MoveToReadingListDialog$Py5upRs4xDLMuwrgX_HaLc6ivIs;

    invoke-direct {v1, p0, p1, p2}, Lorg/wikipedia/readinglist/-$$Lambda$MoveToReadingListDialog$Py5upRs4xDLMuwrgX_HaLc6ivIs;-><init>(Lorg/wikipedia/readinglist/MoveToReadingListDialog;Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;)V

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 90
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 91
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v1, Lorg/wikipedia/readinglist/-$$Lambda$MoveToReadingListDialog$kfqSNXqtWOgOjSS_srB4bBrjFvQ;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/readinglist/-$$Lambda$MoveToReadingListDialog$kfqSNXqtWOgOjSS_srB4bBrjFvQ;-><init>(Lorg/wikipedia/readinglist/MoveToReadingListDialog;Lorg/wikipedia/readinglist/database/ReadingList;)V

    sget-object p1, Lorg/wikipedia/readinglist/-$$Lambda$O4DkAcgiJ8LtE6m3iiV52pd94rg;->INSTANCE:Lorg/wikipedia/readinglist/-$$Lambda$O4DkAcgiJ8LtE6m3iiV52pd94rg;

    .line 92
    invoke-virtual {p2, v1, p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 89
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public synthetic lambda$commitChanges$0$MoveToReadingListDialog(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/readinglist/MoveToReadingListDialog;->sourceReadingList:Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v0, v1, p1, p2}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->movePagesToListAndDeleteSourcePages(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$commitChanges$1$MoveToReadingListDialog(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 93
    new-instance v0, Lorg/wikipedia/analytics/ReadingListsFunnel;

    invoke-direct {v0}, Lorg/wikipedia/analytics/ReadingListsFunnel;-><init>()V

    iget-object v1, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->readingLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    invoke-virtual {v0, p1, v1, v2}, Lorg/wikipedia/analytics/ReadingListsFunnel;->logMoveToList(Lorg/wikipedia/readinglist/database/ReadingList;ILorg/wikipedia/Constants$InvokeSource;)V

    .line 94
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const v0, 0x7f100317

    new-array v1, v1, [Ljava/lang/Object;

    .line 95
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->title()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const v0, 0x7f10031e

    new-array v1, v1, [Ljava/lang/Object;

    .line 96
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->title()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 94
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->showViewListSnackBar(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->dismiss()V

    return-void
.end method

.method logClick(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    .line 83
    new-instance p1, Lorg/wikipedia/analytics/ReadingListsFunnel;

    invoke-direct {p1}, Lorg/wikipedia/analytics/ReadingListsFunnel;-><init>()V

    iget-object v0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    invoke-virtual {p1, v0}, Lorg/wikipedia/analytics/ReadingListsFunnel;->logMoveClick(Lorg/wikipedia/Constants$InvokeSource;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 67
    invoke-super {p0, p1, p2, p3}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090105

    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f100333

    .line 69
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "sourceReadingListId"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    .line 72
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->getListById(JZ)Lorg/wikipedia/readinglist/database/ReadingList;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/readinglist/MoveToReadingListDialog;->sourceReadingList:Lorg/wikipedia/readinglist/database/ReadingList;

    if-nez p2, :cond_0

    .line 74
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->dismiss()V

    :cond_0
    return-object p1
.end method
