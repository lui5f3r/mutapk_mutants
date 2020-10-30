.class public final synthetic Lorg/wikipedia/feed/random/-$$Lambda$RandomCardView$UVRs-3NbTdnlkTKtQEDTNsXVRFM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/feed/random/-$$Lambda$RandomCardView$UVRs-3NbTdnlkTKtQEDTNsXVRFM;->f$0:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/feed/random/-$$Lambda$RandomCardView$UVRs-3NbTdnlkTKtQEDTNsXVRFM;->f$0:Ljava/lang/Throwable;

    invoke-static {v0}, Lorg/wikipedia/feed/random/RandomCardView;->lambda$null$1(Ljava/lang/Throwable;)Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    return-object v0
.end method
