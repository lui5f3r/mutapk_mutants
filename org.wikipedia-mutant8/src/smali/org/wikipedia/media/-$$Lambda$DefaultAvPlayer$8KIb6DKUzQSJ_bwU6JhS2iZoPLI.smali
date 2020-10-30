.class public final synthetic Lorg/wikipedia/media/-$$Lambda$DefaultAvPlayer$8KIb6DKUzQSJ_bwU6JhS2iZoPLI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/wikipedia/media/AvPlayer$Callback;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/media/DefaultAvPlayer;

.field public final synthetic f$1:Lorg/wikipedia/media/AvPlayer$Callback;

.field public final synthetic f$2:Lorg/wikipedia/media/AvPlayer$ErrorCallback;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/media/DefaultAvPlayer;Lorg/wikipedia/media/AvPlayer$Callback;Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/media/-$$Lambda$DefaultAvPlayer$8KIb6DKUzQSJ_bwU6JhS2iZoPLI;->f$0:Lorg/wikipedia/media/DefaultAvPlayer;

    iput-object p2, p0, Lorg/wikipedia/media/-$$Lambda$DefaultAvPlayer$8KIb6DKUzQSJ_bwU6JhS2iZoPLI;->f$1:Lorg/wikipedia/media/AvPlayer$Callback;

    iput-object p3, p0, Lorg/wikipedia/media/-$$Lambda$DefaultAvPlayer$8KIb6DKUzQSJ_bwU6JhS2iZoPLI;->f$2:Lorg/wikipedia/media/AvPlayer$ErrorCallback;

    return-void
.end method


# virtual methods
.method public final onSuccess()V
    .locals 3

    iget-object v0, p0, Lorg/wikipedia/media/-$$Lambda$DefaultAvPlayer$8KIb6DKUzQSJ_bwU6JhS2iZoPLI;->f$0:Lorg/wikipedia/media/DefaultAvPlayer;

    iget-object v1, p0, Lorg/wikipedia/media/-$$Lambda$DefaultAvPlayer$8KIb6DKUzQSJ_bwU6JhS2iZoPLI;->f$1:Lorg/wikipedia/media/AvPlayer$Callback;

    iget-object v2, p0, Lorg/wikipedia/media/-$$Lambda$DefaultAvPlayer$8KIb6DKUzQSJ_bwU6JhS2iZoPLI;->f$2:Lorg/wikipedia/media/AvPlayer$ErrorCallback;

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/media/DefaultAvPlayer;->lambda$load$0$DefaultAvPlayer(Lorg/wikipedia/media/AvPlayer$Callback;Lorg/wikipedia/media/AvPlayer$ErrorCallback;)V

    return-void
.end method
