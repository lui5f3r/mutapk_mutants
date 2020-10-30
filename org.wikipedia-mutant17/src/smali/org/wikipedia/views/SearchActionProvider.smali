.class public Lorg/wikipedia/views/SearchActionProvider;
.super Landroidx/core/view/ActionProvider;
.source "SearchActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/views/SearchActionProvider$Callback;
    }
.end annotation


# instance fields
.field private callback:Lorg/wikipedia/views/SearchActionProvider$Callback;

.field private context:Landroid/content/Context;

.field private searchHintString:Ljava/lang/String;

.field searchView:Lorg/wikipedia/views/CabSearchView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/wikipedia/views/SearchActionProvider$Callback;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroidx/core/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p1, p0, Lorg/wikipedia/views/SearchActionProvider;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lorg/wikipedia/views/SearchActionProvider;->searchHintString:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lorg/wikipedia/views/SearchActionProvider;->callback:Lorg/wikipedia/views/SearchActionProvider$Callback;

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/views/SearchActionProvider;)Lorg/wikipedia/views/SearchActionProvider$Callback;
    .locals 0

    .line 20
    iget-object p0, p0, Lorg/wikipedia/views/SearchActionProvider;->callback:Lorg/wikipedia/views/SearchActionProvider$Callback;

    return-object p0
.end method


# virtual methods
.method public synthetic lambda$onCreateActionView$0$SearchActionProvider(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 72
    iget-object p1, p0, Lorg/wikipedia/views/SearchActionProvider;->callback:Lorg/wikipedia/views/SearchActionProvider$Callback;

    invoke-interface {p1}, Lorg/wikipedia/views/SearchActionProvider$Callback;->onQueryTextFocusChange()V

    :cond_0
    return-void
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 5

    .line 47
    iget-object v0, p0, Lorg/wikipedia/views/SearchActionProvider;->context:Landroid/content/Context;

    const v1, 0x7f0c006e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 48
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 49
    iget-object v1, p0, Lorg/wikipedia/views/SearchActionProvider;->searchView:Lorg/wikipedia/views/CabSearchView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 50
    iget-object v1, p0, Lorg/wikipedia/views/SearchActionProvider;->searchView:Lorg/wikipedia/views/CabSearchView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    .line 51
    iget-object v1, p0, Lorg/wikipedia/views/SearchActionProvider;->searchView:Lorg/wikipedia/views/CabSearchView;

    const v4, 0x7fffffff

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    .line 52
    iget-object v1, p0, Lorg/wikipedia/views/SearchActionProvider;->searchView:Lorg/wikipedia/views/CabSearchView;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->setInputType(I)V

    .line 53
    iget-object v1, p0, Lorg/wikipedia/views/SearchActionProvider;->searchView:Lorg/wikipedia/views/CabSearchView;

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 54
    iget-object v1, p0, Lorg/wikipedia/views/SearchActionProvider;->searchView:Lorg/wikipedia/views/CabSearchView;

    iget-object v2, p0, Lorg/wikipedia/views/SearchActionProvider;->searchHintString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, p0, Lorg/wikipedia/views/SearchActionProvider;->searchView:Lorg/wikipedia/views/CabSearchView;

    invoke-virtual {p0}, Landroidx/core/view/ActionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f04027b

    invoke-static {v2, v4}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/wikipedia/views/CabSearchView;->setSearchHintTextColor(I)V

    .line 56
    iget-object v1, p0, Lorg/wikipedia/views/SearchActionProvider;->searchView:Lorg/wikipedia/views/CabSearchView;

    new-instance v2, Lorg/wikipedia/views/SearchActionProvider$1;

    invoke-direct {v2, p0}, Lorg/wikipedia/views/SearchActionProvider$1;-><init>(Lorg/wikipedia/views/SearchActionProvider;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 70
    iget-object v1, p0, Lorg/wikipedia/views/SearchActionProvider;->searchView:Lorg/wikipedia/views/CabSearchView;

    new-instance v2, Lorg/wikipedia/views/-$$Lambda$SearchActionProvider$0H3ym61ZrR-j16Jh5yU7AOpob3Y;

    invoke-direct {v2, p0}, Lorg/wikipedia/views/-$$Lambda$SearchActionProvider$0H3ym61ZrR-j16Jh5yU7AOpob3Y;-><init>(Lorg/wikipedia/views/SearchActionProvider;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 77
    iget-object v1, p0, Lorg/wikipedia/views/SearchActionProvider;->searchView:Lorg/wikipedia/views/CabSearchView;

    const v2, 0x7f09037a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 78
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 80
    iget-object v1, p0, Lorg/wikipedia/views/SearchActionProvider;->searchView:Lorg/wikipedia/views/CabSearchView;

    invoke-static {v1}, Lorg/wikipedia/util/DeviceUtil;->showSoftKeyboard(Landroid/view/View;)V

    return-object v0
.end method

.method public overridesItemVisibility()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
