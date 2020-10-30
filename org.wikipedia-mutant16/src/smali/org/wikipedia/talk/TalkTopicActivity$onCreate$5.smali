.class final Lorg/wikipedia/talk/TalkTopicActivity$onCreate$5;
.super Ljava/lang/Object;
.source "TalkTopicActivity.kt"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


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

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$onCreate$5;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$onCreate$5;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-static {v0}, Lorg/wikipedia/talk/TalkTopicActivity;->access$loadTopic(Lorg/wikipedia/talk/TalkTopicActivity;)V

    return-void
.end method
