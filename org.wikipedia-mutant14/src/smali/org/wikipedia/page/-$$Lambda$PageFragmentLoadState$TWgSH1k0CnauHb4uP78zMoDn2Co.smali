.class public final synthetic Lorg/wikipedia/page/-$$Lambda$PageFragmentLoadState$TWgSH1k0CnauHb4uP78zMoDn2Co;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/PageFragmentLoadState;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/PageFragmentLoadState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/-$$Lambda$PageFragmentLoadState$TWgSH1k0CnauHb4uP78zMoDn2Co;->f$0:Lorg/wikipedia/page/PageFragmentLoadState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/page/-$$Lambda$PageFragmentLoadState$TWgSH1k0CnauHb4uP78zMoDn2Co;->f$0:Lorg/wikipedia/page/PageFragmentLoadState;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/PageFragmentLoadState;->lambda$pageLoadCheckReadingLists$4$PageFragmentLoadState(Ljava/lang/Throwable;)V

    return-void
.end method
