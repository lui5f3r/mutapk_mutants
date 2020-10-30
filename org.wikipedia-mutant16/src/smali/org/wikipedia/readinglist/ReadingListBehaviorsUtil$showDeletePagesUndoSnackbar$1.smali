.class final Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$showDeletePagesUndoSnackbar$1;
.super Ljava/lang/Object;
.source "ReadingListBehaviorsUtil.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->showDeletePagesUndoSnackbar(Landroid/app/Activity;Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;

.field final synthetic $pages:Ljava/util/List;

.field final synthetic $readingList:Lorg/wikipedia/readinglist/database/ReadingList;


# direct methods
.method constructor <init>(Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$showDeletePagesUndoSnackbar$1;->$pages:Ljava/util/List;

    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$showDeletePagesUndoSnackbar$1;->$readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    iput-object p3, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$showDeletePagesUndoSnackbar$1;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 170
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 171
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$showDeletePagesUndoSnackbar$1;->$pages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 172
    new-instance v2, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-static {v1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->toPageTitle(Lorg/wikipedia/readinglist/database/ReadingListPage;)Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/page/PageTitle;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_0
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$showDeletePagesUndoSnackbar$1;->$readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->addPagesToList(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;Z)V

    .line 175
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$showDeletePagesUndoSnackbar$1;->$readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 176
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$showDeletePagesUndoSnackbar$1;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;

    invoke-interface {p1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;->onUndoDeleteClicked()V

    return-void
.end method
