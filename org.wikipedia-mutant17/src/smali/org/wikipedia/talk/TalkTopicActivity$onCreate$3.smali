.class final Lorg/wikipedia/talk/TalkTopicActivity$onCreate$3;
.super Ljava/lang/Object;
.source "TalkTopicActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/talk/TalkTopicActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/talk/TalkTopicActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/talk/TalkTopicActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$onCreate$3;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 85
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$onCreate$3;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->access$setReplyActive$p(Lorg/wikipedia/talk/TalkTopicActivity;Z)V

    .line 86
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$onCreate$3;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    sget v0, Lorg/wikipedia/R$id;->talkRecyclerView:I

    invoke-virtual {p1, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "talkRecyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyItemAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 87
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$onCreate$3;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    sget v0, Lorg/wikipedia/R$id;->talkScrollContainer:I

    invoke-virtual {p1, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    const/16 v0, 0x82

    invoke-virtual {p1, v0}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    .line 88
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$onCreate$3;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    sget v0, Lorg/wikipedia/R$id;->replySaveButton:I

    invoke-virtual {p1, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-string v0, "replySaveButton"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$onCreate$3;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    sget v1, Lorg/wikipedia/R$id;->replyTextLayout:I

    invoke-virtual {p1, v1}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "replyTextLayout"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$onCreate$3;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    sget v0, Lorg/wikipedia/R$id;->replyTextLayout:I

    invoke-virtual {p1, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 91
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$onCreate$3;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    sget v0, Lorg/wikipedia/R$id;->replyEditText:I

    invoke-virtual {p1, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/views/PlainPasteEditText;

    invoke-static {p1}, Lorg/wikipedia/util/DeviceUtil;->showSoftKeyboard(Landroid/view/View;)V

    .line 92
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$onCreate$3;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    sget v0, Lorg/wikipedia/R$id;->talkReplyButton:I

    invoke-virtual {p1, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hide()V

    return-void
.end method
