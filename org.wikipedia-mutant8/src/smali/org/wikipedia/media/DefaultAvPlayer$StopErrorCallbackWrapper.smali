.class Lorg/wikipedia/media/DefaultAvPlayer$StopErrorCallbackWrapper;
.super Ljava/lang/Object;
.source "DefaultAvPlayer.java"

# interfaces
.implements Lorg/wikipedia/media/AvPlayer$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/media/DefaultAvPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopErrorCallbackWrapper"
.end annotation


# instance fields
.field private final errorCallback:Lorg/wikipedia/media/AvPlayer$ErrorCallback;

.field final synthetic this$0:Lorg/wikipedia/media/DefaultAvPlayer;


# direct methods
.method constructor <init>(Lorg/wikipedia/media/DefaultAvPlayer;Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lorg/wikipedia/media/DefaultAvPlayer$StopErrorCallbackWrapper;->this$0:Lorg/wikipedia/media/DefaultAvPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p2, p0, Lorg/wikipedia/media/DefaultAvPlayer$StopErrorCallbackWrapper;->errorCallback:Lorg/wikipedia/media/AvPlayer$ErrorCallback;

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer$StopErrorCallbackWrapper;->this$0:Lorg/wikipedia/media/DefaultAvPlayer;

    invoke-static {v0}, Lorg/wikipedia/media/DefaultAvPlayer;->access$000(Lorg/wikipedia/media/DefaultAvPlayer;)Lorg/wikipedia/media/State;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/media/State;->setStopped()V

    .line 113
    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer$StopErrorCallbackWrapper;->errorCallback:Lorg/wikipedia/media/AvPlayer$ErrorCallback;

    invoke-interface {v0}, Lorg/wikipedia/media/AvPlayer$ErrorCallback;->onError()V

    return-void
.end method
