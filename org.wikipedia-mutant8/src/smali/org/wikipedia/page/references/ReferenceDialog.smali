.class public Lorg/wikipedia/page/references/ReferenceDialog;
.super Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;
.source "ReferenceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/page/references/ReferenceDialog$ReferencesAdapter;,
        Lorg/wikipedia/page/references/ReferenceDialog$ViewHolder;,
        Lorg/wikipedia/page/references/ReferenceDialog$Callback;
    }
.end annotation


# instance fields
.field pageIndicatorDivider:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field pageIndicatorView:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field referencesViewPager:Landroidx/viewpager2/widget/ViewPager2;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field titleTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/page/references/ReferenceDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lorg/wikipedia/page/references/ReferenceDialog;->processLinkTextWithAlphaReferences(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onCreateView$0(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    return-void
.end method

.method private processLinkTextWithAlphaReferences(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "lower"

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "alpha "

    .line 93
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "]"

    const-string v3, ""

    if-eqz v1, :cond_0

    const-string v1, " "

    .line 94
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 95
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object p1, p1, v1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->getBase26String(I)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public callback()Lorg/wikipedia/page/references/ReferenceDialog$Callback;
    .locals 1

    .line 163
    const-class v0, Lorg/wikipedia/page/references/ReferenceDialog$Callback;

    invoke-static {p0, v0}, Lorg/wikipedia/activity/FragmentUtil;->getCallback(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/references/ReferenceDialog$Callback;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 105
    new-instance p1, Lorg/wikipedia/page/references/ReferenceDialog$1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getTheme()I

    move-result v1

    invoke-direct {p1, p0, v0, v1}, Lorg/wikipedia/page/references/ReferenceDialog$1;-><init>(Lorg/wikipedia/page/references/ReferenceDialog;Landroid/content/Context;I)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const p2, 0x7f0c0060

    const/4 p3, 0x0

    .line 55
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 56
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/page/references/ReferenceDialog;->unbinder:Lbutterknife/Unbinder;

    .line 57
    invoke-virtual {p0}, Lorg/wikipedia/page/references/ReferenceDialog;->callback()Lorg/wikipedia/page/references/ReferenceDialog$Callback;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/wikipedia/page/references/ReferenceDialog;->callback()Lorg/wikipedia/page/references/ReferenceDialog$Callback;

    move-result-object p2

    invoke-interface {p2}, Lorg/wikipedia/page/references/ReferenceDialog$Callback;->getReferencesGroup()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iget-object p2, p0, Lorg/wikipedia/page/references/ReferenceDialog;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f100372

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-virtual {p3, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object p2, p0, Lorg/wikipedia/page/references/ReferenceDialog;->referencesViewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 64
    iget-object p2, p0, Lorg/wikipedia/page/references/ReferenceDialog;->referencesViewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance p3, Lorg/wikipedia/page/references/ReferenceDialog$ReferencesAdapter;

    invoke-virtual {p0}, Lorg/wikipedia/page/references/ReferenceDialog;->callback()Lorg/wikipedia/page/references/ReferenceDialog$Callback;

    move-result-object v0

    invoke-interface {v0}, Lorg/wikipedia/page/references/ReferenceDialog$Callback;->getReferencesGroup()Ljava/util/List;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lorg/wikipedia/page/references/ReferenceDialog$ReferencesAdapter;-><init>(Lorg/wikipedia/page/references/ReferenceDialog;Ljava/util/List;)V

    invoke-virtual {p2, p3}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 65
    new-instance p2, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object p3, p0, Lorg/wikipedia/page/references/ReferenceDialog;->pageIndicatorView:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, p0, Lorg/wikipedia/page/references/ReferenceDialog;->referencesViewPager:Landroidx/viewpager2/widget/ViewPager2;

    sget-object v2, Lorg/wikipedia/page/references/-$$Lambda$ReferenceDialog$2EHrW-_ne8zU7mk7t_sbNSa1hKU;->INSTANCE:Lorg/wikipedia/page/references/-$$Lambda$ReferenceDialog$2EHrW-_ne8zU7mk7t_sbNSa1hKU;

    invoke-direct {p2, p3, v0, v2}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 66
    iget-object p2, p0, Lorg/wikipedia/page/references/ReferenceDialog;->referencesViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Lorg/wikipedia/page/references/ReferenceDialog;->callback()Lorg/wikipedia/page/references/ReferenceDialog$Callback;

    move-result-object p3

    invoke-interface {p3}, Lorg/wikipedia/page/references/ReferenceDialog$Callback;->getSelectedReferenceIndex()I

    move-result p3

    invoke-virtual {p2, p3, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 68
    invoke-virtual {p0}, Lorg/wikipedia/page/references/ReferenceDialog;->callback()Lorg/wikipedia/page/references/ReferenceDialog$Callback;

    move-result-object p2

    invoke-interface {p2}, Lorg/wikipedia/page/references/ReferenceDialog$Callback;->getLinkHandler()Lorg/wikipedia/page/LinkHandler;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/page/LinkHandler;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/wikipedia/util/L10nUtil;->setConditionalLayoutDirection(Landroid/view/View;Ljava/lang/String;)V

    return-object p1

    .line 58
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 86
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 87
    iget-object v0, p0, Lorg/wikipedia/page/references/ReferenceDialog;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 74
    invoke-super {p0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;->onStart()V

    .line 75
    invoke-virtual {p0}, Lorg/wikipedia/page/references/ReferenceDialog;->callback()Lorg/wikipedia/page/references/ReferenceDialog$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/wikipedia/page/references/ReferenceDialog;->callback()Lorg/wikipedia/page/references/ReferenceDialog$Callback;

    move-result-object v0

    invoke-interface {v0}, Lorg/wikipedia/page/references/ReferenceDialog$Callback;->getReferencesGroup()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/wikipedia/page/references/ReferenceDialog;->callback()Lorg/wikipedia/page/references/ReferenceDialog$Callback;

    move-result-object v0

    invoke-interface {v0}, Lorg/wikipedia/page/references/ReferenceDialog$Callback;->getReferencesGroup()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lorg/wikipedia/page/references/ReferenceDialog;->pageIndicatorView:Lcom/google/android/material/tabs/TabLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lorg/wikipedia/page/references/ReferenceDialog;->pageIndicatorDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    .line 80
    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getDisplayHeightPx()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    :goto_0
    return-void
.end method
