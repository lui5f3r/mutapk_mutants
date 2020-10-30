.class public abstract Lorg/wikipedia/onboarding/OnboardingFragment;
.super Landroidx/fragment/app/Fragment;
.source "OnboardingFragment.java"

# interfaces
.implements Lorg/wikipedia/BackPressedHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/onboarding/OnboardingFragment$PageChangeCallback;,
        Lorg/wikipedia/onboarding/OnboardingFragment$Callback;
    }
.end annotation


# instance fields
.field private adapter:Landroidx/viewpager2/adapter/FragmentStateAdapter;

.field doneButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field forwardButton:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private pageChangeCallback:Lorg/wikipedia/onboarding/OnboardingFragment$PageChangeCallback;

.field pageIndicatorView:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field skipButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private unbinder:Lbutterknife/Unbinder;

.field viewPager:Landroidx/viewpager2/widget/ViewPager2;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 35
    new-instance v0, Lorg/wikipedia/onboarding/OnboardingFragment$PageChangeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/onboarding/OnboardingFragment$PageChangeCallback;-><init>(Lorg/wikipedia/onboarding/OnboardingFragment;Lorg/wikipedia/onboarding/OnboardingFragment$1;)V

    iput-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->pageChangeCallback:Lorg/wikipedia/onboarding/OnboardingFragment$PageChangeCallback;

    return-void
.end method

.method static synthetic access$100(Lorg/wikipedia/onboarding/OnboardingFragment;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/wikipedia/onboarding/OnboardingFragment;->updateButtonState()V

    return-void
.end method

.method static synthetic access$200(Lorg/wikipedia/onboarding/OnboardingFragment;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/wikipedia/onboarding/OnboardingFragment;->updatePageIndicatorContentDescription()V

    return-void
.end method

.method private atLastPage()Z
    .locals 3

    .line 110
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private finish()V
    .locals 1

    .line 104
    invoke-virtual {p0}, Lorg/wikipedia/onboarding/OnboardingFragment;->callback()Lorg/wikipedia/onboarding/OnboardingFragment$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lorg/wikipedia/onboarding/OnboardingFragment;->callback()Lorg/wikipedia/onboarding/OnboardingFragment$Callback;

    move-result-object v0

    invoke-interface {v0}, Lorg/wikipedia/onboarding/OnboardingFragment$Callback;->onComplete()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onCreateView$0(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    return-void
.end method

.method private updateButtonState()V
    .locals 3

    .line 118
    invoke-direct {p0}, Lorg/wikipedia/onboarding/OnboardingFragment;->atLastPage()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->skipButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->forwardButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->doneButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->skipButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->forwardButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->doneButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updatePageIndicatorContentDescription()V
    .locals 5

    .line 114
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->pageIndicatorView:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    iget-object v2, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->adapter:Landroidx/viewpager2/adapter/FragmentStateAdapter;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f100070

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method advancePage()V
    .locals 4

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 95
    iget-object v2, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    .line 96
    iget-object v3, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v3, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method protected callback()Lorg/wikipedia/onboarding/OnboardingFragment$Callback;
    .locals 1

    .line 100
    const-class v0, Lorg/wikipedia/onboarding/OnboardingFragment$Callback;

    invoke-static {p0, v0}, Lorg/wikipedia/activity/FragmentUtil;->getCallback(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/onboarding/OnboardingFragment$Callback;

    return-object v0
.end method

.method protected abstract getAdapter()Landroidx/viewpager2/adapter/FragmentStateAdapter;
.end method

.method protected abstract getDoneButtonText()I
.end method

.method public onBackPressed()Z
    .locals 3

    .line 71
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 46
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0c0058

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 48
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->unbinder:Lbutterknife/Unbinder;

    .line 49
    invoke-virtual {p0}, Lorg/wikipedia/onboarding/OnboardingFragment;->getAdapter()Landroidx/viewpager2/adapter/FragmentStateAdapter;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->adapter:Landroidx/viewpager2/adapter/FragmentStateAdapter;

    .line 50
    iget-object p3, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p3, p2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 51
    iget-object p2, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p3, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->pageChangeCallback:Lorg/wikipedia/onboarding/OnboardingFragment$PageChangeCallback;

    invoke-virtual {p2, p3}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 53
    new-instance p2, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object p3, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->pageIndicatorView:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    sget-object v1, Lorg/wikipedia/onboarding/-$$Lambda$OnboardingFragment$2sFmKakVDA9L1LixjpaCKN3mnZE;->INSTANCE:Lorg/wikipedia/onboarding/-$$Lambda$OnboardingFragment$2sFmKakVDA9L1LixjpaCKN3mnZE;

    invoke-direct {p2, p3, v0, v1}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 55
    iget-object p2, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->doneButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lorg/wikipedia/onboarding/OnboardingFragment;->getDoneButtonText()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(I)V

    .line 56
    invoke-direct {p0}, Lorg/wikipedia/onboarding/OnboardingFragment;->updateButtonState()V

    .line 57
    invoke-direct {p0}, Lorg/wikipedia/onboarding/OnboardingFragment;->updatePageIndicatorContentDescription()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    .line 62
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 63
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v2, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->pageChangeCallback:Lorg/wikipedia/onboarding/OnboardingFragment$PageChangeCallback;

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 64
    iput-object v1, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->adapter:Landroidx/viewpager2/adapter/FragmentStateAdapter;

    .line 65
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 66
    iput-object v1, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->unbinder:Lbutterknife/Unbinder;

    .line 67
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method onForwardClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 79
    invoke-direct {p0}, Lorg/wikipedia/onboarding/OnboardingFragment;->atLastPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Lorg/wikipedia/onboarding/OnboardingFragment;->finish()V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/onboarding/OnboardingFragment;->advancePage()V

    :goto_0
    return-void
.end method

.method onSkipClick()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 87
    invoke-direct {p0}, Lorg/wikipedia/onboarding/OnboardingFragment;->finish()V

    return-void
.end method
