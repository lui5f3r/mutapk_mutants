.class public final synthetic Lorg/wikipedia/feed/random/-$$Lambda$RandomCardView$DR1rsQMTfi_Acnbh5MF_m8ivydU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/feed/random/RandomCardView;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/random/RandomCardView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/feed/random/-$$Lambda$RandomCardView$DR1rsQMTfi_Acnbh5MF_m8ivydU;->f$0:Lorg/wikipedia/feed/random/RandomCardView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/feed/random/-$$Lambda$RandomCardView$DR1rsQMTfi_Acnbh5MF_m8ivydU;->f$0:Lorg/wikipedia/feed/random/RandomCardView;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lorg/wikipedia/feed/random/RandomCardView;->lambda$getRandomPage$5$RandomCardView(Ljava/lang/Throwable;)V

    return-void
.end method
