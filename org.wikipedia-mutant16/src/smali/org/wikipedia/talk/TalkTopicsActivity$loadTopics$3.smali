.class final Lorg/wikipedia/talk/TalkTopicsActivity$loadTopics$3;
.super Ljava/lang/Object;
.source "TalkTopicsActivity.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/talk/TalkTopicsActivity;->loadTopics()V
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/talk/TalkTopicsActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/talk/TalkTopicsActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$loadTopics$3;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicsActivity$loadTopics$3;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Throwable;)V
    .locals 2

    .line 130
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 131
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$loadTopics$3;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    const-string v1, "t"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/wikipedia/talk/TalkTopicsActivity;->access$updateOnError(Lorg/wikipedia/talk/TalkTopicsActivity;Ljava/lang/Throwable;)V

    return-void
.end method
