.class public Lorg/wikipedia/main/MainActivity;
.super Lorg/wikipedia/activity/SingleFragmentActivity;
.source "MainActivity.java"

# interfaces
.implements Lorg/wikipedia/main/MainFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/activity/SingleFragmentActivity<",
        "Lorg/wikipedia/main/MainFragment;",
        ">;",
        "Lorg/wikipedia/main/MainFragment$Callback;"
    }
.end annotation


# instance fields
.field private controlNavTabInFragment:Z

.field private currentTooltip:Lcom/skydoves/balloon/Balloon;

.field private imageZoomHelper:Lorg/wikipedia/views/ImageZoomHelper;

.field mainContainer:Lorg/wikipedia/views/LinearLayoutTouchIntercept;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field wordMark:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;-><init>()V

    return-void
.end method

.method private dismissCurrentTooltip()V
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/wikipedia/main/MainActivity;->currentTooltip:Lcom/skydoves/balloon/Balloon;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/skydoves/balloon/Balloon;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lorg/wikipedia/main/MainActivity;->currentTooltip:Lcom/skydoves/balloon/Balloon;

    return-void
.end method

.method public static newIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/wikipedia/main/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method protected clearToolbarElevation()V
    .locals 2

    .line 219
    invoke-virtual {p0}, Lorg/wikipedia/main/MainActivity;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setElevation(F)V

    return-void
.end method

.method protected bridge synthetic createFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/wikipedia/main/MainActivity;->createFragment()Lorg/wikipedia/main/MainFragment;

    move-result-object v0

    return-object v0
.end method

.method protected createFragment()Lorg/wikipedia/main/MainFragment;
    .locals 1

    .line 132
    invoke-static {}, Lorg/wikipedia/main/MainFragment;->newInstance()Lorg/wikipedia/main/MainFragment;

    move-result-object v0

    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/wikipedia/main/MainActivity;->imageZoomHelper:Lorg/wikipedia/views/ImageZoomHelper;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/ImageZoomHelper;->onDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected getLayout()I
    .locals 1

    const v0, 0x7f0c0024

    return v0
.end method

.method public getToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/wikipedia/main/MainActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public isCurrentFragmentSelected(Landroidx/fragment/app/Fragment;)Z
    .locals 1

    .line 211
    invoke-virtual {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/main/MainFragment;

    invoke-virtual {v0}, Lorg/wikipedia/main/MainFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic lambda$onCreate$0$MainActivity(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 69
    invoke-direct {p0}, Lorg/wikipedia/main/MainActivity;->dismissCurrentTooltip()V

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$onPrepareOptionsMenu$1$MainActivity(Landroid/view/View;)V
    .locals 1

    .line 110
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 111
    invoke-static {p0}, Lorg/wikipedia/page/PageActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-static {p0}, Lorg/wikipedia/page/tabs/TabActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x3d

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 195
    invoke-virtual {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/main/MainFragment;

    invoke-virtual {v0}, Lorg/wikipedia/main/MainFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 198
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 63
    invoke-super {p0, p1}, Lorg/wikipedia/activity/SingleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 65
    invoke-static {p0}, Lorg/wikipedia/appshortcuts/AppShortcuts;->setShortcuts(Landroid/content/Context;)V

    .line 66
    new-instance v0, Lorg/wikipedia/views/ImageZoomHelper;

    invoke-direct {v0, p0}, Lorg/wikipedia/views/ImageZoomHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/wikipedia/main/MainActivity;->imageZoomHelper:Lorg/wikipedia/views/ImageZoomHelper;

    .line 68
    iget-object v0, p0, Lorg/wikipedia/main/MainActivity;->mainContainer:Lorg/wikipedia/views/LinearLayoutTouchIntercept;

    new-instance v1, Lorg/wikipedia/main/-$$Lambda$MainActivity$TWBZL5ncSDdsI9lF82AuKX2pXfc;

    invoke-direct {v1, p0}, Lorg/wikipedia/main/-$$Lambda$MainActivity$TWBZL5ncSDdsI9lF82AuKX2pXfc;-><init>(Lorg/wikipedia/main/MainActivity;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/LinearLayoutTouchIntercept;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 73
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isInitialOnboardingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 76
    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->setMultilingualSearchTutorialEnabled(Z)V

    .line 80
    invoke-static {p0}, Lorg/wikipedia/onboarding/InitialOnboardingActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x39

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    const p1, 0x7f0402a1

    .line 83
    invoke-static {p0, p1}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->setNavigationBarColor(I)V

    .line 84
    invoke-virtual {p0}, Lorg/wikipedia/main/MainActivity;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 85
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 90
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/main/MainActivity;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 96
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onGoOffline()V
    .locals 1

    .line 185
    invoke-virtual {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/main/MainFragment;

    invoke-virtual {v0}, Lorg/wikipedia/main/MainFragment;->onGoOffline()V

    return-void
.end method

.method protected onGoOnline()V
    .locals 1

    .line 190
    invoke-virtual {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/main/MainFragment;

    invoke-virtual {v0}, Lorg/wikipedia/main/MainFragment;->onGoOnline()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 178
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 179
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 180
    invoke-virtual {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/main/MainFragment;

    invoke-virtual {v0, p1}, Lorg/wikipedia/main/MainFragment;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 102
    invoke-virtual {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/main/MainFragment;

    invoke-virtual {v0}, Lorg/wikipedia/main/MainFragment;->requestUpdateToolbarElevation()V

    const v0, 0x7f090255

    .line 103
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 104
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/main/MainFragment;

    invoke-virtual {v0}, Lorg/wikipedia/main/MainFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 108
    new-instance v0, Lorg/wikipedia/views/TabCountsView;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lorg/wikipedia/views/TabCountsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    new-instance v3, Lorg/wikipedia/main/-$$Lambda$MainActivity$wkoHb_3uEtaQCFtY0cGS7nPY_Dc;

    invoke-direct {v3, p0}, Lorg/wikipedia/main/-$$Lambda$MainActivity$wkoHb_3uEtaQCFtY0cGS7nPY_Dc;-><init>(Lorg/wikipedia/main/MainActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {v0}, Lorg/wikipedia/views/TabCountsView;->updateTabCount()V

    const v3, 0x7f1001a1

    .line 117
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 118
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    new-array p1, v2, [Landroid/view/View;

    aput-object v0, p1, v1

    .line 120
    invoke-static {p1}, Lorg/wikipedia/util/FeedbackUtil;->setButtonLongPressToast([Landroid/view/View;)V

    goto :goto_1

    .line 105
    :cond_1
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    return v2
.end method

.method public onSupportActionModeFinished(Landroidx/appcompat/view/ActionMode;)V
    .locals 1

    .line 163
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSupportActionModeFinished(Landroidx/appcompat/view/ActionMode;)V

    .line 164
    invoke-virtual {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/main/MainFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/wikipedia/main/MainFragment;->setBottomNavVisible(Z)V

    return-void
.end method

.method public onSupportActionModeStarted(Landroidx/appcompat/view/ActionMode;)V
    .locals 1

    .line 155
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSupportActionModeStarted(Landroidx/appcompat/view/ActionMode;)V

    .line 156
    iget-boolean p1, p0, Lorg/wikipedia/main/MainActivity;->controlNavTabInFragment:Z

    if-nez p1, :cond_0

    .line 157
    invoke-virtual {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/main/MainFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/wikipedia/main/MainFragment;->setBottomNavVisible(Z)V

    :cond_0
    return-void
.end method

.method public onTabChanged(Lorg/wikipedia/navtab/NavTab;)V
    .locals 4

    .line 137
    sget-object v0, Lorg/wikipedia/navtab/NavTab;->EXPLORE:Lorg/wikipedia/navtab/NavTab;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 138
    iget-object p1, p0, Lorg/wikipedia/main/MainActivity;->wordMark:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    iget-object p1, p0, Lorg/wikipedia/main/MainActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 140
    iput-boolean v1, p0, Lorg/wikipedia/main/MainActivity;->controlNavTabInFragment:Z

    goto :goto_0

    .line 142
    :cond_0
    sget-object v0, Lorg/wikipedia/navtab/NavTab;->SEARCH:Lorg/wikipedia/navtab/NavTab;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->shouldShowSearchTabTooltip()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/main/MainFragment;

    iget-object v0, v0, Lorg/wikipedia/main/MainFragment;->tabLayout:Lorg/wikipedia/navtab/NavTabLayout;

    sget-object v3, Lorg/wikipedia/navtab/NavTab;->SEARCH:Lorg/wikipedia/navtab/NavTab;

    invoke-virtual {v3}, Lorg/wikipedia/navtab/NavTab;->id()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f10038e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2, v1}, Lorg/wikipedia/util/FeedbackUtil;->showTooltip(Landroid/view/View;Ljava/lang/CharSequence;ZZ)Lcom/skydoves/balloon/Balloon;

    .line 144
    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->setShowSearchTabTooltip(Z)V

    .line 146
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/main/MainActivity;->wordMark:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lorg/wikipedia/main/MainActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Lorg/wikipedia/navtab/NavTab;->text()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 148
    iput-boolean v2, p0, Lorg/wikipedia/main/MainActivity;->controlNavTabInFragment:Z

    .line 150
    :goto_0
    invoke-virtual {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/main/MainFragment;

    invoke-virtual {p1}, Lorg/wikipedia/main/MainFragment;->requestUpdateToolbarElevation()V

    return-void
.end method

.method public setCurrentTooltip(Lcom/skydoves/balloon/Balloon;)V
    .locals 0

    .line 230
    invoke-direct {p0}, Lorg/wikipedia/main/MainActivity;->dismissCurrentTooltip()V

    .line 231
    iput-object p1, p0, Lorg/wikipedia/main/MainActivity;->currentTooltip:Lcom/skydoves/balloon/Balloon;

    return-void
.end method

.method protected setToolbarElevationDefault()V
    .locals 2

    .line 215
    invoke-virtual {p0}, Lorg/wikipedia/main/MainActivity;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f0701b9

    invoke-static {v1}, Lorg/wikipedia/util/DimenUtil;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lorg/wikipedia/util/DimenUtil;->dpToPx(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setElevation(F)V

    return-void
.end method

.method public updateToolbarElevation(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p0}, Lorg/wikipedia/main/MainActivity;->setToolbarElevationDefault()V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/main/MainActivity;->clearToolbarElevation()V

    :goto_0
    return-void
.end method
