.class final Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1$1;
.super Ljava/lang/Object;
.source "ReadingListBehaviorsUtil.kt"

# interfaces
.implements Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;


# direct methods
.method constructor <init>(Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1$1;->this$0:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeleted(Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/readinglist/database/ReadingList;",
            ">;",
            "Lorg/wikipedia/readinglist/database/ReadingListPage;",
            ")V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "page"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1$1;->this$0:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;

    iget-object v2, v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->$activity:Landroid/app/Activity;

    iget-object v1, v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->$snackbarCallback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;

    invoke-static {v0, v2, p1, p2, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->access$showDeletePageFromListsUndoSnackbar(Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;Landroid/app/Activity;Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;)V

    .line 111
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1$1;->this$0:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;

    iget-object p1, p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deletePages$1;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    invoke-interface {p1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;->onCompleted()V

    return-void
.end method
