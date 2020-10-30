.class Lorg/wikipedia/page/PageFragment$AvCallback;
.super Ljava/lang/Object;
.source "PageFragment.java"

# interfaces
.implements Lorg/wikipedia/media/AvPlayer$Callback;
.implements Lorg/wikipedia/media/AvPlayer$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/page/PageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/page/PageFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/page/PageFragment;)V
    .locals 0

    .line 1423
    iput-object p1, p0, Lorg/wikipedia/page/PageFragment$AvCallback;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/page/PageFragment$1;)V
    .locals 0

    .line 1423
    invoke-direct {p0, p1}, Lorg/wikipedia/page/PageFragment$AvCallback;-><init>(Lorg/wikipedia/page/PageFragment;)V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    .line 1433
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$AvCallback;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-static {v0}, Lorg/wikipedia/page/PageFragment;->access$1300(Lorg/wikipedia/page/PageFragment;)Lorg/wikipedia/media/AvPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1434
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$AvCallback;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-static {v0}, Lorg/wikipedia/page/PageFragment;->access$1300(Lorg/wikipedia/page/PageFragment;)Lorg/wikipedia/media/AvPlayer;

    move-result-object v0

    invoke-interface {v0}, Lorg/wikipedia/media/AvPlayer;->stop()V

    .line 1435
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$AvCallback;->this$0:Lorg/wikipedia/page/PageFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/wikipedia/page/PageFragment;->access$1400(Lorg/wikipedia/page/PageFragment;Z)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1426
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$AvCallback;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-static {v0}, Lorg/wikipedia/page/PageFragment;->access$1300(Lorg/wikipedia/page/PageFragment;)Lorg/wikipedia/media/AvPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1427
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$AvCallback;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-static {v0}, Lorg/wikipedia/page/PageFragment;->access$1300(Lorg/wikipedia/page/PageFragment;)Lorg/wikipedia/media/AvPlayer;

    move-result-object v0

    invoke-interface {v0}, Lorg/wikipedia/media/AvPlayer;->stop()V

    .line 1428
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$AvCallback;->this$0:Lorg/wikipedia/page/PageFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/wikipedia/page/PageFragment;->access$1400(Lorg/wikipedia/page/PageFragment;Z)V

    :cond_0
    return-void
.end method
