.class public final synthetic Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditFragment$dQgcbn_0uIhGK44rqmmV37XQmrg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditFragment$dQgcbn_0uIhGK44rqmmV37XQmrg;->f$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditFragment$dQgcbn_0uIhGK44rqmmV37XQmrg;->f$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    check-cast p1, Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {v0, p1}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->lambda$loadPageSummaryIfNeeded$1$DescriptionEditFragment(Lorg/wikipedia/dataclient/page/PageSummary;)V

    return-void
.end method
