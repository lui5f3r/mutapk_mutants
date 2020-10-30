.class Lorg/wikipedia/media/DefaultAvPlayer$StopCallbackWrapper;
.super Ljava/lang/Object;
.source "DefaultAvPlayer.java"

# interfaces
.implements Lorg/wikipedia/media/AvPlayer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/media/DefaultAvPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopCallbackWrapper"
.end annotation


# instance fields
.field private final callback:Lorg/wikipedia/media/AvPlayer$Callback;

.field final synthetic this$0:Lorg/wikipedia/media/DefaultAvPlayer;


# direct methods
.method constructor <init>(Lorg/wikipedia/media/DefaultAvPlayer;Lorg/wikipedia/media/AvPlayer$Callback;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/wikipedia/media/DefaultAvPlayer$StopCallbackWrapper;->this$0:Lorg/wikipedia/media/DefaultAvPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p2, p0, Lorg/wikipedia/media/DefaultAvPlayer$StopCallbackWrapper;->callback:Lorg/wikipedia/media/AvPlayer$Callback;

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer$StopCallbackWrapper;->this$0:Lorg/wikipedia/media/DefaultAvPlayer;

    invoke-static {v0}, Lorg/wikipedia/media/DefaultAvPlayer;->access$000(Lorg/wikipedia/media/DefaultAvPlayer;)Lorg/wikipedia/media/State;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/media/State;->setStopped()V

    .line 99
    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer$StopCallbackWrapper;->callback:Lorg/wikipedia/media/AvPlayer$Callback;

    invoke-interface {v0}, Lorg/wikipedia/media/AvPlayer$Callback;->onSuccess()V

    return-void
.end method
