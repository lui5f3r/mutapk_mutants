.class final Lorg/wikipedia/talk/TalkTopicActivity$waitForUpdatedRevision$3;
.super Ljava/lang/Object;
.source "TalkTopicActivity.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


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
        "Lio/reactivex/rxjava3/functions/Consumer<",
        "Lorg/wikipedia/dataclient/page/TalkPage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/talk/TalkTopicActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/talk/TalkTopicActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$waitForUpdatedRevision$3;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/wikipedia/dataclient/page/TalkPage;

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity$waitForUpdatedRevision$3;->accept(Lorg/wikipedia/dataclient/page/TalkPage;)V

    return-void
.end method

.method public final accept(Lorg/wikipedia/dataclient/page/TalkPage;)V
    .locals 0

    .line 331
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$waitForUpdatedRevision$3;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-static {p1}, Lorg/wikipedia/talk/TalkTopicActivity;->access$onSaveSuccess(Lorg/wikipedia/talk/TalkTopicActivity;)V

    return-void
.end method
