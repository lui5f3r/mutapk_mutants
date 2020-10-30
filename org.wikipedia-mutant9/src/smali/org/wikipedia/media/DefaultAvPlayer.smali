.class public Lorg/wikipedia/media/DefaultAvPlayer;
.super Ljava/lang/Object;
.source "DefaultAvPlayer.java"

# interfaces
.implements Lorg/wikipedia/media/AvPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/media/DefaultAvPlayer$StopErrorCallbackWrapper;,
        Lorg/wikipedia/media/DefaultAvPlayer$StopCallbackWrapper;
    }
.end annotation


# instance fields
.field private final player:Lorg/wikipedia/media/MediaPlayerImplementation;

.field private final state:Lorg/wikipedia/media/State;


# direct methods
.method public constructor <init>(Lorg/wikipedia/media/MediaPlayerImplementation;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lorg/wikipedia/media/State;

    invoke-direct {v0}, Lorg/wikipedia/media/State;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->state:Lorg/wikipedia/media/State;

    .line 10
    iput-object p1, p0, Lorg/wikipedia/media/DefaultAvPlayer;->player:Lorg/wikipedia/media/MediaPlayerImplementation;

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/media/DefaultAvPlayer;)Lorg/wikipedia/media/State;
    .locals 0

    .line 5
    iget-object p0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->state:Lorg/wikipedia/media/State;

    return-object p0
.end method


# virtual methods
.method public deinit()V
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->state:Lorg/wikipedia/media/State;

    invoke-virtual {v0}, Lorg/wikipedia/media/State;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->player:Lorg/wikipedia/media/MediaPlayerImplementation;

    invoke-virtual {v0}, Lorg/wikipedia/media/MediaPlayerImplementation;->deinit()V

    .line 17
    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->state:Lorg/wikipedia/media/State;

    invoke-virtual {v0}, Lorg/wikipedia/media/State;->setDeinit()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->state:Lorg/wikipedia/media/State;

    invoke-virtual {v0}, Lorg/wikipedia/media/State;->isDeinit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->player:Lorg/wikipedia/media/MediaPlayerImplementation;

    invoke-virtual {v0}, Lorg/wikipedia/media/MediaPlayerImplementation;->init()V

    .line 25
    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->state:Lorg/wikipedia/media/State;

    invoke-virtual {v0}, Lorg/wikipedia/media/State;->setInit()V

    :cond_0
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->player:Lorg/wikipedia/media/MediaPlayerImplementation;

    invoke-virtual {v0}, Lorg/wikipedia/media/MediaPlayerImplementation;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$load$0$DefaultAvPlayer(Lorg/wikipedia/media/AvPlayer$Callback;Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->state:Lorg/wikipedia/media/State;

    invoke-virtual {v0}, Lorg/wikipedia/media/State;->setLoaded()V

    .line 38
    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->state:Lorg/wikipedia/media/State;

    invoke-virtual {v0}, Lorg/wikipedia/media/State;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->player:Lorg/wikipedia/media/MediaPlayerImplementation;

    new-instance v1, Lorg/wikipedia/media/DefaultAvPlayer$StopCallbackWrapper;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/media/DefaultAvPlayer$StopCallbackWrapper;-><init>(Lorg/wikipedia/media/DefaultAvPlayer;Lorg/wikipedia/media/AvPlayer$Callback;)V

    new-instance p1, Lorg/wikipedia/media/DefaultAvPlayer$StopErrorCallbackWrapper;

    invoke-direct {p1, p0, p2}, Lorg/wikipedia/media/DefaultAvPlayer$StopErrorCallbackWrapper;-><init>(Lorg/wikipedia/media/DefaultAvPlayer;Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V

    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/media/MediaPlayerImplementation;->play(Lorg/wikipedia/media/AvPlayer$Callback;Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {p1}, Lorg/wikipedia/media/AvPlayer$Callback;->onSuccess()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$load$1$DefaultAvPlayer(Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->state:Lorg/wikipedia/media/State;

    invoke-virtual {v0}, Lorg/wikipedia/media/State;->setInit()V

    .line 45
    invoke-interface {p1}, Lorg/wikipedia/media/AvPlayer$ErrorCallback;->onError()V

    return-void
.end method

.method public load(Ljava/lang/String;Lorg/wikipedia/media/AvPlayer$Callback;Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lorg/wikipedia/media/DefaultAvPlayer;->init()V

    .line 34
    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->state:Lorg/wikipedia/media/State;

    invoke-virtual {v0, p1}, Lorg/wikipedia/media/State;->isLoading(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->state:Lorg/wikipedia/media/State;

    invoke-virtual {v0, p1}, Lorg/wikipedia/media/State;->isLoaded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->state:Lorg/wikipedia/media/State;

    invoke-virtual {v0, p1}, Lorg/wikipedia/media/State;->setLoading(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->player:Lorg/wikipedia/media/MediaPlayerImplementation;

    new-instance v1, Lorg/wikipedia/media/-$$Lambda$DefaultAvPlayer$8KIb6DKUzQSJ_bwU6JhS2iZoPLI;

    invoke-direct {v1, p0, p2, p3}, Lorg/wikipedia/media/-$$Lambda$DefaultAvPlayer$8KIb6DKUzQSJ_bwU6JhS2iZoPLI;-><init>(Lorg/wikipedia/media/DefaultAvPlayer;Lorg/wikipedia/media/AvPlayer$Callback;Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V

    new-instance p2, Lorg/wikipedia/media/-$$Lambda$DefaultAvPlayer$RhJh7yDXb6OGy7OyfVQxCMWeBP0;

    invoke-direct {p2, p0, p3}, Lorg/wikipedia/media/-$$Lambda$DefaultAvPlayer$RhJh7yDXb6OGy7OyfVQxCMWeBP0;-><init>(Lorg/wikipedia/media/DefaultAvPlayer;Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V

    invoke-virtual {v0, p1, v1, p2}, Lorg/wikipedia/media/MediaPlayerImplementation;->load(Ljava/lang/String;Lorg/wikipedia/media/AvPlayer$Callback;Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->state:Lorg/wikipedia/media/State;

    invoke-virtual {v0}, Lorg/wikipedia/media/State;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->state:Lorg/wikipedia/media/State;

    invoke-virtual {v0}, Lorg/wikipedia/media/State;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->player:Lorg/wikipedia/media/MediaPlayerImplementation;

    invoke-virtual {v0}, Lorg/wikipedia/media/MediaPlayerImplementation;->pause()V

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->state:Lorg/wikipedia/media/State;

    invoke-virtual {v0}, Lorg/wikipedia/media/State;->setPaused()V

    return-void
.end method

.method public play(Ljava/lang/String;Lorg/wikipedia/media/AvPlayer$Callback;Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V
    .locals 0

    .line 72
    invoke-virtual {p0, p2, p3}, Lorg/wikipedia/media/DefaultAvPlayer;->play(Lorg/wikipedia/media/AvPlayer$Callback;Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V

    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lorg/wikipedia/media/DefaultAvPlayer;->load(Ljava/lang/String;Lorg/wikipedia/media/AvPlayer$Callback;Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V

    return-void
.end method

.method public play(Lorg/wikipedia/media/AvPlayer$Callback;Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->state:Lorg/wikipedia/media/State;

    invoke-virtual {v0}, Lorg/wikipedia/media/State;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->state:Lorg/wikipedia/media/State;

    invoke-virtual {v0}, Lorg/wikipedia/media/State;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->state:Lorg/wikipedia/media/State;

    invoke-virtual {v0}, Lorg/wikipedia/media/State;->setPlaying()V

    .line 62
    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->player:Lorg/wikipedia/media/MediaPlayerImplementation;

    new-instance v1, Lorg/wikipedia/media/DefaultAvPlayer$StopCallbackWrapper;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/media/DefaultAvPlayer$StopCallbackWrapper;-><init>(Lorg/wikipedia/media/DefaultAvPlayer;Lorg/wikipedia/media/AvPlayer$Callback;)V

    new-instance p1, Lorg/wikipedia/media/DefaultAvPlayer$StopErrorCallbackWrapper;

    invoke-direct {p1, p0, p2}, Lorg/wikipedia/media/DefaultAvPlayer$StopErrorCallbackWrapper;-><init>(Lorg/wikipedia/media/DefaultAvPlayer;Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V

    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/media/MediaPlayerImplementation;->play(Lorg/wikipedia/media/AvPlayer$Callback;Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/media/DefaultAvPlayer;->state:Lorg/wikipedia/media/State;

    invoke-virtual {p1}, Lorg/wikipedia/media/State;->setPlaying()V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->state:Lorg/wikipedia/media/State;

    invoke-virtual {v0}, Lorg/wikipedia/media/State;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->state:Lorg/wikipedia/media/State;

    invoke-virtual {v0}, Lorg/wikipedia/media/State;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->player:Lorg/wikipedia/media/MediaPlayerImplementation;

    invoke-virtual {v0}, Lorg/wikipedia/media/MediaPlayerImplementation;->stop()V

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/media/DefaultAvPlayer;->state:Lorg/wikipedia/media/State;

    invoke-virtual {v0}, Lorg/wikipedia/media/State;->setStopped()V

    return-void
.end method
