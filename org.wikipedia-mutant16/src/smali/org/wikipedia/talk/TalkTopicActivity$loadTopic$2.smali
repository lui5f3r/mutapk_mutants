.class final Lorg/wikipedia/talk/TalkTopicActivity$loadTopic$2;
.super Ljava/lang/Object;
.source "TalkTopicActivity.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/talk/TalkTopicActivity;->loadTopic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer<",
        "Lorg/wikipedia/dataclient/page/TalkPage$Topic;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/talk/TalkTopicActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/talk/TalkTopicActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$loadTopic$2;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/wikipedia/dataclient/page/TalkPage$Topic;

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity$loadTopic$2;->accept(Lorg/wikipedia/dataclient/page/TalkPage$Topic;)V

    return-void
.end method

.method public final accept(Lorg/wikipedia/dataclient/page/TalkPage$Topic;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$loadTopic$2;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-static {v0, p1}, Lorg/wikipedia/talk/TalkTopicActivity;->access$setTopic$p(Lorg/wikipedia/talk/TalkTopicActivity;Lorg/wikipedia/dataclient/page/TalkPage$Topic;)V

    .line 160
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$loadTopic$2;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-static {p1}, Lorg/wikipedia/talk/TalkTopicActivity;->access$updateOnSuccess(Lorg/wikipedia/talk/TalkTopicActivity;)V

    return-void
.end method