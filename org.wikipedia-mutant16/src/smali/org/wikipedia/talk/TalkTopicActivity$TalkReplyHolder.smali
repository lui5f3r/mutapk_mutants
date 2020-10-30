.class public final Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TalkTopicActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/talk/TalkTopicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TalkReplyHolder"
.end annotation


# instance fields
.field private final bottomSpace:Landroid/view/View;

.field private final indentArrow:Landroid/view/View;

.field private final text:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/wikipedia/talk/TalkTopicActivity;


# direct methods
.method public constructor <init>(Lorg/wikipedia/talk/TalkTopicActivity;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyHolder;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090347

    .line 200
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.replyText)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyHolder;->text:Landroid/widget/TextView;

    const p1, 0x7f090343

    .line 201
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.replyIndentArrow)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyHolder;->indentArrow:Landroid/view/View;

    const p1, 0x7f090341

    .line 202
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "view.findViewById(R.id.replyBottomSpace)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyHolder;->bottomSpace:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final bindItem(Lorg/wikipedia/dataclient/page/TalkPage$TopicReply;Z)V
    .locals 3

    const-string v0, "reply"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyHolder;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyHolder;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-static {v1}, Lorg/wikipedia/talk/TalkTopicActivity;->access$getLinkMovementMethod$p(Lorg/wikipedia/talk/TalkTopicActivity;)Lorg/wikipedia/page/LinkMovementMethodExt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 205
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyHolder;->text:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/TalkPage$TopicReply;->getHtml()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyHolder;->indentArrow:Landroid/view/View;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/TalkPage$TopicReply;->getDepth()I

    move-result p1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyHolder;->bottomSpace:Landroid/view/View;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyHolder;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-static {p2}, Lorg/wikipedia/talk/TalkTopicActivity;->access$getReplyActive$p(Lorg/wikipedia/talk/TalkTopicActivity;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    const/16 v1, 0x8

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
