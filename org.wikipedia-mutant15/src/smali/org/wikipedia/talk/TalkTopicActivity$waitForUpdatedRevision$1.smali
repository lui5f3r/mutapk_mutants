.class final Lorg/wikipedia/talk/TalkTopicActivity$waitForUpdatedRevision$1;
.super Ljava/lang/Object;
.source "TalkTopicActivity.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


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
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function<",
        "Lorg/wikipedia/dataclient/page/TalkPage;",
        "Lorg/wikipedia/dataclient/page/TalkPage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $newRevision:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    iput-wide p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$waitForUpdatedRevision$1;->$newRevision:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, Lorg/wikipedia/dataclient/page/TalkPage;

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity$waitForUpdatedRevision$1;->apply(Lorg/wikipedia/dataclient/page/TalkPage;)Lorg/wikipedia/dataclient/page/TalkPage;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lorg/wikipedia/dataclient/page/TalkPage;)Lorg/wikipedia/dataclient/page/TalkPage;
    .locals 5

    .line 320
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/TalkPage;->getRevision()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/wikipedia/talk/TalkTopicActivity$waitForUpdatedRevision$1;->$newRevision:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-object p1

    .line 321
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
