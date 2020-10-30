.class public final synthetic Lorg/wikipedia/history/-$$Lambda$HistoryFragment$-GfoyQb7hXv0xlLXYbQZejPiMiE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/history/HistoryFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/history/HistoryFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/history/-$$Lambda$HistoryFragment$-GfoyQb7hXv0xlLXYbQZejPiMiE;->f$0:Lorg/wikipedia/history/HistoryFragment;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/history/-$$Lambda$HistoryFragment$-GfoyQb7hXv0xlLXYbQZejPiMiE;->f$0:Lorg/wikipedia/history/HistoryFragment;

    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryFragment;->lambda$reloadHistoryItems$1$HistoryFragment()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
