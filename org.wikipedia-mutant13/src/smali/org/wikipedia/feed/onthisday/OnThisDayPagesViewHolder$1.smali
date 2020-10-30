.class Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder$1;
.super Ljava/lang/Object;
.source "OnThisDayPagesViewHolder.java"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->showOverflowMenu(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

.field final synthetic val$entry:Lorg/wikipedia/history/HistoryEntry;


# direct methods
.method constructor <init>(Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;Lorg/wikipedia/history/HistoryEntry;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder$1;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    iput-object p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder$1;->val$entry:Lorg/wikipedia/history/HistoryEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAddRequest$0$OnThisDayPagesViewHolder$1(Lorg/wikipedia/history/HistoryEntry;J)V
    .locals 3

    .line 101
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder$1;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    invoke-static {v0}, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->access$200(Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;)Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder$1;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    invoke-static {v1}, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->access$100(Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;)Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 102
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->NEWS_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    invoke-static {p2, p3, p1, v2}, Lorg/wikipedia/readinglist/MoveToReadingListDialog;->newInstance(JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)Lorg/wikipedia/readinglist/MoveToReadingListDialog;

    move-result-object p1

    .line 101
    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method public onAddRequest(Z)V
    .locals 5

    if-eqz p1, :cond_0

    .line 99
    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder$1;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    invoke-static {v0}, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->access$000(Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder$1;->val$entry:Lorg/wikipedia/history/HistoryEntry;

    invoke-virtual {v1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->NEWS_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    iget-object v3, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder$1;->val$entry:Lorg/wikipedia/history/HistoryEntry;

    new-instance v4, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayPagesViewHolder$1$Wn7TlnLdO-YE9PZSH_75C6xFLsY;

    invoke-direct {v4, p0, v3}, Lorg/wikipedia/feed/onthisday/-$$Lambda$OnThisDayPagesViewHolder$1$Wn7TlnLdO-YE9PZSH_75C6xFLsY;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder$1;Lorg/wikipedia/history/HistoryEntry;)V

    invoke-virtual {p1, v0, v1, v2, v4}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->addToDefaultList(Landroid/app/Activity;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$AddToDefaultListCallback;)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder$1;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    invoke-static {p1}, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->access$200(Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;)Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder$1;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    invoke-static {v0}, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->access$100(Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;)Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder$1;->val$entry:Lorg/wikipedia/history/HistoryEntry;

    .line 105
    invoke-virtual {v1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->NEWS_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    invoke-static {v1, v2}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->newInstance(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)Lorg/wikipedia/readinglist/AddToReadingListDialog;

    move-result-object v1

    .line 104
    invoke-virtual {p1, v0, v1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    :goto_0
    return-void
.end method

.method public onDeleted(Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 4

    .line 117
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder$1;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    invoke-static {p1}, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->access$000(Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder$1;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    .line 118
    invoke-static {v0}, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->access$000(Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder$1;->val$entry:Lorg/wikipedia/history/HistoryEntry;

    invoke-virtual {v2}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f10032b

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {p1, v0}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onMoveRequest(Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 5

    .line 111
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder$1;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    invoke-static {v0}, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->access$200(Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;)Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder$1;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    invoke-static {v1}, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->access$100(Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;)Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 112
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId()J

    move-result-wide v2

    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder$1;->val$entry:Lorg/wikipedia/history/HistoryEntry;

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    sget-object v4, Lorg/wikipedia/Constants$InvokeSource;->NEWS_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    invoke-static {v2, v3, p1, v4}, Lorg/wikipedia/readinglist/MoveToReadingListDialog;->newInstance(JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)Lorg/wikipedia/readinglist/MoveToReadingListDialog;

    move-result-object p1

    .line 111
    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method public onShare()V
    .locals 2

    .line 123
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder$1;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    invoke-static {v0}, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->access$000(Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder$1;->val$entry:Lorg/wikipedia/history/HistoryEntry;

    invoke-virtual {v1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wikipedia/util/ShareUtil;->shareText(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)V

    return-void
.end method
