.class public Lorg/wikipedia/page/tabs/TabActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "TabActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/page/tabs/TabActivity$TabListener;
    }
.end annotation


# static fields
.field private static FIRST_TAB_BITMAP:Landroid/graphics/Bitmap; = null

.field private static final LAUNCHED_FROM_PAGE_ACTIVITY:Ljava/lang/String; = "launchedFromPageActivity"

.field private static final MAX_CACHED_BMP_SIZE:I = 0x320

.field public static final RESULT_LOAD_FROM_BACKSTACK:I = 0xa

.field public static final RESULT_NEW_TAB:I = 0xb


# instance fields
.field private app:Lorg/wikipedia/WikipediaApp;

.field private bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

.field private cancelled:Z

.field private funnel:Lorg/wikipedia/analytics/TabFunnel;

.field private launchedFromPageActivity:Z

.field tabCountsView:Lorg/wikipedia/views/TabCountsView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private tabListener:Lorg/wikipedia/page/tabs/TabActivity$TabListener;

.field tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tabToolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private tabUpdatedTimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 71
    new-instance v0, Lorg/wikipedia/page/tabs/TabActivity$TabListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/page/tabs/TabActivity$TabListener;-><init>(Lorg/wikipedia/page/tabs/TabActivity;Lorg/wikipedia/page/tabs/TabActivity$1;)V

    iput-object v0, p0, Lorg/wikipedia/page/tabs/TabActivity;->tabListener:Lorg/wikipedia/page/tabs/TabActivity$TabListener;

    .line 72
    new-instance v0, Lorg/wikipedia/analytics/TabFunnel;

    invoke-direct {v0}, Lorg/wikipedia/analytics/TabFunnel;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/page/tabs/TabActivity;->funnel:Lorg/wikipedia/analytics/TabFunnel;

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lorg/wikipedia/page/tabs/TabActivity;->cancelled:Z

    .line 75
    new-instance v0, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-direct {v0}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/page/tabs/TabActivity;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    return-void
.end method

.method static synthetic access$100()Landroid/graphics/Bitmap;
    .locals 1

    .line 58
    sget-object v0, Lorg/wikipedia/page/tabs/TabActivity;->FIRST_TAB_BITMAP:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200(Lorg/wikipedia/page/tabs/TabActivity;)Z
    .locals 0

    .line 58
    invoke-direct {p0}, Lorg/wikipedia/page/tabs/TabActivity;->topTabLeadImageEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/wikipedia/page/tabs/TabActivity;)Lorg/wikipedia/WikipediaApp;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/wikipedia/page/tabs/TabActivity;->app:Lorg/wikipedia/WikipediaApp;

    return-object p0
.end method

.method static synthetic access$402(Lorg/wikipedia/page/tabs/TabActivity;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lorg/wikipedia/page/tabs/TabActivity;->cancelled:Z

    return p1
.end method

.method static synthetic access$500(Lorg/wikipedia/page/tabs/TabActivity;)J
    .locals 2

    .line 58
    iget-wide v0, p0, Lorg/wikipedia/page/tabs/TabActivity;->tabUpdatedTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$502(Lorg/wikipedia/page/tabs/TabActivity;J)J
    .locals 0

    .line 58
    iput-wide p1, p0, Lorg/wikipedia/page/tabs/TabActivity;->tabUpdatedTimeMillis:J

    return-wide p1
.end method

.method static synthetic access$600(Lorg/wikipedia/page/tabs/TabActivity;)Lorg/wikipedia/analytics/TabFunnel;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/wikipedia/page/tabs/TabActivity;->funnel:Lorg/wikipedia/analytics/TabFunnel;

    return-object p0
.end method

.method static synthetic access$700(Lorg/wikipedia/page/tabs/TabActivity;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lorg/wikipedia/page/tabs/TabActivity;->launchedFromPageActivity:Z

    return p0
.end method

.method static synthetic access$800(Lorg/wikipedia/page/tabs/TabActivity;Lde/mrapp/android/tabswitcher/Tab;ILorg/wikipedia/page/tabs/Tab;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/wikipedia/page/tabs/TabActivity;->showUndoSnackbar(Lde/mrapp/android/tabswitcher/Tab;ILorg/wikipedia/page/tabs/Tab;I)V

    return-void
.end method

.method static synthetic access$900(Lorg/wikipedia/page/tabs/TabActivity;[Lde/mrapp/android/tabswitcher/Tab;Ljava/util/List;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/page/tabs/TabActivity;->showUndoAllSnackbar([Lde/mrapp/android/tabswitcher/Tab;Ljava/util/List;)V

    return-void
.end method

.method public static captureFirstTabBitmap(Landroid/view/View;)V
    .locals 7

    .line 80
    invoke-static {}, Lorg/wikipedia/page/tabs/TabActivity;->clearFirstTabBitmap()V

    const/4 v0, 0x0

    .line 83
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 85
    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const/high16 v3, 0x80000

    .line 86
    invoke-virtual {p0, v3}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 92
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/16 v6, 0x320

    if-le v4, v5, :cond_1

    .line 94
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/lit16 v4, v4, 0x320

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit16 v4, v4, 0x320

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/2addr v4, v5

    move v6, v4

    const/16 v4, 0x320

    .line 99
    :goto_0
    invoke-static {v3, v6, v4, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :catch_0
    :cond_3
    sput-object v0, Lorg/wikipedia/page/tabs/TabActivity;->FIRST_TAB_BITMAP:Landroid/graphics/Bitmap;

    return-void
.end method

.method private static clearFirstTabBitmap()V
    .locals 1

    .line 111
    sget-object v0, Lorg/wikipedia/page/tabs/TabActivity;->FIRST_TAB_BITMAP:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    sget-object v0, Lorg/wikipedia/page/tabs/TabActivity;->FIRST_TAB_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 115
    sput-object v0, Lorg/wikipedia/page/tabs/TabActivity;->FIRST_TAB_BITMAP:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private goToMainTab(Lorg/wikipedia/navtab/NavTab;)V
    .locals 3

    .line 399
    invoke-static {p0}, Lorg/wikipedia/main/MainActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 400
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "returnToMain"

    const/4 v2, 0x1

    .line 401
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 402
    invoke-virtual {p1}, Lorg/wikipedia/navtab/NavTab;->code()I

    move-result p1

    const-string v1, "goToMainTab"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 399
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 403
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static newIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/wikipedia/page/tabs/TabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static newIntentFromPageActivity(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/wikipedia/page/tabs/TabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "launchedFromPageActivity"

    const/4 v1, 0x1

    .line 125
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private openNewTab()V
    .locals 2

    const/4 v0, 0x0

    .line 306
    iput-boolean v0, p0, Lorg/wikipedia/page/tabs/TabActivity;->cancelled:Z

    .line 307
    iget-object v0, p0, Lorg/wikipedia/page/tabs/TabActivity;->funnel:Lorg/wikipedia/analytics/TabFunnel;

    iget-object v1, p0, Lorg/wikipedia/page/tabs/TabActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/analytics/TabFunnel;->logCreateNew(I)V

    .line 308
    iget-boolean v0, p0, Lorg/wikipedia/page/tabs/TabActivity;->launchedFromPageActivity:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    .line 309
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    .line 311
    :cond_0
    invoke-static {p0}, Lorg/wikipedia/page/PageActivity;->newIntentForNewTab(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 313
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private saveTabsToList()V
    .locals 4

    .line 288
    iget-object v0, p0, Lorg/wikipedia/page/tabs/TabActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object v0

    .line 289
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 290
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/page/tabs/Tab;

    .line 291
    invoke-virtual {v2}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPositionTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/tabs/TabActivity;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lorg/wikipedia/Constants$InvokeSource;->TABS_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 294
    invoke-static {v1, v3}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->newInstance(Ljava/util/List;Lorg/wikipedia/Constants$InvokeSource;)Lorg/wikipedia/readinglist/AddToReadingListDialog;

    move-result-object v1

    .line 293
    invoke-virtual {v0, v2, v1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method private showUndoAllSnackbar([Lde/mrapp/android/tabswitcher/Tab;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lde/mrapp/android/tabswitcher/Tab;",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/tabs/Tab;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f100033

    .line 329
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/wikipedia/util/FeedbackUtil;->LENGTH_DEFAULT:I

    invoke-static {p0, v0, v1}, Lorg/wikipedia/util/FeedbackUtil;->makeSnackbar(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 330
    new-instance v1, Lorg/wikipedia/page/tabs/-$$Lambda$TabActivity$hV12U3dU7Y2PKjtUXFBnJN638q0;

    invoke-direct {v1, p0, p2, p1}, Lorg/wikipedia/page/tabs/-$$Lambda$TabActivity$hV12U3dU7Y2PKjtUXFBnJN638q0;-><init>(Lorg/wikipedia/page/tabs/TabActivity;Ljava/util/List;[Lde/mrapp/android/tabswitcher/Tab;)V

    const p1, 0x7f10032a

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 335
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method private showUndoSnackbar(Lde/mrapp/android/tabswitcher/Tab;ILorg/wikipedia/page/tabs/Tab;I)V
    .locals 9

    .line 317
    invoke-virtual {p3}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPositionTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f10042a

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 320
    invoke-virtual {p3}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPositionTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/wikipedia/util/FeedbackUtil;->LENGTH_DEFAULT:I

    invoke-static {p0, v0, v1}, Lorg/wikipedia/util/FeedbackUtil;->makeSnackbar(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    const v1, 0x7f10032a

    .line 321
    new-instance v8, Lorg/wikipedia/page/tabs/-$$Lambda$TabActivity$PGzx3jwfGki1_FWdtwZE7VLtv0c;

    move-object v2, v8

    move-object v3, p0

    move v4, p4

    move-object v5, p3

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/page/tabs/-$$Lambda$TabActivity$PGzx3jwfGki1_FWdtwZE7VLtv0c;-><init>(Lorg/wikipedia/page/tabs/TabActivity;ILorg/wikipedia/page/tabs/Tab;Lde/mrapp/android/tabswitcher/Tab;I)V

    invoke-virtual {v0, v1, v8}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 325
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method private topTabLeadImageEnabled()Z
    .locals 4

    .line 298
    iget-object v0, p0, Lorg/wikipedia/page/tabs/TabActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 299
    iget-object v0, p0, Lorg/wikipedia/page/tabs/TabActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lorg/wikipedia/page/tabs/TabActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/tabs/Tab;

    invoke-virtual {v0}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPositionTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->isMainPage()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getThumbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public synthetic lambda$onOptionsItemSelected$0$TabActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 261
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->clear()V

    const/4 p1, 0x0

    .line 262
    iput-boolean p1, p0, Lorg/wikipedia/page/tabs/TabActivity;->cancelled:Z

    return-void
.end method

.method public synthetic lambda$showUndoAllSnackbar$2$TabActivity(Ljava/util/List;[Lde/mrapp/android/tabswitcher/Tab;Landroid/view/View;)V
    .locals 0

    .line 331
    iget-object p3, p0, Lorg/wikipedia/page/tabs/TabActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p3}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 332
    iget-object p3, p0, Lorg/wikipedia/page/tabs/TabActivity;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {p3, p2}, Lde/mrapp/android/tabswitcher/TabSwitcher;->addAllTabs([Lde/mrapp/android/tabswitcher/Tab;)V

    .line 333
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public synthetic lambda$showUndoSnackbar$1$TabActivity(ILorg/wikipedia/page/tabs/Tab;Lde/mrapp/android/tabswitcher/Tab;ILandroid/view/View;)V
    .locals 0

    .line 322
    iget-object p5, p0, Lorg/wikipedia/page/tabs/TabActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p5}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 323
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {p1, p3, p4}, Lde/mrapp/android/tabswitcher/TabSwitcher;->addTab(Lde/mrapp/android/tabswitcher/Tab;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 130
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002b

    .line 131
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 132
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 133
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 134
    iget-object v0, p0, Lorg/wikipedia/page/tabs/TabActivity;->funnel:Lorg/wikipedia/analytics/TabFunnel;

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/wikipedia/analytics/TabFunnel;->logEnterList(I)V

    .line 135
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity;->tabCountsView:Lorg/wikipedia/views/TabCountsView;

    invoke-virtual {p1}, Lorg/wikipedia/views/TabCountsView;->updateTabCount()V

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "launchedFromPageActivity"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/wikipedia/page/tabs/TabActivity;->launchedFromPageActivity:Z

    const/4 p1, 0x1

    new-array v0, p1, [Landroid/view/View;

    .line 138
    iget-object v1, p0, Lorg/wikipedia/page/tabs/TabActivity;->tabCountsView:Lorg/wikipedia/views/TabCountsView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/wikipedia/util/FeedbackUtil;->setButtonLongPressToast([Landroid/view/View;)V

    const v0, 0x1010031

    .line 140
    invoke-static {p0, v0}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/wikipedia/activity/BaseActivity;->setStatusBarColor(I)V

    .line 141
    invoke-static {p0, v0}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/wikipedia/activity/BaseActivity;->setNavigationBarColor(I)V

    .line 142
    iget-object v0, p0, Lorg/wikipedia/page/tabs/TabActivity;->tabToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 143
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 144
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lorg/wikipedia/page/tabs/TabActivity;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {v0, v2}, Lde/mrapp/android/tabswitcher/TabSwitcher;->setPreserveState(Z)V

    .line 147
    iget-object v0, p0, Lorg/wikipedia/page/tabs/TabActivity;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    new-instance v1, Lorg/wikipedia/page/tabs/TabActivity$1;

    invoke-direct {v1, p0}, Lorg/wikipedia/page/tabs/TabActivity$1;-><init>(Lorg/wikipedia/page/tabs/TabActivity;)V

    invoke-virtual {v0, v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->setDecorator(Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;)V

    .line 200
    :goto_0
    iget-object v0, p0, Lorg/wikipedia/page/tabs/TabActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 201
    iget-object v0, p0, Lorg/wikipedia/page/tabs/TabActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    sub-int/2addr v0, p1

    .line 202
    iget-object v1, p0, Lorg/wikipedia/page/tabs/TabActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/page/tabs/Tab;

    invoke-virtual {v1}, Lorg/wikipedia/page/tabs/Tab;->getBackStack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 205
    :cond_0
    new-instance v1, Lde/mrapp/android/tabswitcher/Tab;

    iget-object v3, p0, Lorg/wikipedia/page/tabs/TabActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/tabs/Tab;

    invoke-virtual {v0}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPositionTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-direct {v1, v0}, Lde/mrapp/android/tabswitcher/Tab;-><init>(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800de

    .line 206
    invoke-virtual {v1, v0}, Lde/mrapp/android/tabswitcher/Tab;->setIcon(I)V

    const v0, 0x7f04027d

    .line 207
    invoke-static {p0, v0}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Lde/mrapp/android/tabswitcher/Tab;->setIconTint(I)V

    .line 208
    invoke-static {p0, v0}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Lde/mrapp/android/tabswitcher/Tab;->setTitleTextColor(I)V

    const v3, 0x7f0800ab

    .line 209
    invoke-virtual {v1, v3}, Lde/mrapp/android/tabswitcher/Tab;->setCloseButtonIcon(I)V

    .line 210
    invoke-static {p0, v0}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lde/mrapp/android/tabswitcher/Tab;->setCloseButtonIconTint(I)V

    .line 211
    invoke-virtual {v1, p1}, Lde/mrapp/android/tabswitcher/Tab;->setCloseable(Z)V

    .line 212
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v0}, Lde/mrapp/android/tabswitcher/Tab;->setParameters(Landroid/os/Bundle;)V

    .line 213
    iget-object v0, p0, Lorg/wikipedia/page/tabs/TabActivity;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {v0, v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->addTab(Lde/mrapp/android/tabswitcher/Tab;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 216
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    sget-object v0, Lde/mrapp/android/util/logging/LogLevel;->OFF:Lde/mrapp/android/util/logging/LogLevel;

    invoke-virtual {p1, v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->setLogLevel(Lde/mrapp/android/util/logging/LogLevel;)V

    .line 217
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    iget-object v0, p0, Lorg/wikipedia/page/tabs/TabActivity;->tabListener:Lorg/wikipedia/page/tabs/TabActivity$TabListener;

    invoke-virtual {p1, v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->addListener(Lde/mrapp/android/tabswitcher/TabSwitcherListener;)V

    .line 218
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->showSwitcher()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 243
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0015

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 227
    iget-boolean v0, p0, Lorg/wikipedia/page/tabs/TabActivity;->cancelled:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lorg/wikipedia/page/tabs/TabActivity;->funnel:Lorg/wikipedia/analytics/TabFunnel;

    iget-object v1, p0, Lorg/wikipedia/page/tabs/TabActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/analytics/TabFunnel;->logCancel(I)V

    .line 230
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/tabs/TabActivity;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    iget-object v1, p0, Lorg/wikipedia/page/tabs/TabActivity;->tabListener:Lorg/wikipedia/page/tabs/TabActivity$TabListener;

    invoke-virtual {v0, v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->removeListener(Lde/mrapp/android/tabswitcher/TabSwitcherListener;)V

    .line 231
    invoke-static {}, Lorg/wikipedia/page/tabs/TabActivity;->clearFirstTabBitmap()V

    .line 232
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method onItemClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 222
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 249
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 284
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 279
    :sswitch_0
    sget-object p1, Lorg/wikipedia/navtab/NavTab;->SEARCH:Lorg/wikipedia/navtab/NavTab;

    invoke-direct {p0, p1}, Lorg/wikipedia/page/tabs/TabActivity;->goToMainTab(Lorg/wikipedia/navtab/NavTab;)V

    return v1

    .line 268
    :sswitch_1
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 269
    invoke-direct {p0}, Lorg/wikipedia/page/tabs/TabActivity;->saveTabsToList()V

    :cond_0
    return v1

    .line 276
    :sswitch_2
    sget-object p1, Lorg/wikipedia/navtab/NavTab;->READING_LISTS:Lorg/wikipedia/navtab/NavTab;

    invoke-direct {p0, p1}, Lorg/wikipedia/page/tabs/TabActivity;->goToMainTab(Lorg/wikipedia/navtab/NavTab;)V

    return v1

    .line 273
    :sswitch_3
    sget-object p1, Lorg/wikipedia/navtab/NavTab;->EXPLORE:Lorg/wikipedia/navtab/NavTab;

    invoke-direct {p0, p1}, Lorg/wikipedia/page/tabs/TabActivity;->goToMainTab(Lorg/wikipedia/navtab/NavTab;)V

    return v1

    .line 255
    :sswitch_4
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 258
    :cond_1
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f100066

    .line 259
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f100068

    .line 260
    new-instance v2, Lorg/wikipedia/page/tabs/-$$Lambda$TabActivity$CInbwO_veWs6hRgY2-l6piaIbCA;

    invoke-direct {v2, p0}, Lorg/wikipedia/page/tabs/-$$Lambda$TabActivity$CInbwO_veWs6hRgY2-l6piaIbCA;-><init>(Lorg/wikipedia/page/tabs/TabActivity;)V

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f100067

    const/4 v2, 0x0

    .line 264
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 265
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v1

    .line 252
    :sswitch_5
    invoke-direct {p0}, Lorg/wikipedia/page/tabs/TabActivity;->openNewTab()V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_5
        0x7f090220 -> :sswitch_4
        0x7f090224 -> :sswitch_3
        0x7f090241 -> :sswitch_5
        0x7f090249 -> :sswitch_2
        0x7f09024c -> :sswitch_1
        0x7f09024f -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .line 237
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 238
    iget-object v0, p0, Lorg/wikipedia/page/tabs/TabActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->commitTabState()V

    return-void
.end method
