.class public Lorg/wikipedia/page/references/ReferenceDialog_ViewBinding;
.super Ljava/lang/Object;
.source "ReferenceDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/page/references/ReferenceDialog;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/references/ReferenceDialog;Landroid/view/View;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/wikipedia/page/references/ReferenceDialog_ViewBinding;->target:Lorg/wikipedia/page/references/ReferenceDialog;

    .line 23
    const-class v0, Landroidx/viewpager2/widget/ViewPager2;

    const v1, 0x7f09033e

    const-string v2, "field \'referencesViewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p1, Lorg/wikipedia/page/references/ReferenceDialog;->referencesViewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 24
    const-class v0, Lcom/google/android/material/tabs/TabLayout;

    const v1, 0x7f0902cf

    const-string v2, "field \'pageIndicatorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lorg/wikipedia/page/references/ReferenceDialog;->pageIndicatorView:Lcom/google/android/material/tabs/TabLayout;

    const v0, 0x7f0901c6

    const-string v1, "field \'pageIndicatorDivider\'"

    .line 25
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/page/references/ReferenceDialog;->pageIndicatorDivider:Landroid/view/View;

    .line 26
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090340

    const-string v2, "field \'titleTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lorg/wikipedia/page/references/ReferenceDialog;->titleTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 32
    iget-object v0, p0, Lorg/wikipedia/page/references/ReferenceDialog_ViewBinding;->target:Lorg/wikipedia/page/references/ReferenceDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lorg/wikipedia/page/references/ReferenceDialog_ViewBinding;->target:Lorg/wikipedia/page/references/ReferenceDialog;

    .line 36
    iput-object v1, v0, Lorg/wikipedia/page/references/ReferenceDialog;->referencesViewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 37
    iput-object v1, v0, Lorg/wikipedia/page/references/ReferenceDialog;->pageIndicatorView:Lcom/google/android/material/tabs/TabLayout;

    .line 38
    iput-object v1, v0, Lorg/wikipedia/page/references/ReferenceDialog;->pageIndicatorDivider:Landroid/view/View;

    .line 39
    iput-object v1, v0, Lorg/wikipedia/page/references/ReferenceDialog;->titleTextView:Landroid/widget/TextView;

    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
