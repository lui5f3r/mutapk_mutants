.class final Lorg/wikipedia/talk/TalkTopicActivity$waitForUpdatedRevision$2;
.super Ljava/lang/Object;
.source "TalkTopicActivity.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/talk/TalkTopicActivity;->waitForUpdatedRevision(J)V
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
        "Lio/reactivex/rxjava3/functions/Predicate<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/talk/TalkTopicActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/talk/TalkTopicActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$waitForUpdatedRevision$2;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 38
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity$waitForUpdatedRevision$2;->test(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public final test(Ljava/lang/Throwable;)Z
    .locals 1

    .line 326
    instance-of v0, p1, Ljava/lang/IllegalStateException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$waitForUpdatedRevision$2;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    .line 327
    invoke-static {v0}, Lorg/wikipedia/talk/TalkTopicActivity;->access$isNewTopic(Lorg/wikipedia/talk/TalkTopicActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->code()I

    move-result p1

    const/16 v0, 0x194

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
