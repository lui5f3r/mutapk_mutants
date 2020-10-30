.class public Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView_ViewBinding;
.super Ljava/lang/Object;
.source "DescriptionEditRevertHelpView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView;


# direct methods
.method public constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p1}, Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView_ViewBinding;-><init>(Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView;Landroid/view/View;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView_ViewBinding;->target:Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView;

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090463

    const-string v2, "field \'helpText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView;->helpText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 33
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView_ViewBinding;->target:Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView_ViewBinding;->target:Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView;

    .line 37
    iput-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView;->helpText:Landroid/widget/TextView;

    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
