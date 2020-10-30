.class final Lorg/wikipedia/talk/TalkTopicActivity$linkMovementMethod$1;
.super Ljava/lang/Object;
.source "TalkTopicActivity.kt"

# interfaces
.implements Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/talk/TalkTopicActivity;-><init>()V
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

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$linkMovementMethod$1;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUrlClick(Ljava/lang/String;)V
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$linkMovementMethod$1;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-static {v0}, Lorg/wikipedia/talk/TalkTopicActivity;->access$getLinkHandler$p(Lorg/wikipedia/talk/TalkTopicActivity;)Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, p1, v1, v2}, Lorg/wikipedia/page/LinkHandler;->onUrlClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
