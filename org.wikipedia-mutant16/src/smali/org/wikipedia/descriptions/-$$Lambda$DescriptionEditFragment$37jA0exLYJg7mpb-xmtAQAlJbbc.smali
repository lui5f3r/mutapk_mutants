.class public final synthetic Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditFragment$37jA0exLYJg7mpb-xmtAQAlJbbc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditFragment$37jA0exLYJg7mpb-xmtAQAlJbbc;->f$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    iput-object p2, p0, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditFragment$37jA0exLYJg7mpb-xmtAQAlJbbc;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditFragment$37jA0exLYJg7mpb-xmtAQAlJbbc;->f$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    iget-object v1, p0, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditFragment$37jA0exLYJg7mpb-xmtAQAlJbbc;->f$1:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->lambda$loadPageSummaryIfNeeded$0$DescriptionEditFragment(Landroid/os/Bundle;)V

    return-void
.end method
