.class final Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$showDeletePageFromListsUndoSnackbar$1;
.super Ljava/lang/Object;
.source "ReadingListBehaviorsUtil.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->showDeletePageFromListsUndoSnackbar(Landroid/app/Activity;Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;

.field final synthetic $lists:Ljava/util/List;

.field final synthetic $page:Lorg/wikipedia/readinglist/database/ReadingListPage;


# direct methods
.method constructor <init>(Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$showDeletePageFromListsUndoSnackbar$1;->$lists:Ljava/util/List;

    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$showDeletePageFromListsUndoSnackbar$1;->$page:Lorg/wikipedia/readinglist/database/ReadingListPage;

    iput-object p3, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$showDeletePageFromListsUndoSnackbar$1;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 156
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$showDeletePageFromListsUndoSnackbar$1;->$lists:Ljava/util/List;

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$showDeletePageFromListsUndoSnackbar$1;->$page:Lorg/wikipedia/readinglist/database/ReadingListPage;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->addPageToLists(Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingListPage;Z)V

    .line 157
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$showDeletePageFromListsUndoSnackbar$1;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;

    invoke-interface {p1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;->onUndoDeleteClicked()V

    return-void
.end method
