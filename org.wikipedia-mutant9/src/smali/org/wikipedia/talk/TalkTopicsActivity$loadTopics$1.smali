.class final Lorg/wikipedia/talk/TalkTopicsActivity$loadTopics$1;
.super Ljava/lang/Object;
.source "TalkTopicsActivity.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/talk/TalkTopicsActivity;->loadTopics()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/talk/TalkTopicsActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/talk/TalkTopicsActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$loadTopics$1;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 122
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$loadTopics$1;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    sget v1, Lorg/wikipedia/R$id;->talkProgressBar:I

    invoke-virtual {v0, v1}, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v1, "talkProgressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$loadTopics$1;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    sget v1, Lorg/wikipedia/R$id;->talkRefreshView:I

    invoke-virtual {v0, v1}, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const-string v1, "talkRefreshView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
