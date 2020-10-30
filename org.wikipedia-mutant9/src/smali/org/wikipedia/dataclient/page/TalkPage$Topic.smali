.class public final Lorg/wikipedia/dataclient/page/TalkPage$Topic;
.super Ljava/lang/Object;
.source "TalkPage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/page/TalkPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Topic"
.end annotation


# instance fields
.field private final depth:I

.field private final html:Ljava/lang/String;

.field private final id:I

.field private final replies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/page/TalkPage$TopicReply;",
            ">;"
        }
    .end annotation
.end field

.field private final shas:Lorg/wikipedia/dataclient/page/TalkPage$TopicShas;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDepth()I
    .locals 1

    .line 10
    iget v0, p0, Lorg/wikipedia/dataclient/page/TalkPage$Topic;->depth:I

    return v0
.end method

.method public final getHtml()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/TalkPage$Topic;->html:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 9
    iget v0, p0, Lorg/wikipedia/dataclient/page/TalkPage$Topic;->id:I

    return v0
.end method

.method public final getIndicatorSha()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/TalkPage$Topic;->shas:Lorg/wikipedia/dataclient/page/TalkPage$TopicShas;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/TalkPage$TopicShas;->getIndicator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public final getReplies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/page/TalkPage$TopicReply;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/TalkPage$Topic;->replies:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getShas()Lorg/wikipedia/dataclient/page/TalkPage$TopicShas;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/TalkPage$Topic;->shas:Lorg/wikipedia/dataclient/page/TalkPage$TopicShas;

    return-object v0
.end method
