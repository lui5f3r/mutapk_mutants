.class public final synthetic Lorg/wikipedia/random/-$$Lambda$RandomFragment$mxrr0dg5NNkO4F_h9Ic8QUKEZQo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/random/RandomFragment;

.field public final synthetic f$1:Lorg/wikipedia/page/PageTitle;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/random/RandomFragment;Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/random/-$$Lambda$RandomFragment$mxrr0dg5NNkO4F_h9Ic8QUKEZQo;->f$0:Lorg/wikipedia/random/RandomFragment;

    iput-object p2, p0, Lorg/wikipedia/random/-$$Lambda$RandomFragment$mxrr0dg5NNkO4F_h9Ic8QUKEZQo;->f$1:Lorg/wikipedia/page/PageTitle;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/random/-$$Lambda$RandomFragment$mxrr0dg5NNkO4F_h9Ic8QUKEZQo;->f$0:Lorg/wikipedia/random/RandomFragment;

    iget-object v1, p0, Lorg/wikipedia/random/-$$Lambda$RandomFragment$mxrr0dg5NNkO4F_h9Ic8QUKEZQo;->f$1:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/random/RandomFragment;->lambda$onMovePageToList$2$RandomFragment(Lorg/wikipedia/page/PageTitle;Landroid/content/DialogInterface;)V

    return-void
.end method
