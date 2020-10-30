.class public final Lorg/wikipedia/dataclient/page/TalkPage$TopicShas;
.super Ljava/lang/Object;
.source "TalkPage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/page/TalkPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TopicShas"
.end annotation


# instance fields
.field private final html:Ljava/lang/String;

.field private final indicator:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHtml()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/TalkPage$TopicShas;->html:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final getIndicator()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/TalkPage$TopicShas;->indicator:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
