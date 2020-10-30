.class Lorg/wikipedia/media/State;
.super Ljava/lang/Object;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/media/State$PlayState;,
        Lorg/wikipedia/media/State$LoadState;
    }
.end annotation


# instance fields
.field private loadState:Lorg/wikipedia/media/State$LoadState;

.field private path:Ljava/lang/String;

.field private playState:Lorg/wikipedia/media/State$PlayState;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lorg/wikipedia/media/State$LoadState;->DEINIT:Lorg/wikipedia/media/State$LoadState;

    iput-object v0, p0, Lorg/wikipedia/media/State;->loadState:Lorg/wikipedia/media/State$LoadState;

    .line 19
    sget-object v0, Lorg/wikipedia/media/State$PlayState;->STOPPED:Lorg/wikipedia/media/State$PlayState;

    iput-object v0, p0, Lorg/wikipedia/media/State;->playState:Lorg/wikipedia/media/State$PlayState;

    return-void
.end method

.method private isPathIdentical(Ljava/lang/String;)Z
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/wikipedia/media/State;->path:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/wikipedia/media/State;->path:Ljava/lang/String;

    return-object v0
.end method

.method public isDeinit()Z
    .locals 2

    .line 30
    iget-object v0, p0, Lorg/wikipedia/media/State;->loadState:Lorg/wikipedia/media/State$LoadState;

    sget-object v1, Lorg/wikipedia/media/State$LoadState;->DEINIT:Lorg/wikipedia/media/State$LoadState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInit()Z
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/wikipedia/media/State;->isDeinit()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isLoaded()Z
    .locals 2

    .line 62
    iget-object v0, p0, Lorg/wikipedia/media/State;->loadState:Lorg/wikipedia/media/State$LoadState;

    sget-object v1, Lorg/wikipedia/media/State$LoadState;->LOADED:Lorg/wikipedia/media/State$LoadState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoaded(Ljava/lang/String;)Z
    .locals 1

    .line 66
    invoke-virtual {p0}, Lorg/wikipedia/media/State;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/wikipedia/media/State;->isPathIdentical(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isLoading()Z
    .locals 2

    .line 47
    iget-object v0, p0, Lorg/wikipedia/media/State;->loadState:Lorg/wikipedia/media/State$LoadState;

    sget-object v1, Lorg/wikipedia/media/State$LoadState;->LOADING:Lorg/wikipedia/media/State$LoadState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoading(Ljava/lang/String;)Z
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/wikipedia/media/State;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/wikipedia/media/State;->isPathIdentical(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPaused()Z
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/wikipedia/media/State;->playState:Lorg/wikipedia/media/State$PlayState;

    sget-object v1, Lorg/wikipedia/media/State$PlayState;->PAUSED:Lorg/wikipedia/media/State$PlayState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 82
    iget-object v0, p0, Lorg/wikipedia/media/State;->playState:Lorg/wikipedia/media/State$PlayState;

    sget-object v1, Lorg/wikipedia/media/State$PlayState;->PLAYING:Lorg/wikipedia/media/State$PlayState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStopped()Z
    .locals 2

    .line 74
    iget-object v0, p0, Lorg/wikipedia/media/State;->playState:Lorg/wikipedia/media/State$PlayState;

    sget-object v1, Lorg/wikipedia/media/State$PlayState;->STOPPED:Lorg/wikipedia/media/State$PlayState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDeinit()V
    .locals 1

    .line 34
    sget-object v0, Lorg/wikipedia/media/State$LoadState;->DEINIT:Lorg/wikipedia/media/State$LoadState;

    iput-object v0, p0, Lorg/wikipedia/media/State;->loadState:Lorg/wikipedia/media/State$LoadState;

    .line 35
    sget-object v0, Lorg/wikipedia/media/State$PlayState;->STOPPED:Lorg/wikipedia/media/State$PlayState;

    iput-object v0, p0, Lorg/wikipedia/media/State;->playState:Lorg/wikipedia/media/State$PlayState;

    return-void
.end method

.method public setInit()V
    .locals 1

    .line 43
    sget-object v0, Lorg/wikipedia/media/State$LoadState;->INIT:Lorg/wikipedia/media/State$LoadState;

    iput-object v0, p0, Lorg/wikipedia/media/State;->loadState:Lorg/wikipedia/media/State$LoadState;

    return-void
.end method

.method public setLoaded()V
    .locals 1

    .line 70
    sget-object v0, Lorg/wikipedia/media/State$LoadState;->LOADED:Lorg/wikipedia/media/State$LoadState;

    iput-object v0, p0, Lorg/wikipedia/media/State;->loadState:Lorg/wikipedia/media/State$LoadState;

    return-void
.end method

.method public setLoading(Ljava/lang/String;)V
    .locals 1

    .line 55
    invoke-virtual {p0, p1}, Lorg/wikipedia/media/State;->isLoaded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    sget-object v0, Lorg/wikipedia/media/State$LoadState;->LOADING:Lorg/wikipedia/media/State$LoadState;

    iput-object v0, p0, Lorg/wikipedia/media/State;->loadState:Lorg/wikipedia/media/State$LoadState;

    .line 57
    iput-object p1, p0, Lorg/wikipedia/media/State;->path:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setPaused()V
    .locals 1

    .line 94
    sget-object v0, Lorg/wikipedia/media/State$PlayState;->PAUSED:Lorg/wikipedia/media/State$PlayState;

    iput-object v0, p0, Lorg/wikipedia/media/State;->playState:Lorg/wikipedia/media/State$PlayState;

    return-void
.end method

.method public setPlaying()V
    .locals 1

    .line 86
    sget-object v0, Lorg/wikipedia/media/State$PlayState;->PLAYING:Lorg/wikipedia/media/State$PlayState;

    iput-object v0, p0, Lorg/wikipedia/media/State;->playState:Lorg/wikipedia/media/State$PlayState;

    return-void
.end method

.method public setStopped()V
    .locals 1

    .line 78
    sget-object v0, Lorg/wikipedia/media/State$PlayState;->STOPPED:Lorg/wikipedia/media/State$PlayState;

    iput-object v0, p0, Lorg/wikipedia/media/State;->playState:Lorg/wikipedia/media/State$PlayState;

    return-void
.end method
