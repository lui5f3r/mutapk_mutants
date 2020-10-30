.class Lorg/wikipedia/media/MediaPlayerImplementation$CompletionListenerCallbackWrapper;
.super Lorg/wikipedia/media/MediaPlayerImplementation$CallbackWrapper;
.source "MediaPlayerImplementation.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/media/MediaPlayerImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompletionListenerCallbackWrapper"
.end annotation


# direct methods
.method constructor <init>(Lorg/wikipedia/media/AvPlayer$Callback;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lorg/wikipedia/media/MediaPlayerImplementation$CallbackWrapper;-><init>(Lorg/wikipedia/media/AvPlayer$Callback;)V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 146
    invoke-virtual {p0}, Lorg/wikipedia/media/MediaPlayerImplementation$CallbackWrapper;->onSuccess()V

    return-void
.end method
