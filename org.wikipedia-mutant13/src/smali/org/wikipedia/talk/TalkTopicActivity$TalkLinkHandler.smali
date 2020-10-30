.class public final Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;
.super Lorg/wikipedia/page/LinkHandler;
.source "TalkTopicActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/talk/TalkTopicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TalkLinkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/talk/TalkTopicActivity;


# direct methods
.method public constructor <init>(Lorg/wikipedia/talk/TalkTopicActivity;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-direct {p0, p2}, Lorg/wikipedia/page/LinkHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getWikiSite()Lorg/wikipedia/dataclient/WikiSite;
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-static {v0}, Lorg/wikipedia/talk/TalkTopicActivity;->access$getWikiSite$p(Lorg/wikipedia/talk/TalkTopicActivity;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    return-object v0
.end method

.method public onInternalLinkClicked(Lorg/wikipedia/page/PageTitle;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-static {v0, p1}, Lorg/wikipedia/talk/TalkTopicActivity;->access$showLinkPreviewOrNavigate(Lorg/wikipedia/talk/TalkTopicActivity;Lorg/wikipedia/page/PageTitle;)V

    return-void
.end method

.method public onMediaLinkClicked(Lorg/wikipedia/page/PageTitle;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPageLinkClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "linkText"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
