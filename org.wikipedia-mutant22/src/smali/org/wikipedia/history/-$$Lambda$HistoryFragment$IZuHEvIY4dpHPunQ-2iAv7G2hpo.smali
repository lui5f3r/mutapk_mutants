.class public final synthetic Lorg/wikipedia/history/-$$Lambda$HistoryFragment$IZuHEvIY4dpHPunQ-2iAv7G2hpo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/history/HistoryFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/history/HistoryFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/history/-$$Lambda$HistoryFragment$IZuHEvIY4dpHPunQ-2iAv7G2hpo;->f$0:Lorg/wikipedia/history/HistoryFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/history/-$$Lambda$HistoryFragment$IZuHEvIY4dpHPunQ-2iAv7G2hpo;->f$0:Lorg/wikipedia/history/HistoryFragment;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lorg/wikipedia/history/HistoryFragment;->lambda$reloadHistoryItems$2$HistoryFragment(Ljava/lang/Throwable;)V

    return-void
.end method
