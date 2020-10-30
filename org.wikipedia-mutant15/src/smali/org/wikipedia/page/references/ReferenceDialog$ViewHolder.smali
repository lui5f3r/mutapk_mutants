.class Lorg/wikipedia/page/references/ReferenceDialog$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ReferenceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/page/references/ReferenceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private pagerIdText:Landroid/widget/TextView;

.field private pagerReferenceText:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/wikipedia/page/references/ReferenceDialog;


# direct methods
.method constructor <init>(Lorg/wikipedia/page/references/ReferenceDialog;Landroid/view/View;)V
    .locals 2

    .line 121
    iput-object p1, p0, Lorg/wikipedia/page/references/ReferenceDialog$ViewHolder;->this$0:Lorg/wikipedia/page/references/ReferenceDialog;

    .line 122
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09033f

    .line 123
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/wikipedia/page/references/ReferenceDialog$ViewHolder;->pagerReferenceText:Landroid/widget/TextView;

    .line 124
    new-instance v1, Lorg/wikipedia/page/LinkMovementMethodExt;

    invoke-virtual {p1}, Lorg/wikipedia/page/references/ReferenceDialog;->callback()Lorg/wikipedia/page/references/ReferenceDialog$Callback;

    move-result-object p1

    invoke-interface {p1}, Lorg/wikipedia/page/references/ReferenceDialog$Callback;->getLinkHandler()Lorg/wikipedia/page/LinkHandler;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandlerWithText;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const p1, 0x7f09033c

    .line 125
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/wikipedia/page/references/ReferenceDialog$ViewHolder;->pagerIdText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method bindItem(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/wikipedia/page/references/ReferenceDialog$ViewHolder;->pagerIdText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object p1, p0, Lorg/wikipedia/page/references/ReferenceDialog$ViewHolder;->pagerReferenceText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
