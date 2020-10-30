.class public final Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TalkTopicActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/talk/TalkTopicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TalkReplyItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/talk/TalkTopicActivity;


# direct methods
.method public constructor <init>(Lorg/wikipedia/talk/TalkTopicActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 211
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyItemAdapter;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyItemAdapter;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-static {v0}, Lorg/wikipedia/talk/TalkTopicActivity;->access$getTopic$p(Lorg/wikipedia/talk/TalkTopicActivity;)Lorg/wikipedia/dataclient/page/TalkPage$Topic;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/TalkPage$Topic;->getReplies()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    check-cast p1, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyHolder;

    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyItemAdapter;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-static {v0}, Lorg/wikipedia/talk/TalkTopicActivity;->access$getTopic$p(Lorg/wikipedia/talk/TalkTopicActivity;)Lorg/wikipedia/dataclient/page/TalkPage$Topic;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/TalkPage$Topic;->getReplies()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/page/TalkPage$TopicReply;

    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyItemAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p2, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1, v0, v2}, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyHolder;->bindItem(Lorg/wikipedia/dataclient/page/TalkPage$TopicReply;Z)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    new-instance p2, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyHolder;

    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyItemAdapter;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c008e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v1, "layoutInflater.inflate(R\u2026alk_reply, parent, false)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyHolder;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;Landroid/view/View;)V

    return-object p2
.end method
