.class public Lorg/wikipedia/views/LanguageScrollView_ViewBinding;
.super Ljava/lang/Object;
.source "LanguageScrollView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/views/LanguageScrollView;

.field private view7f090267:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/views/LanguageScrollView;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p1}, Lorg/wikipedia/views/LanguageScrollView_ViewBinding;-><init>(Lorg/wikipedia/views/LanguageScrollView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/views/LanguageScrollView;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/wikipedia/views/LanguageScrollView_ViewBinding;->target:Lorg/wikipedia/views/LanguageScrollView;

    .line 30
    const-class v0, Lcom/google/android/material/tabs/TabLayout;

    const v1, 0x7f0901af

    const-string v2, "field \'horizontalLanguageScroll\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lorg/wikipedia/views/LanguageScrollView;->horizontalLanguageScroll:Lcom/google/android/material/tabs/TabLayout;

    const v0, 0x7f090267

    const-string v1, "method \'onLangButtonClick\'"

    .line 31
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 32
    iput-object p2, p0, Lorg/wikipedia/views/LanguageScrollView_ViewBinding;->view7f090267:Landroid/view/View;

    .line 33
    new-instance v0, Lorg/wikipedia/views/LanguageScrollView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/views/LanguageScrollView_ViewBinding$1;-><init>(Lorg/wikipedia/views/LanguageScrollView_ViewBinding;Lorg/wikipedia/views/LanguageScrollView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 44
    iget-object v0, p0, Lorg/wikipedia/views/LanguageScrollView_ViewBinding;->target:Lorg/wikipedia/views/LanguageScrollView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lorg/wikipedia/views/LanguageScrollView_ViewBinding;->target:Lorg/wikipedia/views/LanguageScrollView;

    .line 48
    iput-object v1, v0, Lorg/wikipedia/views/LanguageScrollView;->horizontalLanguageScroll:Lcom/google/android/material/tabs/TabLayout;

    .line 50
    iget-object v0, p0, Lorg/wikipedia/views/LanguageScrollView_ViewBinding;->view7f090267:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iput-object v1, p0, Lorg/wikipedia/views/LanguageScrollView_ViewBinding;->view7f090267:Landroid/view/View;

    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
