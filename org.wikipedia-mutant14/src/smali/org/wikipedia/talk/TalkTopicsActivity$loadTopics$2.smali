.class final Lorg/wikipedia/talk/TalkTopicsActivity$loadTopics$2;
.super Ljava/lang/Object;
.source "TalkTopicsActivity.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/talk/TalkTopicsActivity;->loadTopics()V
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
        "Lorg/wikipedia/dataclient/page/TalkPage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/talk/TalkTopicsActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/talk/TalkTopicsActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$loadTopics$2;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Lorg/wikipedia/dataclient/page/TalkPage;

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicsActivity$loadTopics$2;->accept(Lorg/wikipedia/dataclient/page/TalkPage;)V

    return-void
.end method

.method public final accept(Lorg/wikipedia/dataclient/page/TalkPage;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$loadTopics$2;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    invoke-static {v0}, Lorg/wikipedia/talk/TalkTopicsActivity;->access$getTopics$p(Lorg/wikipedia/talk/TalkTopicsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 127
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$loadTopics$2;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    invoke-static {v0}, Lorg/wikipedia/talk/TalkTopicsActivity;->access$getTopics$p(Lorg/wikipedia/talk/TalkTopicsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/TalkPage;->getTopics()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 128
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$loadTopics$2;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    invoke-static {p1}, Lorg/wikipedia/talk/TalkTopicsActivity;->access$updateOnSuccess(Lorg/wikipedia/talk/TalkTopicsActivity;)V

    return-void
.end method
