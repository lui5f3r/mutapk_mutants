.class Lorg/wikipedia/media/MediaPlayerImplementation$ErrorListenerErrorCallbackWrapper;
.super Lorg/wikipedia/media/MediaPlayerImplementation$ErrorCallbackWrapper;
.source "MediaPlayerImplementation.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/media/MediaPlayerImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorListenerErrorCallbackWrapper"
.end annotation


# direct methods
.method constructor <init>(Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lorg/wikipedia/media/MediaPlayerImplementation$ErrorCallbackWrapper;-><init>(Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 161
    invoke-virtual {p0}, Lorg/wikipedia/media/MediaPlayerImplementation$ErrorCallbackWrapper;->onError()V

    const/4 p1, 0x1

    return p1
.end method
