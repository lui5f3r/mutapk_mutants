.class abstract Lorg/wikipedia/media/MediaPlayerImplementation$ErrorCallbackWrapper;
.super Ljava/lang/Object;
.source "MediaPlayerImplementation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/media/MediaPlayerImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ErrorCallbackWrapper"
.end annotation


# instance fields
.field private final errorCallback:Lorg/wikipedia/media/AvPlayer$ErrorCallback;


# direct methods
.method constructor <init>(Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lorg/wikipedia/media/MediaPlayerImplementation$ErrorCallbackWrapper;->errorCallback:Lorg/wikipedia/media/AvPlayer$ErrorCallback;

    return-void
.end method


# virtual methods
.method protected onError()V
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/wikipedia/media/MediaPlayerImplementation$ErrorCallbackWrapper;->errorCallback:Lorg/wikipedia/media/AvPlayer$ErrorCallback;

    invoke-interface {v0}, Lorg/wikipedia/media/AvPlayer$ErrorCallback;->onError()V

    return-void
.end method
