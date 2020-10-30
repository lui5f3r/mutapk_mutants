.class public Lorg/wikipedia/feed/mostread/MostReadFragment;
.super Landroidx/fragment/app/Fragment;
.source "MostReadFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/feed/mostread/MostReadFragment$Callback;,
        Lorg/wikipedia/feed/mostread/MostReadFragment$RecyclerAdapter;
    }
.end annotation


# instance fields
.field private bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

.field mostReadLinks:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 45
    new-instance v0, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-direct {v0}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/feed/mostread/MostReadFragment;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    return-void
.end method

.method static synthetic access$100(Lorg/wikipedia/feed/mostread/MostReadFragment;)Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/wikipedia/feed/mostread/MostReadFragment;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    return-object p0
.end method

.method private getAppCompatActivity()Landroidx/appcompat/app/AppCompatActivity;
    .locals 1

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    return-object v0
.end method

.method private initRecycler()V
    .locals 4

    .line 81
    iget-object v0, p0, Lorg/wikipedia/feed/mostread/MostReadFragment;->mostReadLinks:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 82
    iget-object v0, p0, Lorg/wikipedia/feed/mostread/MostReadFragment;->mostReadLinks:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lorg/wikipedia/views/DrawableItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040261

    invoke-direct {v1, v2, v3}, Lorg/wikipedia/views/DrawableItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 83
    iget-object v0, p0, Lorg/wikipedia/feed/mostread/MostReadFragment;->mostReadLinks:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public static newInstance(Lorg/wikipedia/feed/mostread/MostReadItemCard;)Lorg/wikipedia/feed/mostread/MostReadFragment;
    .locals 3

    .line 50
    new-instance v0, Lorg/wikipedia/feed/mostread/MostReadFragment;

    invoke-direct {v0}, Lorg/wikipedia/feed/mostread/MostReadFragment;-><init>()V

    .line 51
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 52
    invoke-static {p0}, Lorg/wikipedia/json/GsonMarshaller;->marshal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "item"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0c0055

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 62
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/feed/mostread/MostReadFragment;->unbinder:Lbutterknife/Unbinder;

    .line 63
    const-class p2, Lorg/wikipedia/feed/mostread/MostReadListCard;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p3

    const-string v1, "item"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/wikipedia/json/GsonUnmarshaller;->unmarshal(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/feed/mostread/MostReadListCard;

    .line 65
    invoke-direct {p0}, Lorg/wikipedia/feed/mostread/MostReadFragment;->getAppCompatActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p3

    const v1, 0x7f10044e

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/wikipedia/feed/mostread/MostReadListCard;->subtitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p2}, Lorg/wikipedia/feed/model/WikiSiteCard;->wikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p3

    invoke-virtual {p3}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lorg/wikipedia/util/L10nUtil;->setConditionalLayoutDirection(Landroid/view/View;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lorg/wikipedia/feed/mostread/MostReadFragment;->initRecycler()V

    .line 69
    iget-object p3, p0, Lorg/wikipedia/feed/mostread/MostReadFragment;->mostReadLinks:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lorg/wikipedia/feed/mostread/MostReadFragment$RecyclerAdapter;

    invoke-virtual {p2}, Lorg/wikipedia/feed/model/ListCard;->items()Ljava/util/List;

    move-result-object p2

    new-instance v1, Lorg/wikipedia/feed/mostread/MostReadFragment$Callback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/wikipedia/feed/mostread/MostReadFragment$Callback;-><init>(Lorg/wikipedia/feed/mostread/MostReadFragment;Lorg/wikipedia/feed/mostread/MostReadFragment$1;)V

    invoke-direct {v0, p2, v1}, Lorg/wikipedia/feed/mostread/MostReadFragment$RecyclerAdapter;-><init>(Ljava/util/List;Lorg/wikipedia/feed/mostread/MostReadFragment$Callback;)V

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/wikipedia/feed/mostread/MostReadFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lorg/wikipedia/feed/mostread/MostReadFragment;->unbinder:Lbutterknife/Unbinder;

    .line 77
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method
