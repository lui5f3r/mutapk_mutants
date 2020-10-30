.class Lorg/wikipedia/page/PageFragment$1$1;
.super Ljava/lang/Object;
.source "PageFragment.java"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/page/PageFragment$1;->onAddToReadingListTabSelected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/wikipedia/page/PageFragment$1;


# direct methods
.method constructor <init>(Lorg/wikipedia/page/PageFragment$1;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/wikipedia/page/PageFragment$1$1;->this$1:Lorg/wikipedia/page/PageFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddRequest(Z)V
    .locals 2

    .line 209
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment$1$1;->this$1:Lorg/wikipedia/page/PageFragment$1;

    iget-object p1, p1, Lorg/wikipedia/page/PageFragment$1;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->BOOKMARK_BUTTON:Lorg/wikipedia/Constants$InvokeSource;

    invoke-virtual {p1, v0, v1}, Lorg/wikipedia/page/PageFragment;->addToReadingList(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)V

    return-void
.end method

.method public onDeleted(Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 1

    .line 219
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment$1$1;->this$1:Lorg/wikipedia/page/PageFragment$1;

    iget-object p1, p1, Lorg/wikipedia/page/PageFragment$1;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 220
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment$1$1;->this$1:Lorg/wikipedia/page/PageFragment$1;

    iget-object p1, p1, Lorg/wikipedia/page/PageFragment$1;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$1$1;->this$1:Lorg/wikipedia/page/PageFragment$1;

    iget-object v0, v0, Lorg/wikipedia/page/PageFragment$1;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/wikipedia/page/PageFragment$Callback;->onPageRemoveFromReadingLists(Lorg/wikipedia/page/PageTitle;)V

    :cond_0
    return-void
.end method

.method public onMoveRequest(Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 7

    .line 214
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$1$1;->this$1:Lorg/wikipedia/page/PageFragment$1;

    iget-object v1, v0, Lorg/wikipedia/page/PageFragment$1;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId()J

    move-result-wide v2

    iget-object p1, p0, Lorg/wikipedia/page/PageFragment$1$1;->this$1:Lorg/wikipedia/page/PageFragment$1;

    iget-object p1, p1, Lorg/wikipedia/page/PageFragment$1;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v4

    sget-object v5, Lorg/wikipedia/Constants$InvokeSource;->BOOKMARK_BUTTON:Lorg/wikipedia/Constants$InvokeSource;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lorg/wikipedia/page/PageFragment;->moveToReadingList(JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Z)V

    return-void
.end method

.method public onShare()V
    .locals 0

    return-void
.end method
