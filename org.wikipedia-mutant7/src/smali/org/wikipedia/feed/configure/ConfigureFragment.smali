.class public Lorg/wikipedia/feed/configure/ConfigureFragment;
.super Landroidx/fragment/app/Fragment;
.source "ConfigureFragment.java"

# interfaces
.implements Lorg/wikipedia/feed/configure/ConfigureItemView$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/feed/configure/ConfigureFragment$RearrangeableItemTouchHelperCallback;,
        Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemAdapter;,
        Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemHolder;
    }
.end annotation


# instance fields
.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private funnel:Lorg/wikipedia/analytics/FeedConfigureFunnel;

.field private itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private orderedContentTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/FeedContentType;",
            ">;"
        }
    .end annotation
.end field

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->orderedContentTypes:Ljava/util/List;

    .line 53
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method static synthetic access$100(Lorg/wikipedia/feed/configure/ConfigureFragment;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->orderedContentTypes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lorg/wikipedia/feed/configure/ConfigureFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/wikipedia/feed/configure/ConfigureFragment;->updateItemOrder()V

    return-void
.end method

.method static synthetic access$300(Lorg/wikipedia/feed/configure/ConfigureFragment;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method private static addDomainNamesAsLangCodes(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 105
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    new-instance v1, Lorg/wikipedia/dataclient/WikiSite;

    invoke-direct {v1, v0}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static isLimitedToDomains(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 101
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static synthetic lambda$is2xjx9aT3OrL8C4FS3szHgVby0(Lorg/wikipedia/feed/configure/ConfigureFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/wikipedia/feed/configure/ConfigureFragment;->prepareContentTypeList()V

    return-void
.end method

.method static synthetic lambda$onCreateView$0(Lorg/wikipedia/feed/configure/FeedAvailability;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 74
    sget-object v0, Lorg/wikipedia/feed/FeedContentType;->NEWS:Lorg/wikipedia/feed/FeedContentType;

    invoke-virtual {v0}, Lorg/wikipedia/feed/FeedContentType;->getLangCodesSupported()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    invoke-virtual {p0}, Lorg/wikipedia/feed/configure/FeedAvailability;->news()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/feed/configure/ConfigureFragment;->isLimitedToDomains(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lorg/wikipedia/feed/FeedContentType;->NEWS:Lorg/wikipedia/feed/FeedContentType;

    invoke-virtual {v0}, Lorg/wikipedia/feed/FeedContentType;->getLangCodesSupported()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/wikipedia/feed/configure/FeedAvailability;->news()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wikipedia/feed/configure/ConfigureFragment;->addDomainNamesAsLangCodes(Ljava/util/List;Ljava/util/List;)V

    .line 78
    :cond_0
    sget-object v0, Lorg/wikipedia/feed/FeedContentType;->ON_THIS_DAY:Lorg/wikipedia/feed/FeedContentType;

    invoke-virtual {v0}, Lorg/wikipedia/feed/FeedContentType;->getLangCodesSupported()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 79
    invoke-virtual {p0}, Lorg/wikipedia/feed/configure/FeedAvailability;->onThisDay()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/feed/configure/ConfigureFragment;->isLimitedToDomains(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    sget-object v0, Lorg/wikipedia/feed/FeedContentType;->ON_THIS_DAY:Lorg/wikipedia/feed/FeedContentType;

    invoke-virtual {v0}, Lorg/wikipedia/feed/FeedContentType;->getLangCodesSupported()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/wikipedia/feed/configure/FeedAvailability;->onThisDay()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wikipedia/feed/configure/ConfigureFragment;->addDomainNamesAsLangCodes(Ljava/util/List;Ljava/util/List;)V

    .line 82
    :cond_1
    sget-object v0, Lorg/wikipedia/feed/FeedContentType;->TRENDING_ARTICLES:Lorg/wikipedia/feed/FeedContentType;

    invoke-virtual {v0}, Lorg/wikipedia/feed/FeedContentType;->getLangCodesSupported()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 83
    invoke-virtual {p0}, Lorg/wikipedia/feed/configure/FeedAvailability;->mostRead()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/feed/configure/ConfigureFragment;->isLimitedToDomains(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    sget-object v0, Lorg/wikipedia/feed/FeedContentType;->TRENDING_ARTICLES:Lorg/wikipedia/feed/FeedContentType;

    invoke-virtual {v0}, Lorg/wikipedia/feed/FeedContentType;->getLangCodesSupported()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/wikipedia/feed/configure/FeedAvailability;->mostRead()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wikipedia/feed/configure/ConfigureFragment;->addDomainNamesAsLangCodes(Ljava/util/List;Ljava/util/List;)V

    .line 86
    :cond_2
    sget-object v0, Lorg/wikipedia/feed/FeedContentType;->FEATURED_ARTICLE:Lorg/wikipedia/feed/FeedContentType;

    invoke-virtual {v0}, Lorg/wikipedia/feed/FeedContentType;->getLangCodesSupported()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    invoke-virtual {p0}, Lorg/wikipedia/feed/configure/FeedAvailability;->featuredArticle()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/feed/configure/ConfigureFragment;->isLimitedToDomains(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    sget-object v0, Lorg/wikipedia/feed/FeedContentType;->FEATURED_ARTICLE:Lorg/wikipedia/feed/FeedContentType;

    invoke-virtual {v0}, Lorg/wikipedia/feed/FeedContentType;->getLangCodesSupported()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/wikipedia/feed/configure/FeedAvailability;->featuredArticle()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wikipedia/feed/configure/ConfigureFragment;->addDomainNamesAsLangCodes(Ljava/util/List;Ljava/util/List;)V

    .line 90
    :cond_3
    sget-object v0, Lorg/wikipedia/feed/FeedContentType;->FEATURED_IMAGE:Lorg/wikipedia/feed/FeedContentType;

    invoke-virtual {v0}, Lorg/wikipedia/feed/FeedContentType;->getLangCodesSupported()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 91
    invoke-virtual {p0}, Lorg/wikipedia/feed/configure/FeedAvailability;->featuredPicture()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/feed/configure/ConfigureFragment;->isLimitedToDomains(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    sget-object v0, Lorg/wikipedia/feed/FeedContentType;->FEATURED_IMAGE:Lorg/wikipedia/feed/FeedContentType;

    invoke-virtual {v0}, Lorg/wikipedia/feed/FeedContentType;->getLangCodesSupported()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/wikipedia/feed/configure/FeedAvailability;->featuredPicture()Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/wikipedia/feed/configure/ConfigureFragment;->addDomainNamesAsLangCodes(Ljava/util/List;Ljava/util/List;)V

    .line 94
    :cond_4
    invoke-static {}, Lorg/wikipedia/feed/FeedContentType;->saveState()V

    return-void
.end method

.method static synthetic lambda$prepareContentTypeList$1(Lorg/wikipedia/feed/FeedContentType;Lorg/wikipedia/feed/FeedContentType;)I
    .locals 0

    .line 171
    invoke-virtual {p0}, Lorg/wikipedia/feed/FeedContentType;->getOrder()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1}, Lorg/wikipedia/feed/FeedContentType;->getOrder()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static newInstance()Lorg/wikipedia/feed/configure/ConfigureFragment;
    .locals 1

    .line 56
    new-instance v0, Lorg/wikipedia/feed/configure/ConfigureFragment;

    invoke-direct {v0}, Lorg/wikipedia/feed/configure/ConfigureFragment;-><init>()V

    return-object v0
.end method

.method private prepareContentTypeList()V
    .locals 6

    .line 168
    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->orderedContentTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 169
    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->orderedContentTypes:Ljava/util/List;

    invoke-static {}, Lorg/wikipedia/feed/FeedContentType;->values()[Lorg/wikipedia/feed/FeedContentType;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 170
    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->orderedContentTypes:Ljava/util/List;

    sget-object v1, Lorg/wikipedia/feed/configure/-$$Lambda$ConfigureFragment$Aqc8lYFCXmQ5TZopCdSX4a5TGFI;->INSTANCE:Lorg/wikipedia/feed/configure/-$$Lambda$ConfigureFragment$Aqc8lYFCXmQ5TZopCdSX4a5TGFI;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 173
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->orderedContentTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 175
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 176
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/feed/FeedContentType;

    .line 177
    invoke-virtual {v2}, Lorg/wikipedia/feed/FeedContentType;->showInConfig()Z

    move-result v3

    if-nez v3, :cond_1

    .line 178
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 181
    :cond_1
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lorg/wikipedia/feed/FeedContentType;->SUGGESTED_EDITS:Lorg/wikipedia/feed/FeedContentType;

    if-ne v2, v3, :cond_2

    .line 182
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual {v2}, Lorg/wikipedia/feed/FeedContentType;->getLangCodesSupported()Ljava/util/List;

    move-result-object v2

    .line 186
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 190
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 191
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v3, 0x1

    :cond_5
    if-nez v3, :cond_0

    .line 197
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 200
    :cond_6
    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setupRecyclerView()V
    .locals 5

    .line 204
    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 205
    new-instance v0, Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemAdapter;-><init>(Lorg/wikipedia/feed/configure/ConfigureFragment;Lorg/wikipedia/feed/configure/ConfigureFragment$1;)V

    .line 206
    iget-object v1, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 207
    iget-object v1, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 208
    iget-object v1, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lorg/wikipedia/views/DrawableItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040261

    invoke-direct {v2, v3, v4}, Lorg/wikipedia/views/DrawableItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 210
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v2, Lorg/wikipedia/feed/configure/ConfigureFragment$RearrangeableItemTouchHelperCallback;

    invoke-direct {v2, p0, v0}, Lorg/wikipedia/feed/configure/ConfigureFragment$RearrangeableItemTouchHelperCallback;-><init>(Lorg/wikipedia/feed/configure/ConfigureFragment;Lorg/wikipedia/feed/configure/ConfigureFragment$ConfigureItemAdapter;)V

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v1, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 211
    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private touch()V
    .locals 2

    .line 233
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method private updateItemOrder()V
    .locals 2

    .line 226
    invoke-direct {p0}, Lorg/wikipedia/feed/configure/ConfigureFragment;->touch()V

    const/4 v0, 0x0

    .line 227
    :goto_0
    iget-object v1, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->orderedContentTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 228
    iget-object v1, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->orderedContentTypes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/feed/FeedContentType;

    invoke-virtual {v1, v0}, Lorg/wikipedia/feed/FeedContentType;->setOrder(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 112
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 113
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCheckedChanged(Lorg/wikipedia/feed/FeedContentType;Z)V
    .locals 0

    .line 216
    invoke-direct {p0}, Lorg/wikipedia/feed/configure/ConfigureFragment;->touch()V

    .line 217
    invoke-virtual {p1, p2}, Lorg/wikipedia/feed/FeedContentType;->setEnabled(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0d0006

    .line 136
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const p3, 0x7f0c0050

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 62
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->unbinder:Lbutterknife/Unbinder;

    .line 63
    invoke-direct {p0}, Lorg/wikipedia/feed/configure/ConfigureFragment;->setupRecyclerView()V

    .line 65
    new-instance p2, Lorg/wikipedia/analytics/FeedConfigureFunnel;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p3

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "invokeSource"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p2, p3, v0, v1}, Lorg/wikipedia/analytics/FeedConfigureFunnel;-><init>(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/dataclient/WikiSite;I)V

    iput-object p2, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->funnel:Lorg/wikipedia/analytics/FeedConfigureFunnel;

    .line 68
    iget-object p2, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance p3, Lorg/wikipedia/dataclient/WikiSite;

    const-string v0, "wikimedia.org"

    invoke-direct {p3, v0}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object p3

    invoke-interface {p3}, Lorg/wikipedia/dataclient/RestService;->getFeedAvailability()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    .line 69
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    .line 70
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    new-instance v0, Lorg/wikipedia/feed/configure/-$$Lambda$ConfigureFragment$is2xjx9aT3OrL8C4FS3szHgVby0;

    invoke-direct {v0, p0}, Lorg/wikipedia/feed/configure/-$$Lambda$ConfigureFragment$is2xjx9aT3OrL8C4FS3szHgVby0;-><init>(Lorg/wikipedia/feed/configure/ConfigureFragment;)V

    .line 71
    invoke-virtual {p3, v0}, Lio/reactivex/rxjava3/core/Observable;->doAfterTerminate(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    sget-object v0, Lorg/wikipedia/feed/configure/-$$Lambda$ConfigureFragment$NFkq_T15zdkrhER65tXMA3NSLN0;->INSTANCE:Lorg/wikipedia/feed/configure/-$$Lambda$ConfigureFragment$NFkq_T15zdkrhER65tXMA3NSLN0;

    sget-object v1, Lorg/wikipedia/feed/configure/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;->INSTANCE:Lorg/wikipedia/feed/configure/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;

    .line 72
    invoke-virtual {p3, v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p3

    .line 68
    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    .line 124
    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 125
    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->unbinder:Lbutterknife/Unbinder;

    .line 127
    iget-object v1, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->funnel:Lorg/wikipedia/analytics/FeedConfigureFunnel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->orderedContentTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    iget-object v1, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->funnel:Lorg/wikipedia/analytics/FeedConfigureFunnel;

    iget-object v2, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->orderedContentTypes:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/wikipedia/analytics/FeedConfigureFunnel;->done(Ljava/util/List;)V

    .line 130
    :cond_0
    iput-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->funnel:Lorg/wikipedia/analytics/FeedConfigureFunnel;

    .line 131
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onLanguagesChanged(Lorg/wikipedia/feed/FeedContentType;)V
    .locals 0

    .line 222
    invoke-direct {p0}, Lorg/wikipedia/feed/configure/ConfigureFragment;->touch()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 141
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 163
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 143
    :pswitch_0
    invoke-static {}, Lorg/wikipedia/feed/FeedContentType;->values()[Lorg/wikipedia/feed/FeedContentType;

    move-result-object p1

    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p1, v1

    .line 144
    invoke-virtual {v3, v2}, Lorg/wikipedia/feed/FeedContentType;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/feed/configure/ConfigureFragment;->touch()V

    .line 147
    iget-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return v2

    .line 157
    :pswitch_1
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->resetFeedCustomizations()V

    .line 158
    invoke-static {}, Lorg/wikipedia/feed/FeedContentType;->restoreState()V

    .line 159
    invoke-direct {p0}, Lorg/wikipedia/feed/configure/ConfigureFragment;->prepareContentTypeList()V

    .line 160
    invoke-direct {p0}, Lorg/wikipedia/feed/configure/ConfigureFragment;->touch()V

    return v2

    .line 150
    :pswitch_2
    invoke-static {}, Lorg/wikipedia/feed/FeedContentType;->values()[Lorg/wikipedia/feed/FeedContentType;

    move-result-object p1

    array-length v0, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    aget-object v4, p1, v3

    .line 151
    invoke-virtual {v4, v1}, Lorg/wikipedia/feed/FeedContentType;->setEnabled(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 153
    :cond_1
    invoke-direct {p0}, Lorg/wikipedia/feed/configure/ConfigureFragment;->touch()V

    .line 154
    iget-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return v2

    :pswitch_data_0
    .packed-switch 0x7f09022a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .line 118
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 119
    invoke-static {}, Lorg/wikipedia/feed/FeedContentType;->saveState()V

    return-void
.end method
