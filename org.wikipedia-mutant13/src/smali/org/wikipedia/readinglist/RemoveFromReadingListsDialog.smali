.class public Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog;
.super Ljava/lang/Object;
.source "RemoveFromReadingListsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;
    }
.end annotation


# instance fields
.field private listsContainingPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/readinglist/database/ReadingList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/readinglist/database/ReadingList;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog;->listsContainingPage:Ljava/util/List;

    const/4 v0, 0x0

    .line 27
    invoke-static {p1, v0}, Lorg/wikipedia/readinglist/database/ReadingList;->sort(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic lambda$showDialog$1([ZLandroid/content/DialogInterface;IZ)V
    .locals 0

    .line 71
    aput-boolean p3, p0, p2

    return-void
.end method

.method private showDialog(Landroid/content/Context;Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;)V
    .locals 4

    .line 46
    iget-object v0, p0, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog;->listsContainingPage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 47
    new-array v0, v0, [Z

    const/4 v2, 0x0

    .line 49
    :goto_0
    iget-object v3, p0, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog;->listsContainingPage:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 50
    iget-object v3, p0, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog;->listsContainingPage:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v3}, Lorg/wikipedia/readinglist/database/ReadingList;->title()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_0
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f100344

    .line 54
    invoke-virtual {v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f100346

    new-instance v3, Lorg/wikipedia/readinglist/-$$Lambda$RemoveFromReadingListsDialog$p7r40ZzXrfPP08JIsQMT6lTmCyo;

    invoke-direct {v3, p0, v1, v0, p2}, Lorg/wikipedia/readinglist/-$$Lambda$RemoveFromReadingListsDialog$p7r40ZzXrfPP08JIsQMT6lTmCyo;-><init>(Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog;[Ljava/lang/String;[ZLorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;)V

    .line 55
    invoke-virtual {v2, p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f100343

    const/4 p2, 0x0

    .line 70
    invoke-virtual {v2, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p1, Lorg/wikipedia/readinglist/-$$Lambda$RemoveFromReadingListsDialog$igndMKG17nCCcXGucBqJqiVxz0I;

    invoke-direct {p1, v0}, Lorg/wikipedia/readinglist/-$$Lambda$RemoveFromReadingListsDialog$igndMKG17nCCcXGucBqJqiVxz0I;-><init>([Z)V

    .line 71
    invoke-virtual {v2, v1, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 72
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public deleteOrShowDialog(Landroid/content/Context;Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;)V
    .locals 3

    .line 31
    iget-object v0, p0, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog;->listsContainingPage:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog;->listsContainingPage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog;->listsContainingPage:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 35
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog;->listsContainingPage:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    iget-object v2, p0, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog;->listsContainingPage:Ljava/util/List;

    .line 36
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v2}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 35
    invoke-virtual {p1, v0, v2}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->markPagesForDeletion(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;)V

    if-eqz p2, :cond_1

    .line 38
    iget-object p1, p0, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog;->listsContainingPage:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-interface {p2, p1, v0}, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;->onDeleted(Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    :cond_1
    return-void

    .line 42
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog;->showDialog(Landroid/content/Context;Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic lambda$showDialog$0$RemoveFromReadingListsDialog([Ljava/lang/String;[ZLorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;Landroid/content/DialogInterface;I)V
    .locals 4

    .line 57
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    const/4 p5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 59
    aget-boolean v2, p2, v0

    if-eqz v2, :cond_0

    .line 61
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog;->listsContainingPage:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;

    iget-object v3, p0, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog;->listsContainingPage:Ljava/util/List;

    .line 62
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v3}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 61
    invoke-virtual {v1, v2, v3}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->markPagesForDeletion(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;)V

    .line 63
    iget-object v1, p0, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog;->listsContainingPage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    if-eqz v1, :cond_2

    .line 67
    iget-object p1, p0, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog;->listsContainingPage:Ljava/util/List;

    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-interface {p3, p4, p1}, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;->onDeleted(Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    :cond_2
    return-void
.end method
