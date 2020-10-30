.class public Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment;
.super Landroidx/fragment/app/Fragment;
.source "DescriptionEditSuccessFragment.java"

# interfaces
.implements Lorg/wikipedia/descriptions/DescriptionEditSuccessView$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment$Callback;
    }
.end annotation


# instance fields
.field successView:Lorg/wikipedia/descriptions/DescriptionEditSuccessView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private callback()Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment$Callback;
    .locals 1

    .line 52
    const-class v0, Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment$Callback;

    invoke-static {p0, v0}, Lorg/wikipedia/activity/FragmentUtil;->getCallback(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment$Callback;

    return-object v0
.end method

.method public static newInstance()Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment;
    .locals 1

    .line 27
    new-instance v0, Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment;

    invoke-direct {v0}, Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 31
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0c004e

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 33
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment;->unbinder:Lbutterknife/Unbinder;

    .line 34
    iget-object p2, p0, Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment;->successView:Lorg/wikipedia/descriptions/DescriptionEditSuccessView;

    invoke-virtual {p2, p0}, Lorg/wikipedia/descriptions/DescriptionEditSuccessView;->setCallback(Lorg/wikipedia/descriptions/DescriptionEditSuccessView$Callback;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 45
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment;->successView:Lorg/wikipedia/descriptions/DescriptionEditSuccessView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/wikipedia/descriptions/DescriptionEditSuccessView;->setCallback(Lorg/wikipedia/descriptions/DescriptionEditSuccessView$Callback;)V

    .line 46
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 47
    iput-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment;->unbinder:Lbutterknife/Unbinder;

    .line 48
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onDismissClick()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment;->callback()Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-direct {p0}, Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment;->callback()Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment$Callback;

    move-result-object v0

    invoke-interface {v0}, Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment$Callback;->onDismissClick()V

    :cond_0
    return-void
.end method
