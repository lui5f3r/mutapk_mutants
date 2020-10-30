.class public final synthetic Lorg/wikipedia/media/-$$Lambda$DefaultAvPlayer$RhJh7yDXb6OGy7OyfVQxCMWeBP0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/wikipedia/media/AvPlayer$ErrorCallback;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/media/DefaultAvPlayer;

.field public final synthetic f$1:Lorg/wikipedia/media/AvPlayer$ErrorCallback;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/media/DefaultAvPlayer;Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/media/-$$Lambda$DefaultAvPlayer$RhJh7yDXb6OGy7OyfVQxCMWeBP0;->f$0:Lorg/wikipedia/media/DefaultAvPlayer;

    iput-object p2, p0, Lorg/wikipedia/media/-$$Lambda$DefaultAvPlayer$RhJh7yDXb6OGy7OyfVQxCMWeBP0;->f$1:Lorg/wikipedia/media/AvPlayer$ErrorCallback;

    return-void
.end method


# virtual methods
.method public final onError()V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/media/-$$Lambda$DefaultAvPlayer$RhJh7yDXb6OGy7OyfVQxCMWeBP0;->f$0:Lorg/wikipedia/media/DefaultAvPlayer;

    iget-object v1, p0, Lorg/wikipedia/media/-$$Lambda$DefaultAvPlayer$RhJh7yDXb6OGy7OyfVQxCMWeBP0;->f$1:Lorg/wikipedia/media/AvPlayer$ErrorCallback;

    invoke-virtual {v0, v1}, Lorg/wikipedia/media/DefaultAvPlayer;->lambda$load$1$DefaultAvPlayer(Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V

    return-void
.end method
