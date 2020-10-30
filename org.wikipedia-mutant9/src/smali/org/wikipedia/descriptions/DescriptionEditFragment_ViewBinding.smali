.class public Lorg/wikipedia/descriptions/DescriptionEditFragment_ViewBinding;
.super Ljava/lang/Object;
.source "DescriptionEditFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/descriptions/DescriptionEditFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;Landroid/view/View;)V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment_ViewBinding;->target:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    .line 20
    const-class v0, Lorg/wikipedia/descriptions/DescriptionEditView;

    const v1, 0x7f090165

    const-string v2, "field \'editView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/descriptions/DescriptionEditView;

    iput-object p2, p1, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editView:Lorg/wikipedia/descriptions/DescriptionEditView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment_ViewBinding;->target:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 28
    iput-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment_ViewBinding;->target:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    .line 30
    iput-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editView:Lorg/wikipedia/descriptions/DescriptionEditView;

    return-void

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
