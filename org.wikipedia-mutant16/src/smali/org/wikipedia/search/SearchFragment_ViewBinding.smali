.class public Lorg/wikipedia/search/SearchFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SearchFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/search/SearchFragment;

.field private view7f09036a:Landroid/view/View;

.field private view7f090375:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/search/SearchFragment;Landroid/view/View;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/wikipedia/search/SearchFragment_ViewBinding;->target:Lorg/wikipedia/search/SearchFragment;

    .line 31
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090381

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lorg/wikipedia/search/SearchFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 32
    const-class v0, Lorg/wikipedia/views/CabSearchView;

    const v1, 0x7f090367

    const-string v2, "field \'searchView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/CabSearchView;

    iput-object v0, p1, Lorg/wikipedia/search/SearchFragment;->searchView:Lorg/wikipedia/views/CabSearchView;

    .line 33
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f09037b

    const-string v2, "field \'progressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lorg/wikipedia/search/SearchFragment;->progressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f090375

    const-string v1, "field \'langButtonContainer\' and method \'onLangButtonClick\'"

    .line 34
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 35
    iput-object v0, p1, Lorg/wikipedia/search/SearchFragment;->langButtonContainer:Landroid/view/View;

    .line 36
    iput-object v0, p0, Lorg/wikipedia/search/SearchFragment_ViewBinding;->view7f090375:Landroid/view/View;

    .line 37
    new-instance v1, Lorg/wikipedia/search/SearchFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/search/SearchFragment_ViewBinding$1;-><init>(Lorg/wikipedia/search/SearchFragment_ViewBinding;Lorg/wikipedia/search/SearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090374

    const-string v2, "field \'langButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/search/SearchFragment;->langButton:Landroid/widget/TextView;

    .line 44
    const-class v0, Lorg/wikipedia/views/LanguageScrollView;

    const v1, 0x7f090376

    const-string v2, "field \'languageScrollView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/LanguageScrollView;

    iput-object v0, p1, Lorg/wikipedia/search/SearchFragment;->languageScrollView:Lorg/wikipedia/views/LanguageScrollView;

    const v0, 0x7f090377

    const-string v1, "field \'languageScrollContainer\'"

    .line 45
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/search/SearchFragment;->languageScrollContainer:Landroid/view/View;

    const v0, 0x7f09036a

    const-string v1, "method \'onSearchContainerClick\'"

    .line 46
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 47
    iput-object p2, p0, Lorg/wikipedia/search/SearchFragment_ViewBinding;->view7f09036a:Landroid/view/View;

    .line 48
    new-instance v0, Lorg/wikipedia/search/SearchFragment_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/search/SearchFragment_ViewBinding$2;-><init>(Lorg/wikipedia/search/SearchFragment_ViewBinding;Lorg/wikipedia/search/SearchFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 59
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment_ViewBinding;->target:Lorg/wikipedia/search/SearchFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lorg/wikipedia/search/SearchFragment_ViewBinding;->target:Lorg/wikipedia/search/SearchFragment;

    .line 63
    iput-object v1, v0, Lorg/wikipedia/search/SearchFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 64
    iput-object v1, v0, Lorg/wikipedia/search/SearchFragment;->searchView:Lorg/wikipedia/views/CabSearchView;

    .line 65
    iput-object v1, v0, Lorg/wikipedia/search/SearchFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 66
    iput-object v1, v0, Lorg/wikipedia/search/SearchFragment;->langButtonContainer:Landroid/view/View;

    .line 67
    iput-object v1, v0, Lorg/wikipedia/search/SearchFragment;->langButton:Landroid/widget/TextView;

    .line 68
    iput-object v1, v0, Lorg/wikipedia/search/SearchFragment;->languageScrollView:Lorg/wikipedia/views/LanguageScrollView;

    .line 69
    iput-object v1, v0, Lorg/wikipedia/search/SearchFragment;->languageScrollContainer:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment_ViewBinding;->view7f090375:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iput-object v1, p0, Lorg/wikipedia/search/SearchFragment_ViewBinding;->view7f090375:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment_ViewBinding;->view7f09036a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iput-object v1, p0, Lorg/wikipedia/search/SearchFragment_ViewBinding;->view7f09036a:Landroid/view/View;

    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
