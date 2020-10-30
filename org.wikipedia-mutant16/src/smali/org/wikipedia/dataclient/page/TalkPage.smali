.class public final Lorg/wikipedia/dataclient/page/TalkPage;
.super Ljava/lang/Object;
.source "TalkPage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/dataclient/page/TalkPage$Topic;,
        Lorg/wikipedia/dataclient/page/TalkPage$TopicShas;,
        Lorg/wikipedia/dataclient/page/TalkPage$TopicReply;
    }
.end annotation


# instance fields
.field private final revision:J

.field private final topics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/page/TalkPage$Topic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRevision()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lorg/wikipedia/dataclient/page/TalkPage;->revision:J

    return-wide v0
.end method

.method public final getTopics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/page/TalkPage$Topic;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/TalkPage;->topics:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method
