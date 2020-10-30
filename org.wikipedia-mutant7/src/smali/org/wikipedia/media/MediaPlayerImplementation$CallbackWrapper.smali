.class abstract Lorg/wikipedia/media/MediaPlayerImplementation$CallbackWrapper;
.super Ljava/lang/Object;
.source "MediaPlayerImplementation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/media/MediaPlayerImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CallbackWrapper"
.end annotation


# instance fields
.field private final callback:Lorg/wikipedia/media/AvPlayer$Callback;


# direct methods
.method constructor <init>(Lorg/wikipedia/media/AvPlayer$Callback;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lorg/wikipedia/media/MediaPlayerImplementation$CallbackWrapper;->callback:Lorg/wikipedia/media/AvPlayer$Callback;

    return-void
.end method


# virtual methods
.method protected onSuccess()V
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/wikipedia/media/MediaPlayerImplementation$CallbackWrapper;->callback:Lorg/wikipedia/media/AvPlayer$Callback;

    invoke-interface {v0}, Lorg/wikipedia/media/AvPlayer$Callback;->onSuccess()V

    return-void
.end method
