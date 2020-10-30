.class public Lorg/wikipedia/search/SearchResultsFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SearchResultsFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/search/SearchResultsFragment;

.field private view7f090380:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/search/SearchResultsFragment;Landroid/view/View;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/wikipedia/search/SearchResultsFragment_ViewBinding;->target:Lorg/wikipedia/search/SearchResultsFragment;

    const v0, 0x7f09037d

    const-string v1, "field \'searchResultsDisplay\'"

    .line 27
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsDisplay:Landroid/view/View;

    const v0, 0x7f09037c

    const-string v1, "field \'searchResultsContainer\'"

    .line 28
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsContainer:Landroid/view/View;

    .line 29
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f09037e

    const-string v2, "field \'searchResultsList\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    const-class v0, Lorg/wikipedia/views/WikiErrorView;

    const v1, 0x7f090371

    const-string v2, "field \'searchErrorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    iput-object v0, p1, Lorg/wikipedia/search/SearchResultsFragment;->searchErrorView:Lorg/wikipedia/views/WikiErrorView;

    const v0, 0x7f090380

    const-string v1, "field \'searchSuggestion\' and method \'onSuggestionClick\'"

    .line 31
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 32
    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'searchSuggestion\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/search/SearchResultsFragment;->searchSuggestion:Landroid/widget/TextView;

    .line 33
    iput-object p2, p0, Lorg/wikipedia/search/SearchResultsFragment_ViewBinding;->view7f090380:Landroid/view/View;

    .line 34
    new-instance v0, Lorg/wikipedia/search/SearchResultsFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/search/SearchResultsFragment_ViewBinding$1;-><init>(Lorg/wikipedia/search/SearchResultsFragment_ViewBinding;Lorg/wikipedia/search/SearchResultsFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 45
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment_ViewBinding;->target:Lorg/wikipedia/search/SearchResultsFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lorg/wikipedia/search/SearchResultsFragment_ViewBinding;->target:Lorg/wikipedia/search/SearchResultsFragment;

    .line 49
    iput-object v1, v0, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsDisplay:Landroid/view/View;

    .line 50
    iput-object v1, v0, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsContainer:Landroid/view/View;

    .line 51
    iput-object v1, v0, Lorg/wikipedia/search/SearchResultsFragment;->searchResultsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    iput-object v1, v0, Lorg/wikipedia/search/SearchResultsFragment;->searchErrorView:Lorg/wikipedia/views/WikiErrorView;

    .line 53
    iput-object v1, v0, Lorg/wikipedia/search/SearchResultsFragment;->searchSuggestion:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment_ViewBinding;->view7f090380:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iput-object v1, p0, Lorg/wikipedia/search/SearchResultsFragment_ViewBinding;->view7f090380:Landroid/view/View;

    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
