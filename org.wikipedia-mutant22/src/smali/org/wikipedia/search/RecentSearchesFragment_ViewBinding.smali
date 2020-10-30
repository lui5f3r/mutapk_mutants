.class public Lorg/wikipedia/search/RecentSearchesFragment_ViewBinding;
.super Ljava/lang/Object;
.source "RecentSearchesFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/search/RecentSearchesFragment;

.field private view7f090058:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/search/RecentSearchesFragment;Landroid/view/View;)V
    .locals 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/wikipedia/search/RecentSearchesFragment_ViewBinding;->target:Lorg/wikipedia/search/RecentSearchesFragment;

    .line 27
    const-class v0, Landroid/widget/ListView;

    const v1, 0x7f090338

    const-string v2, "field \'recentSearchesList\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lorg/wikipedia/search/RecentSearchesFragment;->recentSearchesList:Landroid/widget/ListView;

    const v0, 0x7f09036c

    const-string v1, "field \'searchEmptyView\'"

    .line 28
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/search/RecentSearchesFragment;->searchEmptyView:Landroid/view/View;

    const v0, 0x7f090336

    const-string v1, "field \'recentSearchesContainer\'"

    .line 29
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/search/RecentSearchesFragment;->recentSearchesContainer:Landroid/view/View;

    const v0, 0x7f090335

    const-string v1, "field \'recentSearches\'"

    .line 30
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/search/RecentSearchesFragment;->recentSearches:Landroid/view/View;

    .line 31
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090337

    const-string v2, "field \'deleteButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lorg/wikipedia/search/RecentSearchesFragment;->deleteButton:Landroid/widget/ImageView;

    const v0, 0x7f090058

    const-string v1, "field \'addLanguagesButton\' and method \'onAddLangButtonClick\'"

    .line 32
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 33
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'addLanguagesButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/search/RecentSearchesFragment;->addLanguagesButton:Landroid/widget/TextView;

    .line 34
    iput-object v1, p0, Lorg/wikipedia/search/RecentSearchesFragment_ViewBinding;->view7f090058:Landroid/view/View;

    .line 35
    new-instance v0, Lorg/wikipedia/search/RecentSearchesFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/search/RecentSearchesFragment_ViewBinding$1;-><init>(Lorg/wikipedia/search/RecentSearchesFragment_ViewBinding;Lorg/wikipedia/search/RecentSearchesFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09036e

    const-string v2, "field \'emptyViewMessage\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lorg/wikipedia/search/RecentSearchesFragment;->emptyViewMessage:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 47
    iget-object v0, p0, Lorg/wikipedia/search/RecentSearchesFragment_ViewBinding;->target:Lorg/wikipedia/search/RecentSearchesFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lorg/wikipedia/search/RecentSearchesFragment_ViewBinding;->target:Lorg/wikipedia/search/RecentSearchesFragment;

    .line 51
    iput-object v1, v0, Lorg/wikipedia/search/RecentSearchesFragment;->recentSearchesList:Landroid/widget/ListView;

    .line 52
    iput-object v1, v0, Lorg/wikipedia/search/RecentSearchesFragment;->searchEmptyView:Landroid/view/View;

    .line 53
    iput-object v1, v0, Lorg/wikipedia/search/RecentSearchesFragment;->recentSearchesContainer:Landroid/view/View;

    .line 54
    iput-object v1, v0, Lorg/wikipedia/search/RecentSearchesFragment;->recentSearches:Landroid/view/View;

    .line 55
    iput-object v1, v0, Lorg/wikipedia/search/RecentSearchesFragment;->deleteButton:Landroid/widget/ImageView;

    .line 56
    iput-object v1, v0, Lorg/wikipedia/search/RecentSearchesFragment;->addLanguagesButton:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lorg/wikipedia/search/RecentSearchesFragment;->emptyViewMessage:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lorg/wikipedia/search/RecentSearchesFragment_ViewBinding;->view7f090058:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iput-object v1, p0, Lorg/wikipedia/search/RecentSearchesFragment_ViewBinding;->view7f090058:Landroid/view/View;

    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
