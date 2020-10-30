.class final Lorg/wikipedia/talk/TalkTopicActivity$doSave$1;
.super Ljava/lang/Object;
.source "TalkTopicActivity.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/talk/TalkTopicActivity;->doSave(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
        "Lorg/wikipedia/edit/Edit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/talk/TalkTopicActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/talk/TalkTopicActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$doSave$1;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Lorg/wikipedia/edit/Edit;

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity$doSave$1;->accept(Lorg/wikipedia/edit/Edit;)V

    return-void
.end method

.method public final accept(Lorg/wikipedia/edit/Edit;)V
    .locals 3

    .line 309
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$doSave$1;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-virtual {p1}, Lorg/wikipedia/edit/Edit;->edit()Lorg/wikipedia/edit/Edit$Result;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/wikipedia/edit/Edit$Result;->newRevId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/wikipedia/talk/TalkTopicActivity;->access$waitForUpdatedRevision(Lorg/wikipedia/talk/TalkTopicActivity;J)V

    return-void
.end method
