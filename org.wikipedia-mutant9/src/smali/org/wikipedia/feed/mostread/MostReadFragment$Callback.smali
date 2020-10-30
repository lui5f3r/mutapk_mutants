.class Lorg/wikipedia/feed/mostread/MostReadFragment$Callback;
.super Ljava/lang/Object;
.source "MostReadFragment.java"

# interfaces
.implements Lorg/wikipedia/feed/view/ListCardItemView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/mostread/MostReadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/mostread/MostReadFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/feed/mostread/MostReadFragment;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lorg/wikipedia/feed/mostread/MostReadFragment$Callback;->this$0:Lorg/wikipedia/feed/mostread/MostReadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/feed/mostread/MostReadFragment;Lorg/wikipedia/feed/mostread/MostReadFragment$1;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/mostread/MostReadFragment$Callback;-><init>(Lorg/wikipedia/feed/mostread/MostReadFragment;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAddPageToList$0$MostReadFragment$Callback(Lorg/wikipedia/history/HistoryEntry;J)V
    .locals 0

    .line 125
    invoke-virtual {p0, p2, p3, p1}, Lorg/wikipedia/feed/mostread/MostReadFragment$Callback;->onMovePageToList(JLorg/wikipedia/history/HistoryEntry;)V

    return-void
.end method

.method public onAddPageToList(Lorg/wikipedia/history/HistoryEntry;Z)V
    .locals 4

    if-eqz p2, :cond_0

    .line 124
    sget-object p2, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    iget-object v0, p0, Lorg/wikipedia/feed/mostread/MostReadFragment$Callback;->this$0:Lorg/wikipedia/feed/mostread/MostReadFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->MOST_READ_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    new-instance v3, Lorg/wikipedia/feed/mostread/-$$Lambda$MostReadFragment$Callback$WvHRVJnFov3uQS_6ugkH34aiwZQ;

    invoke-direct {v3, p0, p1}, Lorg/wikipedia/feed/mostread/-$$Lambda$MostReadFragment$Callback$WvHRVJnFov3uQS_6ugkH34aiwZQ;-><init>(Lorg/wikipedia/feed/mostread/MostReadFragment$Callback;Lorg/wikipedia/history/HistoryEntry;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->addToDefaultList(Landroid/app/Activity;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$AddToDefaultListCallback;)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object p2, p0, Lorg/wikipedia/feed/mostread/MostReadFragment$Callback;->this$0:Lorg/wikipedia/feed/mostread/MostReadFragment;

    invoke-static {p2}, Lorg/wikipedia/feed/mostread/MostReadFragment;->access$100(Lorg/wikipedia/feed/mostread/MostReadFragment;)Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    move-result-object p2

    iget-object v0, p0, Lorg/wikipedia/feed/mostread/MostReadFragment$Callback;->this$0:Lorg/wikipedia/feed/mostread/MostReadFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 128
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->MOST_READ_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    invoke-static {p1, v1}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->newInstance(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)Lorg/wikipedia/readinglist/AddToReadingListDialog;

    move-result-object p1

    .line 127
    invoke-virtual {p2, v0, p1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    :goto_0
    return-void
.end method

.method public onMovePageToList(JLorg/wikipedia/history/HistoryEntry;)V
    .locals 3

    .line 134
    iget-object v0, p0, Lorg/wikipedia/feed/mostread/MostReadFragment$Callback;->this$0:Lorg/wikipedia/feed/mostread/MostReadFragment;

    invoke-static {v0}, Lorg/wikipedia/feed/mostread/MostReadFragment;->access$100(Lorg/wikipedia/feed/mostread/MostReadFragment;)Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/feed/mostread/MostReadFragment$Callback;->this$0:Lorg/wikipedia/feed/mostread/MostReadFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 135
    invoke-virtual {p3}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p3

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->MOST_READ_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    invoke-static {p1, p2, p3, v2}, Lorg/wikipedia/readinglist/MoveToReadingListDialog;->newInstance(JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)Lorg/wikipedia/readinglist/MoveToReadingListDialog;

    move-result-object p1

    .line 134
    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method public onRemovePageFromList(Lorg/wikipedia/history/HistoryEntry;)V
    .locals 4

    .line 140
    iget-object v0, p0, Lorg/wikipedia/feed/mostread/MostReadFragment$Callback;->this$0:Lorg/wikipedia/feed/mostread/MostReadFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/feed/mostread/MostReadFragment$Callback;->this$0:Lorg/wikipedia/feed/mostread/MostReadFragment;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 141
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const p1, 0x7f10032b

    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-static {v0, p1}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSelectPage(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V
    .locals 2

    .line 118
    iget-object p1, p0, Lorg/wikipedia/feed/mostread/MostReadFragment$Callback;->this$0:Lorg/wikipedia/feed/mostread/MostReadFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lorg/wikipedia/page/PageActivity;->newIntentForCurrentTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onSharePage(Lorg/wikipedia/history/HistoryEntry;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/wikipedia/feed/mostread/MostReadFragment$Callback;->this$0:Lorg/wikipedia/feed/mostread/MostReadFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/wikipedia/util/ShareUtil;->shareText(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)V

    return-void
.end method
