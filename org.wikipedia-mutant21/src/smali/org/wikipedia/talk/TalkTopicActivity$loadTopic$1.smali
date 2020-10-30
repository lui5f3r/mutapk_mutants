.class final Lorg/wikipedia/talk/TalkTopicActivity$loadTopic$1;
.super Ljava/lang/Object;
.source "TalkTopicActivity.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


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
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function<",
        "Lorg/wikipedia/dataclient/page/TalkPage;",
        "Lorg/wikipedia/dataclient/page/TalkPage$Topic;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTalkTopicActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TalkTopicActivity.kt\norg/wikipedia/talk/TalkTopicActivity$loadTopic$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,387:1\n1#2:388\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/talk/TalkTopicActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/talk/TalkTopicActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$loadTopic$1;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, Lorg/wikipedia/dataclient/page/TalkPage;

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity$loadTopic$1;->apply(Lorg/wikipedia/dataclient/page/TalkPage;)Lorg/wikipedia/dataclient/page/TalkPage$Topic;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lorg/wikipedia/dataclient/page/TalkPage;)Lorg/wikipedia/dataclient/page/TalkPage$Topic;
    .locals 5

    .line 153
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/TalkPage;->getTopics()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/wikipedia/dataclient/page/TalkPage$Topic;

    invoke-virtual {v3}, Lorg/wikipedia/dataclient/page/TalkPage$Topic;->getId()I

    move-result v3

    iget-object v4, p0, Lorg/wikipedia/talk/TalkTopicActivity$loadTopic$1;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-static {v4}, Lorg/wikipedia/talk/TalkTopicActivity;->access$getTopicId$p(Lorg/wikipedia/talk/TalkTopicActivity;)I

    move-result v4

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    move-object v1, v2

    :cond_2
    check-cast v1, Lorg/wikipedia/dataclient/page/TalkPage$Topic;

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 154
    sget-object v0, Lorg/wikipedia/talk/TalkPageSeenDatabaseTable;->INSTANCE:Lorg/wikipedia/talk/TalkPageSeenDatabaseTable;

    invoke-virtual {v0, v1}, Lorg/wikipedia/talk/TalkPageSeenDatabaseTable;->setTalkTopicSeen(Lorg/wikipedia/dataclient/page/TalkPage$Topic;)V

    .line 155
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$loadTopic$1;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/TalkPage;->getRevision()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/wikipedia/talk/TalkTopicActivity;->access$setCurrentRevision$p(Lorg/wikipedia/talk/TalkTopicActivity;J)V

    return-object v1
.end method
