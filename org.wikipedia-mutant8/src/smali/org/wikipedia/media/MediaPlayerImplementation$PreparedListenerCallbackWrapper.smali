.class Lorg/wikipedia/media/MediaPlayerImplementation$PreparedListenerCallbackWrapper;
.super Lorg/wikipedia/media/MediaPlayerImplementation$CallbackWrapper;
.source "MediaPlayerImplementation.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/media/MediaPlayerImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreparedListenerCallbackWrapper"
.end annotation


# direct methods
.method constructor <init>(Lorg/wikipedia/media/AvPlayer$Callback;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lorg/wikipedia/media/MediaPlayerImplementation$CallbackWrapper;-><init>(Lorg/wikipedia/media/AvPlayer$Callback;)V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 131
    invoke-virtual {p0}, Lorg/wikipedia/media/MediaPlayerImplementation$CallbackWrapper;->onSuccess()V

    return-void
.end method
