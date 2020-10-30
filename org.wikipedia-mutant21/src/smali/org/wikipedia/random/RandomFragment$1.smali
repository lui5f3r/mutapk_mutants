.class Lorg/wikipedia/random/RandomFragment$1;
.super Ljava/lang/Object;
.source "RandomFragment.java"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/random/RandomFragment;->onSaveShareClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/random/RandomFragment;

.field final synthetic val$title:Lorg/wikipedia/page/PageTitle;


# direct methods
.method constructor <init>(Lorg/wikipedia/random/RandomFragment;Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lorg/wikipedia/random/RandomFragment$1;->this$0:Lorg/wikipedia/random/RandomFragment;

    iput-object p2, p0, Lorg/wikipedia/random/RandomFragment$1;->val$title:Lorg/wikipedia/page/PageTitle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddRequest(Z)V
    .locals 2

    .line 137
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment$1;->this$0:Lorg/wikipedia/random/RandomFragment;

    iget-object v1, p0, Lorg/wikipedia/random/RandomFragment$1;->val$title:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/random/RandomFragment;->onAddPageToList(Lorg/wikipedia/page/PageTitle;Z)V

    return-void
.end method

.method public onDeleted(Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 4

    .line 147
    iget-object p1, p0, Lorg/wikipedia/random/RandomFragment$1;->this$0:Lorg/wikipedia/random/RandomFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment$1;->this$0:Lorg/wikipedia/random/RandomFragment;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/wikipedia/random/RandomFragment$1;->val$title:Lorg/wikipedia/page/PageTitle;

    .line 148
    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f10032b

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {p1, v0}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 149
    iget-object p1, p0, Lorg/wikipedia/random/RandomFragment$1;->this$0:Lorg/wikipedia/random/RandomFragment;

    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment$1;->val$title:Lorg/wikipedia/page/PageTitle;

    invoke-static {p1, v0}, Lorg/wikipedia/random/RandomFragment;->access$100(Lorg/wikipedia/random/RandomFragment;Lorg/wikipedia/page/PageTitle;)V

    return-void
.end method

.method public onMoveRequest(Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 3

    .line 142
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment$1;->this$0:Lorg/wikipedia/random/RandomFragment;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId()J

    move-result-wide v1

    iget-object p1, p0, Lorg/wikipedia/random/RandomFragment$1;->val$title:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0, v1, v2, p1}, Lorg/wikipedia/random/RandomFragment;->onMovePageToList(JLorg/wikipedia/page/PageTitle;)V

    return-void
.end method

.method public onShare()V
    .locals 0

    return-void
.end method
