.class public final synthetic Lorg/wikipedia/edit/summaries/-$$Lambda$EditSummaryFragment$aklG6ELpfR6DdeC7RUu0DtyM9dQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/edit/summaries/EditSummaryFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/edit/summaries/EditSummaryFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/edit/summaries/-$$Lambda$EditSummaryFragment$aklG6ELpfR6DdeC7RUu0DtyM9dQ;->f$0:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/edit/summaries/-$$Lambda$EditSummaryFragment$aklG6ELpfR6DdeC7RUu0DtyM9dQ;->f$0:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    invoke-virtual {v0, p1, p2, p3}, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->lambda$onCreateView$0$EditSummaryFragment(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
