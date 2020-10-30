.class public final Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TalkTopicsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/talk/TalkTopicsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TalkTopicItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/talk/TalkTopicsActivity;


# direct methods
.method public constructor <init>(Lorg/wikipedia/talk/TalkTopicsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicItemAdapter;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicItemAdapter;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    invoke-static {v0}, Lorg/wikipedia/talk/TalkTopicsActivity;->access$getTopics$p(Lorg/wikipedia/talk/TalkTopicsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    check-cast p1, Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicHolder;

    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicItemAdapter;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    invoke-static {v0}, Lorg/wikipedia/talk/TalkTopicsActivity;->access$getTopics$p(Lorg/wikipedia/talk/TalkTopicsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "topics[pos]"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lorg/wikipedia/dataclient/page/TalkPage$Topic;

    invoke-virtual {p1, p2}, Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicHolder;->bindItem(Lorg/wikipedia/dataclient/page/TalkPage$Topic;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    new-instance p2, Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicHolder;

    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicItemAdapter;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c008f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v1, "layoutInflater.inflate(R\u2026alk_topic, parent, false)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicHolder;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;Landroid/view/View;)V

    return-object p2
.end method
