.class public final synthetic Lorg/wikipedia/page/-$$Lambda$PageFragment$SJqq9ZdRz1Y3wmFJgmBV4WQdUoQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/PageFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/PageFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/-$$Lambda$PageFragment$SJqq9ZdRz1Y3wmFJgmBV4WQdUoQ;->f$0:Lorg/wikipedia/page/PageFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/page/-$$Lambda$PageFragment$SJqq9ZdRz1Y3wmFJgmBV4WQdUoQ;->f$0:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0, p1, p2}, Lorg/wikipedia/page/PageFragment;->lambda$verifyBeforeEditingDescription$24$PageFragment(Landroid/content/DialogInterface;I)V

    return-void
.end method
