.class public final Lorg/wikipedia/dataclient/page/TalkPage$TopicReply;
.super Ljava/lang/Object;
.source "TalkPage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/page/TalkPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TopicReply"
.end annotation


# instance fields
.field private final depth:I

.field private final html:Ljava/lang/String;

.field private final sha:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDepth()I
    .locals 1

    .line 30
    iget v0, p0, Lorg/wikipedia/dataclient/page/TalkPage$TopicReply;->depth:I

    return v0
.end method

.method public final getHtml()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/TalkPage$TopicReply;->html:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final getSha()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/TalkPage$TopicReply;->sha:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
