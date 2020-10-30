.class public Lorg/wikipedia/media/MediaPlayerImplementation;
.super Ljava/lang/Object;
.source "MediaPlayerImplementation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/media/MediaPlayerImplementation$ErrorListenerErrorCallbackWrapper;,
        Lorg/wikipedia/media/MediaPlayerImplementation$CompletionListenerCallbackWrapper;,
        Lorg/wikipedia/media/MediaPlayerImplementation$PreparedListenerCallbackWrapper;,
        Lorg/wikipedia/media/MediaPlayerImplementation$ErrorCallbackWrapper;,
        Lorg/wikipedia/media/MediaPlayerImplementation$CallbackWrapper;
    }
.end annotation


# static fields
.field private static final VERBOSE:Z = false


# instance fields
.field private final player:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/media/MediaPlayerImplementation;->player:Landroid/media/MediaPlayer;

    return-void
.end method

.method private load(Ljava/lang/String;Landroid/media/MediaPlayer$OnPreparedListener;Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/wikipedia/media/MediaPlayerImplementation;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 69
    iget-object v0, p0, Lorg/wikipedia/media/MediaPlayerImplementation;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 70
    iget-object p2, p0, Lorg/wikipedia/media/MediaPlayerImplementation;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 71
    invoke-direct {p0, p1}, Lorg/wikipedia/media/MediaPlayerImplementation;->setDataSource(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lorg/wikipedia/media/MediaPlayerImplementation;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/media/MediaPlayerImplementation;->player:Landroid/media/MediaPlayer;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, v0}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    :goto_0
    return-void
.end method

.method private play(Landroid/media/MediaPlayer$OnCompletionListener;Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/wikipedia/media/MediaPlayerImplementation;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 84
    iget-object p1, p0, Lorg/wikipedia/media/MediaPlayerImplementation;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 85
    iget-object p1, p0, Lorg/wikipedia/media/MediaPlayerImplementation;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method private setDataSource(Ljava/lang/String;)Z
    .locals 1

    .line 90
    :try_start_0
    iget-object v0, p0, Lorg/wikipedia/media/MediaPlayerImplementation;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 93
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public deinit()V
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/wikipedia/media/MediaPlayerImplementation;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/wikipedia/media/MediaPlayerImplementation;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;Lorg/wikipedia/media/AvPlayer$Callback;Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V
    .locals 1

    .line 30
    new-instance v0, Lorg/wikipedia/media/MediaPlayerImplementation$PreparedListenerCallbackWrapper;

    invoke-direct {v0, p2}, Lorg/wikipedia/media/MediaPlayerImplementation$PreparedListenerCallbackWrapper;-><init>(Lorg/wikipedia/media/AvPlayer$Callback;)V

    new-instance p2, Lorg/wikipedia/media/MediaPlayerImplementation$ErrorListenerErrorCallbackWrapper;

    invoke-direct {p2, p3}, Lorg/wikipedia/media/MediaPlayerImplementation$ErrorListenerErrorCallbackWrapper;-><init>(Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V

    invoke-direct {p0, p1, v0, p2}, Lorg/wikipedia/media/MediaPlayerImplementation;->load(Ljava/lang/String;Landroid/media/MediaPlayer$OnPreparedListener;Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/wikipedia/media/MediaPlayerImplementation;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public play(Lorg/wikipedia/media/AvPlayer$Callback;Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V
    .locals 1

    .line 47
    new-instance v0, Lorg/wikipedia/media/MediaPlayerImplementation$CompletionListenerCallbackWrapper;

    invoke-direct {v0, p1}, Lorg/wikipedia/media/MediaPlayerImplementation$CompletionListenerCallbackWrapper;-><init>(Lorg/wikipedia/media/AvPlayer$Callback;)V

    new-instance p1, Lorg/wikipedia/media/MediaPlayerImplementation$ErrorListenerErrorCallbackWrapper;

    invoke-direct {p1, p2}, Lorg/wikipedia/media/MediaPlayerImplementation$ErrorListenerErrorCallbackWrapper;-><init>(Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V

    invoke-direct {p0, v0, p1}, Lorg/wikipedia/media/MediaPlayerImplementation;->play(Landroid/media/MediaPlayer$OnCompletionListener;Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 41
    iget-object v0, p0, Lorg/wikipedia/media/MediaPlayerImplementation;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 42
    invoke-virtual {p0}, Lorg/wikipedia/media/MediaPlayerImplementation;->pause()V

    return-void
.end method
