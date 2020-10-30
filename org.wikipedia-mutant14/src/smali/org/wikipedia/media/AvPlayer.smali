.class public interface abstract Lorg/wikipedia/media/AvPlayer;
.super Ljava/lang/Object;
.source "AvPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/media/AvPlayer$ErrorCallback;,
        Lorg/wikipedia/media/AvPlayer$Callback;
    }
.end annotation


# virtual methods
.method public abstract deinit()V
.end method

.method public abstract init()V
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract load(Ljava/lang/String;Lorg/wikipedia/media/AvPlayer$Callback;Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V
.end method

.method public abstract pause()V
.end method

.method public abstract play(Ljava/lang/String;Lorg/wikipedia/media/AvPlayer$Callback;Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V
.end method

.method public abstract play(Lorg/wikipedia/media/AvPlayer$Callback;Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V
.end method

.method public abstract stop()V
.end method
