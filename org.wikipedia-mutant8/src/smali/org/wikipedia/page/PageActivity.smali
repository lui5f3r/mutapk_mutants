.class public Lorg/wikipedia/page/PageActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "PageActivity.java"

# interfaces
.implements Lorg/wikipedia/page/PageFragment$Callback;
.implements Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$Callback;
.implements Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/page/PageActivity$EventBusConsumer;,
        Lorg/wikipedia/page/PageActivity$OverflowCallback;,
        Lorg/wikipedia/page/PageActivity$TabPosition;
    }
.end annotation


# static fields
.field public static final ACTION_CREATE_NEW_TAB:Ljava/lang/String; = "org.wikipedia.create_new_tab"

.field public static final ACTION_LOAD_FROM_EXISTING_TAB:Ljava/lang/String; = "org.wikipedia.load_from_existing_tab"

.field public static final ACTION_LOAD_IN_CURRENT_TAB:Ljava/lang/String; = "org.wikipedia.load_in_current_tab"

.field public static final ACTION_LOAD_IN_CURRENT_TAB_SQUASH:Ljava/lang/String; = "org.wikipedia.load_in_current_tab_squash"

.field public static final ACTION_LOAD_IN_NEW_TAB:Ljava/lang/String; = "org.wikipedia.load_in_new_tab"

.field public static final ACTION_RESUME_READING:Ljava/lang/String; = "org.wikipedia.resume_reading"

.field public static final EXTRA_HISTORYENTRY:Ljava/lang/String; = "org.wikipedia.history.historyentry"

.field public static final EXTRA_PAGETITLE:Ljava/lang/String; = "org.wikipedia.pagetitle"

.field private static final LANGUAGE_CODE_BUNDLE_KEY:Ljava/lang/String; = "language"


# instance fields
.field private app:Lorg/wikipedia/WikipediaApp;

.field private bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

.field containerWithNavTrigger:Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private currentActionModes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/ActionMode;",
            ">;"
        }
    .end annotation
.end field

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field drawerLayout:Landroidx/drawerlayout/widget/FixedDrawerLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private listDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field overflowButton:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private overflowCallback:Lorg/wikipedia/page/PageActivity$OverflowCallback;

.field private pageFragment:Lorg/wikipedia/page/PageFragment;

.field progressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tabsButton:Lorg/wikipedia/views/TabCountsView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field toolbarContainerView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private toolbarHideHandler:Lorg/wikipedia/page/PageToolbarHideHandler;

.field private unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 101
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 134
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/page/PageActivity;->currentActionModes:Ljava/util/Set;

    .line 135
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/page/PageActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 138
    new-instance v0, Lorg/wikipedia/page/PageActivity$OverflowCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/page/PageActivity$OverflowCallback;-><init>(Lorg/wikipedia/page/PageActivity;Lorg/wikipedia/page/PageActivity$1;)V

    iput-object v0, p0, Lorg/wikipedia/page/PageActivity;->overflowCallback:Lorg/wikipedia/page/PageActivity$OverflowCallback;

    .line 140
    new-instance v0, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-direct {v0}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/page/PageActivity;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    .line 142
    new-instance v0, Lorg/wikipedia/page/PageActivity$1;

    invoke-direct {v0, p0}, Lorg/wikipedia/page/PageActivity$1;-><init>(Lorg/wikipedia/page/PageActivity;)V

    iput-object v0, p0, Lorg/wikipedia/page/PageActivity;->listDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method static synthetic access$100(Lorg/wikipedia/page/PageActivity;)Lorg/wikipedia/page/PageFragment;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    return-object p0
.end method

.method static synthetic access$300(Lorg/wikipedia/page/PageActivity;Lorg/wikipedia/navtab/NavTab;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lorg/wikipedia/page/PageActivity;->goToMainTab(Lorg/wikipedia/navtab/NavTab;)V

    return-void
.end method

.method private copyLink(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 648
    invoke-static {p0, v0, p1}, Lorg/wikipedia/util/ClipboardUtil;->setPlainText(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private galleryImageEdited(II)Z
    .locals 1

    const/16 v0, 0x34

    if-ne p1, v0, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private galleryPageSelected(II)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x34

    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private goToMainTab(Lorg/wikipedia/navtab/NavTab;)V
    .locals 3

    .line 285
    invoke-static {p0}, Lorg/wikipedia/main/MainActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 286
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "returnToMain"

    const/4 v2, 0x1

    .line 287
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 288
    invoke-virtual {p1}, Lorg/wikipedia/navtab/NavTab;->code()I

    move-result p1

    const-string v1, "goToMainTab"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 285
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 289
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 6

    .line 351
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 352
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 353
    invoke-static {}, Lorg/wikipedia/util/ReleaseUtil;->isProdRelease()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 357
    :cond_0
    new-instance v1, Lorg/wikipedia/dataclient/WikiSite;

    invoke-direct {v1, v0}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Landroid/net/Uri;)V

    .line 358
    invoke-virtual {v1, v0}, Lorg/wikipedia/dataclient/WikiSite;->titleForUri(Landroid/net/Uri;)Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    .line 359
    new-instance v3, Lorg/wikipedia/history/HistoryEntry;

    const-string v4, "viewFromNotification"

    .line 360
    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x1a

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    :goto_0
    invoke-direct {v3, v2, v4}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    const-string v4, "android.intent.extra.REFERRER"

    .line 362
    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 365
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/wikipedia/history/HistoryEntry;->setReferrer(Ljava/lang/String;)V

    .line 372
    :cond_2
    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->isSpecial()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "donate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 377
    :cond_3
    sget-object p1, Lorg/wikipedia/page/PageActivity$TabPosition;->NEW_TAB_FOREGROUND:Lorg/wikipedia/page/PageActivity$TabPosition;

    invoke-virtual {p0, v2, v3, p1}, Lorg/wikipedia/page/PageActivity;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageActivity$TabPosition;)V

    goto/16 :goto_4

    .line 373
    :cond_4
    :goto_1
    invoke-static {p0, v0}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 374
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 378
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.wikipedia.load_in_new_tab"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "org.wikipedia.load_in_current_tab_squash"

    const-string v3, "org.wikipedia.load_in_current_tab"

    const-string v4, "org.wikipedia.pagetitle"

    const-string v5, "org.wikipedia.history.historyentry"

    if-nez v0, :cond_6

    .line 379
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 380
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 381
    :cond_6
    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 382
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 383
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lorg/wikipedia/history/HistoryEntry;

    .line 384
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 385
    sget-object v1, Lorg/wikipedia/page/PageActivity$TabPosition;->NEW_TAB_FOREGROUND:Lorg/wikipedia/page/PageActivity$TabPosition;

    invoke-virtual {p0, v0, v4, v1}, Lorg/wikipedia/page/PageActivity;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageActivity$TabPosition;)V

    goto :goto_2

    .line 386
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 387
    sget-object v1, Lorg/wikipedia/page/PageActivity$TabPosition;->CURRENT_TAB:Lorg/wikipedia/page/PageActivity$TabPosition;

    invoke-virtual {p0, v0, v4, v1}, Lorg/wikipedia/page/PageActivity;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageActivity$TabPosition;)V

    goto :goto_2

    .line 388
    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 389
    sget-object v1, Lorg/wikipedia/page/PageActivity$TabPosition;->CURRENT_TAB_SQUASH:Lorg/wikipedia/page/PageActivity$TabPosition;

    invoke-virtual {p0, v0, v4, v1}, Lorg/wikipedia/page/PageActivity;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageActivity$TabPosition;)V

    :cond_9
    :goto_2
    const-string v0, "revertQNumber"

    .line 391
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 392
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/wikipedia/page/PageActivity;->showDescriptionEditRevertDialog(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 394
    :cond_a
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.wikipedia.load_from_existing_tab"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 395
    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 396
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 397
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/history/HistoryEntry;

    .line 398
    sget-object v1, Lorg/wikipedia/page/PageActivity$TabPosition;->EXISTING_TAB:Lorg/wikipedia/page/PageActivity$TabPosition;

    invoke-virtual {p0, v0, p1, v1}, Lorg/wikipedia/page/PageActivity;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageActivity$TabPosition;)V

    goto/16 :goto_4

    .line 399
    :cond_b
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.wikipedia.resume_reading"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "appShortcutContinueReading"

    .line 400
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3

    .line 402
    :cond_c
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "query"

    .line 403
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 404
    new-instance v0, Lorg/wikipedia/page/PageTitle;

    iget-object v1, p0, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 405
    new-instance p1, Lorg/wikipedia/history/HistoryEntry;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    .line 406
    sget-object v1, Lorg/wikipedia/page/PageActivity$TabPosition;->EXISTING_TAB:Lorg/wikipedia/page/PageActivity$TabPosition;

    invoke-virtual {p0, v0, p1, v1}, Lorg/wikipedia/page/PageActivity;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageActivity$TabPosition;)V

    goto :goto_4

    :cond_d
    const-string v0, "featuredArticleFromWidget"

    .line 407
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 408
    new-instance v0, Lorg/wikipedia/analytics/IntentFunnel;

    iget-object v1, p0, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-direct {v0, v1}, Lorg/wikipedia/analytics/IntentFunnel;-><init>(Lorg/wikipedia/WikipediaApp;)V

    invoke-virtual {v0}, Lorg/wikipedia/analytics/IntentFunnel;->logFeaturedArticleWidgetTap()V

    .line 409
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 410
    new-instance v0, Lorg/wikipedia/history/HistoryEntry;

    const/16 v1, 0x1d

    invoke-direct {v0, p1, v1}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    .line 411
    sget-object v1, Lorg/wikipedia/page/PageActivity$TabPosition;->EXISTING_TAB:Lorg/wikipedia/page/PageActivity$TabPosition;

    invoke-virtual {p0, p1, v0, v1}, Lorg/wikipedia/page/PageActivity;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageActivity$TabPosition;)V

    goto :goto_4

    .line 412
    :cond_e
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "org.wikipedia.create_new_tab"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 413
    sget-object p1, Lorg/wikipedia/page/PageActivity$TabPosition;->NEW_TAB_FOREGROUND:Lorg/wikipedia/page/PageActivity$TabPosition;

    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageActivity;->loadMainPage(Lorg/wikipedia/page/PageActivity$TabPosition;)V

    goto :goto_4

    .line 415
    :cond_f
    sget-object p1, Lorg/wikipedia/page/PageActivity$TabPosition;->CURRENT_TAB:Lorg/wikipedia/page/PageActivity$TabPosition;

    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageActivity;->loadMainPage(Lorg/wikipedia/page/PageActivity$TabPosition;)V

    goto :goto_4

    .line 401
    :cond_10
    :goto_3
    invoke-direct {p0}, Lorg/wikipedia/page/PageActivity;->loadFilePageFromBackStackIfNeeded()V

    :cond_11
    :goto_4
    return-void
.end method

.method private handleSettingsActivityResult(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 809
    invoke-direct {p0}, Lorg/wikipedia/page/PageActivity;->loadNewLanguageMainPage()V

    :cond_0
    return-void
.end method

.method private hideLinkPreview()V
    .locals 2

    .line 505
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->dismiss(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method private isCabOpen()Z
    .locals 1

    .line 294
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->currentActionModes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private loadFilePageFromBackStackIfNeeded()V
    .locals 2

    .line 479
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getCurrentTab()Lorg/wikipedia/page/tabs/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/tabs/Tab;->getBackStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getCurrentTab()Lorg/wikipedia/page/tabs/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/tabs/Tab;->getBackStack()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageFragment;->getCurrentTab()Lorg/wikipedia/page/tabs/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/PageBackStackItem;

    .line 481
    invoke-virtual {v0}, Lorg/wikipedia/page/PageBackStackItem;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/wikipedia/page/PageActivity;->loadNonArticlePageIfNeeded(Lorg/wikipedia/page/PageTitle;)Z

    :cond_0
    return-void
.end method

.method private loadNewLanguageMainPage()V
    .locals 4

    .line 814
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 815
    new-instance v1, Lorg/wikipedia/page/-$$Lambda$PageActivity$7gLPkRXSnaCDo5gPioZD7c4-MIY;

    invoke-direct {v1, p0}, Lorg/wikipedia/page/-$$Lambda$PageActivity$7gLPkRXSnaCDo5gPioZD7c4-MIY;-><init>(Lorg/wikipedia/page/PageActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private loadNonArticlePageIfNeeded(Lorg/wikipedia/page/PageTitle;)Z
    .locals 3

    if-eqz p1, :cond_2

    .line 487
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->isSpecial()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 489
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v1

    .line 491
    :cond_0
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->isFilePage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    invoke-static {p0, p1}, Lorg/wikipedia/commons/FilePageActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 493
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v1

    .line 495
    :cond_1
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    move-result-object v0

    sget-object v2, Lorg/wikipedia/page/Namespace;->USER_TALK:Lorg/wikipedia/page/Namespace;

    if-ne v0, v2, :cond_2

    .line 496
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/wikipedia/talk/TalkTopicsActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 497
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private modifyMenu(Landroid/view/ActionMode;)V
    .locals 6

    .line 777
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 778
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 780
    :goto_0
    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 781
    invoke-interface {v0, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f10037f

    .line 782
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const v5, 0x7f1001a5

    .line 783
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v4}, Lorg/wikipedia/page/PageFragment;->getShareHandler()Lorg/wikipedia/page/shareafact/ShareHandler;

    move-result-object v4

    invoke-virtual {v4}, Lorg/wikipedia/page/shareafact/ShareHandler;->shouldEnableWiktionaryDialog()Z

    move-result v4

    if-nez v4, :cond_1

    .line 784
    :cond_0
    invoke-interface {v0, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 788
    :cond_2
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 789
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    const v3, 0x7f0d0017

    invoke-virtual {p1, v3, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 790
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 791
    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v0, v3, v4, v2, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    return-void
.end method

.method private newArticleLanguageSelected(II)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x32

    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static newIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 299
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.wikipedia.resume_reading"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lorg/wikipedia/page/PageActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static newIntentForCurrentTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x1

    .line 321
    invoke-static {p0, p1, p2, v0}, Lorg/wikipedia/page/PageActivity;->newIntentForCurrentTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static newIntentForCurrentTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;Z)Landroid/content/Intent;
    .locals 1

    .line 328
    new-instance v0, Landroid/content/Intent;

    if-eqz p3, :cond_0

    const-string p3, "org.wikipedia.load_in_current_tab_squash"

    goto :goto_0

    :cond_0
    const-string p3, "org.wikipedia.load_in_current_tab"

    :goto_0
    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class p3, Lorg/wikipedia/page/PageActivity;

    .line 329
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    const-string p3, "org.wikipedia.history.historyentry"

    .line 330
    invoke-virtual {p0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "org.wikipedia.pagetitle"

    .line 331
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static newIntentForExistingTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;
    .locals 2

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.wikipedia.load_from_existing_tab"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lorg/wikipedia/page/PageActivity;

    .line 338
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "org.wikipedia.history.historyentry"

    .line 339
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "org.wikipedia.pagetitle"

    .line 340
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static newIntentForNewTab(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 304
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.wikipedia.create_new_tab"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lorg/wikipedia/page/PageActivity;

    .line 305
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static newIntentForNewTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;
    .locals 2

    .line 312
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.wikipedia.load_in_new_tab"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lorg/wikipedia/page/PageActivity;

    .line 313
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "org.wikipedia.history.historyentry"

    .line 314
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "org.wikipedia.pagetitle"

    .line 315
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private showCopySuccessMessage()V
    .locals 1

    const v0, 0x7f100032

    .line 652
    invoke-static {p0, v0}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;I)V

    return-void
.end method

.method private showDescriptionEditRevertDialog(Ljava/lang/String;)V
    .locals 2

    .line 835
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1001e2

    .line 836
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditRevertHelpView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 837
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f10037a

    const/4 v1, 0x0

    .line 838
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 839
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 840
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showOverflowMenu(Landroid/view/View;)V
    .locals 3

    .line 656
    new-instance v0, Lorg/wikipedia/views/PageActionOverflowView;

    invoke-direct {v0, p0}, Lorg/wikipedia/views/PageActionOverflowView;-><init>(Landroid/content/Context;)V

    .line 657
    iget-object v1, p0, Lorg/wikipedia/page/PageActivity;->overflowCallback:Lorg/wikipedia/page/PageActivity$OverflowCallback;

    iget-object v2, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v2}, Lorg/wikipedia/page/PageFragment;->getCurrentTab()Lorg/wikipedia/page/tabs/Tab;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/wikipedia/views/PageActionOverflowView;->show(Landroid/view/View;Lorg/wikipedia/views/PageActionOverflowView$Callback;Lorg/wikipedia/page/tabs/Tab;)V

    return-void
.end method


# virtual methods
.method public animateTabsButton()V
    .locals 2

    const v0, 0x7f01002d

    .line 245
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lorg/wikipedia/page/PageActivity;->tabsButton:Lorg/wikipedia/views/TabCountsView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 247
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->tabsButton:Lorg/wikipedia/views/TabCountsView;

    invoke-virtual {v0}, Lorg/wikipedia/views/TabCountsView;->updateTabCount()V

    return-void
.end method

.method protected clearActionBarTitle()V
    .locals 2

    .line 804
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public hideSoftKeyboard()V
    .locals 0

    .line 251
    invoke-static {p0}, Lorg/wikipedia/util/DeviceUtil;->hideSoftKeyboard(Landroid/app/Activity;)V

    return-void
.end method

.method public synthetic lambda$loadNewLanguageMainPage$4$PageActivity()V
    .locals 1

    .line 816
    sget-object v0, Lorg/wikipedia/page/PageActivity$TabPosition;->EXISTING_TAB:Lorg/wikipedia/page/PageActivity$TabPosition;

    invoke-virtual {p0, v0}, Lorg/wikipedia/page/PageActivity;->loadMainPage(Lorg/wikipedia/page/PageActivity$TabPosition;)V

    .line 817
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/widgets/WidgetProviderFeaturedPage;->forceUpdateWidget(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$loadPage$1$PageActivity(Lorg/wikipedia/page/PageActivity$TabPosition;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V
    .locals 2

    .line 450
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 454
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/page/PageActivity;->hideLinkPreview()V

    .line 456
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->onPageCloseActionMode()V

    .line 457
    sget-object v0, Lorg/wikipedia/page/PageActivity$TabPosition;->CURRENT_TAB:Lorg/wikipedia/page/PageActivity$TabPosition;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 458
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v1, v0}, Lorg/wikipedia/page/PageFragment;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;ZZ)V

    goto :goto_0

    .line 459
    :cond_1
    sget-object v0, Lorg/wikipedia/page/PageActivity$TabPosition;->CURRENT_TAB_SQUASH:Lorg/wikipedia/page/PageActivity$TabPosition;

    if-ne p1, v0, :cond_2

    .line 460
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1, p2, p3, v1, v1}, Lorg/wikipedia/page/PageFragment;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;ZZ)V

    goto :goto_0

    .line 461
    :cond_2
    sget-object v0, Lorg/wikipedia/page/PageActivity$TabPosition;->NEW_TAB_BACKGROUND:Lorg/wikipedia/page/PageActivity$TabPosition;

    if-ne p1, v0, :cond_3

    .line 462
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1, p2, p3}, Lorg/wikipedia/page/PageFragment;->openInNewBackgroundTab(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V

    goto :goto_0

    .line 463
    :cond_3
    sget-object v0, Lorg/wikipedia/page/PageActivity$TabPosition;->NEW_TAB_FOREGROUND:Lorg/wikipedia/page/PageActivity$TabPosition;

    if-ne p1, v0, :cond_4

    .line 464
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1, p2, p3}, Lorg/wikipedia/page/PageFragment;->openInNewForegroundTab(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V

    goto :goto_0

    .line 466
    :cond_4
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1, p2, p3}, Lorg/wikipedia/page/PageFragment;->openFromExistingTab(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V

    .line 468
    :goto_0
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getSessionFunnel()Lorg/wikipedia/analytics/SessionFunnel;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/wikipedia/analytics/SessionFunnel;->pageViewed(Lorg/wikipedia/history/HistoryEntry;)V

    return-void
.end method

.method public synthetic lambda$onActivityResult$2$PageActivity(Landroid/content/Intent;)V
    .locals 0

    .line 714
    invoke-direct {p0, p1}, Lorg/wikipedia/page/PageActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onActivityResult$3$PageActivity(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V
    .locals 7

    .line 743
    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne p1, v0, :cond_0

    .line 744
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/wikipedia/commons/FilePageActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 745
    :cond_0
    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne p1, v0, :cond_2

    .line 746
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 747
    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    iget-object p1, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 746
    invoke-static/range {v0 .. v6}, Lorg/wikipedia/gallery/GalleryActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;JI)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$onCreate$0$PageActivity(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 195
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity;->toolbarContainerView:Landroid/view/View;

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 196
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1, p2}, Lorg/wikipedia/page/PageFragment;->updateInsets(Landroidx/core/view/WindowInsetsCompat;)V

    return-object p2
.end method

.method public loadMainPage(Lorg/wikipedia/page/PageActivity$TabPosition;)V
    .locals 3

    .line 473
    invoke-static {}, Lorg/wikipedia/feed/mainpage/MainPageClient;->getMainPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    .line 474
    new-instance v1, Lorg/wikipedia/history/HistoryEntry;

    const/16 v2, 0x8

    invoke-direct {v1, v0, v2}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    .line 475
    invoke-virtual {p0, v0, v1, p1}, Lorg/wikipedia/page/PageActivity;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageActivity$TabPosition;)V

    return-void
.end method

.method public loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageActivity$TabPosition;)V
    .locals 3

    .line 434
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 438
    :cond_0
    invoke-virtual {p2}, Lorg/wikipedia/history/HistoryEntry;->getSource()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isLinkPreviewEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 439
    :cond_1
    new-instance v0, Lorg/wikipedia/analytics/LinkPreviewFunnel;

    iget-object v1, p0, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p2}, Lorg/wikipedia/history/HistoryEntry;->getSource()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/wikipedia/analytics/LinkPreviewFunnel;-><init>(Lorg/wikipedia/WikipediaApp;I)V

    invoke-virtual {v0}, Lorg/wikipedia/analytics/LinkPreviewFunnel;->logNavigate()V

    .line 442
    :cond_2
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->authority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "api"

    invoke-virtual {v0, v2, v1}, Lorg/wikipedia/WikipediaApp;->putCrashReportProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Lorg/wikipedia/WikipediaApp;->putCrashReportProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-direct {p0, p1}, Lorg/wikipedia/page/PageActivity;->loadNonArticlePageIfNeeded(Lorg/wikipedia/page/PageTitle;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 449
    :cond_3
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->toolbarContainerView:Landroid/view/View;

    new-instance v1, Lorg/wikipedia/page/-$$Lambda$PageActivity$qYM9s0Dm8p9fOJRBO-QjJF4dMoo;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/wikipedia/page/-$$Lambda$PageActivity$qYM9s0Dm8p9fOJRBO-QjJF4dMoo;-><init>(Lorg/wikipedia/page/PageActivity;Lorg/wikipedia/page/PageActivity$TabPosition;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 2

    .line 797
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 798
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->currentActionModes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 799
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity;->toolbarHideHandler:Lorg/wikipedia/page/PageToolbarHideHandler;

    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 800
    invoke-virtual {v1}, Lorg/wikipedia/page/PageFragment;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    .line 799
    invoke-virtual {p1, v0, v1}, Lorg/wikipedia/page/PageToolbarHideHandler;->onScrolled(II)V

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    .line 767
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 768
    invoke-direct {p0}, Lorg/wikipedia/page/PageActivity;->isCabOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ActionMode;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 769
    invoke-direct {p0, p1}, Lorg/wikipedia/page/PageActivity;->modifyMenu(Landroid/view/ActionMode;)V

    .line 770
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/wikipedia/views/ViewUtil;->setCloseButtonInActionMode(Landroid/content/Context;Landroid/view/ActionMode;)V

    .line 771
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/PageFragment;->onActionModeShown(Landroid/view/ActionMode;)V

    .line 773
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->currentActionModes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12

    const/16 v0, 0x29

    if-ne p1, v0, :cond_0

    .line 712
    invoke-direct {p0, p2}, Lorg/wikipedia/page/PageActivity;->handleSettingsActivityResult(I)V

    goto/16 :goto_5

    .line 713
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/page/PageActivity;->newArticleLanguageSelected(II)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, p1, p2}, Lorg/wikipedia/page/PageActivity;->galleryPageSelected(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 715
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/page/PageActivity;->galleryImageEdited(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 716
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->refreshPage()V

    goto/16 :goto_5

    :cond_2
    const/16 v0, 0x3d

    if-ne p1, v0, :cond_5

    .line 718
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    move-result p1

    const/16 p3, 0xb

    if-nez p1, :cond_3

    if-eq p2, p3, :cond_3

    .line 720
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    if-ne p2, p3, :cond_4

    .line 724
    sget-object p1, Lorg/wikipedia/page/PageActivity$TabPosition;->NEW_TAB_FOREGROUND:Lorg/wikipedia/page/PageActivity$TabPosition;

    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageActivity;->loadMainPage(Lorg/wikipedia/page/PageActivity$TabPosition;)V

    .line 725
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->animateTabsButton()V

    goto/16 :goto_5

    :cond_4
    const/16 p1, 0xa

    if-ne p2, p1, :cond_f

    .line 727
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->reloadFromBackstack()V

    goto/16 :goto_5

    :cond_5
    const/16 v0, 0x38

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_6

    if-ne p2, v1, :cond_6

    .line 731
    invoke-static {v2}, Lorg/wikipedia/settings/Prefs;->setDescriptionEditTutorialEnabled(Z)V

    .line 732
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    const-string p2, "selectedText"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/wikipedia/page/PageFragment;->startDescriptionEditActivity(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_6
    const/16 v0, 0x40

    const/16 v3, 0x37

    const/16 v4, 0x42

    if-eq p1, v0, :cond_7

    if-eq p1, v4, :cond_7

    if-ne p1, v3, :cond_8

    :cond_7
    const/4 v0, 0x1

    if-eq p2, v1, :cond_9

    if-ne p2, v0, :cond_8

    goto :goto_0

    .line 751
    :cond_8
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_5

    .line 737
    :cond_9
    :goto_0
    iget-object v1, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageFragment;->refreshPage()V

    .line 738
    iget-object v1, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageFragment;->getLeadImageEditLang()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v5}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v5

    invoke-virtual {v5}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz p3, :cond_a

    const-string v1, "intentAction"

    .line 739
    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p3

    check-cast p3, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    goto :goto_1

    :cond_a
    if-ne p1, v4, :cond_b

    sget-object p3, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    goto :goto_1

    :cond_b
    const/4 p3, 0x0

    :goto_1
    move-object v7, p3

    if-eq p2, v0, :cond_c

    const/4 v8, 0x1

    goto :goto_2

    :cond_c
    const/4 v8, 0x0

    :goto_2
    if-eq p1, v3, :cond_d

    const/4 v10, 0x1

    goto :goto_3

    :cond_d
    const/4 v10, 0x0

    .line 742
    :goto_3
    new-instance v11, Lorg/wikipedia/page/-$$Lambda$PageActivity$7JYipDF8nq4fbxp_JW2PVz8MY88;

    invoke-direct {v11, p0, v7}, Lorg/wikipedia/page/-$$Lambda$PageActivity$7JYipDF8nq4fbxp_JW2PVz8MY88;-><init>(Lorg/wikipedia/page/PageActivity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->show(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;ZLjava/lang/String;ZLorg/wikipedia/suggestededits/SuggestedEditsSnackbars$OpenPageListener;)V

    goto :goto_5

    .line 714
    :cond_e
    :goto_4
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity;->toolbarContainerView:Landroid/view/View;

    new-instance p2, Lorg/wikipedia/page/-$$Lambda$PageActivity$qR5ItrjxlovBGfjuYRID8zfTuEk;

    invoke-direct {p2, p0, p3}, Lorg/wikipedia/page/-$$Lambda$PageActivity$qR5ItrjxlovBGfjuYRID8zfTuEk;-><init>(Lorg/wikipedia/page/PageActivity;Landroid/content/Intent;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_f
    :goto_5
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 519
    invoke-direct {p0}, Lorg/wikipedia/page/PageActivity;->isCabOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->onPageCloseActionMode()V

    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getSessionFunnel()Lorg/wikipedia/analytics/SessionFunnel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/analytics/SessionFunnel;->backPressed()V

    .line 525
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 528
    :cond_1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 151
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/WikipediaApp;

    iput-object v0, p0, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    const v0, 0x7f130004

    const/4 v1, 0x0

    .line 154
    invoke-static {p0, v0, v1}, Landroidx/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    const v0, 0x7f0c0026

    const/4 v2, 0x1

    .line 157
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/page/PageActivity;->unbinder:Lbutterknife/Unbinder;

    .line 175
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v3, p0, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getBus()Lorg/wikipedia/concurrency/RxBus;

    move-result-object v3

    new-instance v4, Lorg/wikipedia/page/PageActivity$EventBusConsumer;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lorg/wikipedia/page/PageActivity$EventBusConsumer;-><init>(Lorg/wikipedia/page/PageActivity;Lorg/wikipedia/page/PageActivity$1;)V

    invoke-virtual {v3, v4}, Lorg/wikipedia/concurrency/RxBus;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 177
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity;->updateProgressBar(Z)V

    .line 179
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v3, 0x7f0902cd

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/PageFragment;

    iput-object v0, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 181
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 182
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->clearActionBarTitle()V

    .line 183
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    .line 185
    iget-object v3, p0, Lorg/wikipedia/page/PageActivity;->tabsButton:Lorg/wikipedia/views/TabCountsView;

    aput-object v3, v0, v1

    iget-object v3, p0, Lorg/wikipedia/page/PageActivity;->overflowButton:Landroid/widget/ImageView;

    aput-object v3, v0, v2

    invoke-static {v0}, Lorg/wikipedia/util/FeedbackUtil;->setButtonLongPressToast([Landroid/view/View;)V

    .line 187
    new-instance v0, Lorg/wikipedia/page/PageToolbarHideHandler;

    iget-object v3, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    iget-object v4, p0, Lorg/wikipedia/page/PageActivity;->toolbarContainerView:Landroid/view/View;

    iget-object v5, p0, Lorg/wikipedia/page/PageActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v6, p0, Lorg/wikipedia/page/PageActivity;->tabsButton:Lorg/wikipedia/views/TabCountsView;

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/wikipedia/page/PageToolbarHideHandler;-><init>(Lorg/wikipedia/page/PageFragment;Landroid/view/View;Landroidx/appcompat/widget/Toolbar;Lorg/wikipedia/views/TabCountsView;)V

    iput-object v0, p0, Lorg/wikipedia/page/PageActivity;->toolbarHideHandler:Lorg/wikipedia/page/PageToolbarHideHandler;

    .line 189
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->drawerLayout:Landroidx/drawerlayout/widget/FixedDrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setScrimColor(I)V

    .line 190
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->containerWithNavTrigger:Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;

    invoke-virtual {v0, p0}, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->setCallback(Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer$Callback;)V

    .line 192
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    or-int/lit16 v3, v3, 0x400

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 193
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v3, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060035

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 194
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->drawerLayout:Landroidx/drawerlayout/widget/FixedDrawerLayout;

    new-instance v3, Lorg/wikipedia/page/-$$Lambda$PageActivity$afuBk_eJK49pTF6sT88_AKKWuxI;

    invoke-direct {v3, p0}, Lorg/wikipedia/page/-$$Lambda$PageActivity$afuBk_eJK49pTF6sT88_AKKWuxI;-><init>(Lorg/wikipedia/page/PageActivity;)V

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    if-eqz p1, :cond_1

    const-string v0, "isSearching"

    .line 202
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->TOOLBAR:Lorg/wikipedia/Constants$InvokeSource;

    invoke-virtual {v0, v1}, Lorg/wikipedia/page/PageFragment;->openSearchActivity(Lorg/wikipedia/Constants$InvokeSource;)V

    :cond_0
    const-string v0, "language"

    .line 205
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 210
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->resetWikiSite()V

    .line 211
    sget-object v0, Lorg/wikipedia/page/PageActivity$TabPosition;->EXISTING_TAB:Lorg/wikipedia/page/PageActivity$TabPosition;

    invoke-virtual {p0, v0}, Lorg/wikipedia/page/PageActivity;->loadMainPage(Lorg/wikipedia/page/PageActivity$TabPosition;)V

    :cond_2
    if-nez p1, :cond_3

    .line 217
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/wikipedia/page/PageActivity;->handleIntent(Landroid/content/Intent;)V

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "webview"

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 160
    :cond_4
    invoke-static {p1}, Lorg/wikipedia/util/ThrowableUtil;->getInnermostThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 161
    invoke-static {p1}, Lorg/wikipedia/util/ThrowableUtil;->getInnermostThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 166
    :cond_5
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    const v0, 0x7f10010f

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 167
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 170
    :cond_6
    throw p1
.end method

.method public onDestroy()V
    .locals 1

    .line 757
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->unbinder:Lbutterknife/Unbinder;

    if-eqz v0, :cond_0

    .line 758
    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 760
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    const/4 v0, 0x1

    .line 761
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setHasVisitedArticlePage(Z)V

    .line 762
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 868
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    if-eq p1, v0, :cond_1

    .line 869
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x85

    if-ne p1, v0, :cond_2

    .line 870
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->showFindInPage()V

    const/4 p1, 0x1

    return p1

    .line 873
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLinkPreviewAddToList(Lorg/wikipedia/page/PageTitle;)V
    .locals 1

    .line 639
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->LINK_PREVIEW_MENU:Lorg/wikipedia/Constants$InvokeSource;

    invoke-virtual {p0, p1, v0}, Lorg/wikipedia/page/PageActivity;->showAddToListDialog(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)V

    return-void
.end method

.method public onLinkPreviewCopyLink(Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    .line 633
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/wikipedia/page/PageActivity;->copyLink(Ljava/lang/String;)V

    .line 634
    invoke-direct {p0}, Lorg/wikipedia/page/PageActivity;->showCopySuccessMessage()V

    return-void
.end method

.method public onLinkPreviewLoadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 628
    sget-object p3, Lorg/wikipedia/page/PageActivity$TabPosition;->NEW_TAB_BACKGROUND:Lorg/wikipedia/page/PageActivity$TabPosition;

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/wikipedia/page/PageActivity$TabPosition;->CURRENT_TAB:Lorg/wikipedia/page/PageActivity$TabPosition;

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/wikipedia/page/PageActivity;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageActivity$TabPosition;)V

    return-void
.end method

.method public onLinkPreviewShareLink(Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    .line 644
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->shareText(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)V

    return-void
.end method

.method public onNavMenuSwipeRequest(I)V
    .locals 1

    .line 279
    invoke-direct {p0}, Lorg/wikipedia/page/PageActivity;->isCabOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x800005

    if-ne p1, v0, :cond_0

    .line 280
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->getTocHandler()Lorg/wikipedia/page/ToCHandler;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/page/ToCHandler;->show()V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 345
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 346
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 347
    invoke-direct {p0, p1}, Lorg/wikipedia/page/PageActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 264
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 273
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 266
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->haveMainActivity()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 267
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->onBackPressed()V

    goto :goto_0

    .line 269
    :cond_1
    sget-object p1, Lorg/wikipedia/navtab/NavTab;->EXPLORE:Lorg/wikipedia/navtab/NavTab;

    invoke-direct {p0, p1}, Lorg/wikipedia/page/PageActivity;->goToMainTab(Lorg/wikipedia/navtab/NavTab;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onPageAddToReadingList(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)V
    .locals 0

    .line 574
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity;->showAddToListDialog(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)V

    return-void
.end method

.method public onPageCloseActionMode()V
    .locals 2

    .line 619
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/wikipedia/page/PageActivity;->currentActionModes:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 620
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ActionMode;

    .line 621
    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 623
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->currentActionModes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public onPageDismissBottomSheet()V
    .locals 2

    .line 533
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->dismiss(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method public onPageHideAllContent()V
    .locals 2

    .line 604
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->toolbarHideHandler:Lorg/wikipedia/page/PageToolbarHideHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/wikipedia/page/PageToolbarHideHandler;->setFadeEnabled(Z)V

    return-void
.end method

.method public onPageHideSoftKeyboard()V
    .locals 0

    .line 569
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->hideSoftKeyboard()V

    return-void
.end method

.method public onPageInitWebView(Lorg/wikipedia/views/ObservableWebView;)V
    .locals 1

    .line 538
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->toolbarHideHandler:Lorg/wikipedia/page/PageToolbarHideHandler;

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/ViewHideHandler;->setScrollView(Lorg/wikipedia/views/ObservableWebView;)V

    return-void
.end method

.method public onPageLoadError(Lorg/wikipedia/page/PageTitle;)V
    .locals 1

    .line 594
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPageLoadErrorBackPressed()V
    .locals 0

    .line 599
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onPageLoadMainPageInForegroundTab()V
    .locals 1

    .line 554
    sget-object v0, Lorg/wikipedia/page/PageActivity$TabPosition;->EXISTING_TAB:Lorg/wikipedia/page/PageActivity$TabPosition;

    invoke-virtual {p0, v0}, Lorg/wikipedia/page/PageActivity;->loadMainPage(Lorg/wikipedia/page/PageActivity$TabPosition;)V

    return-void
.end method

.method public onPageLoadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V
    .locals 1

    .line 543
    sget-object v0, Lorg/wikipedia/page/PageActivity$TabPosition;->CURRENT_TAB:Lorg/wikipedia/page/PageActivity$TabPosition;

    invoke-virtual {p0, p1, p2, v0}, Lorg/wikipedia/page/PageActivity;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageActivity$TabPosition;)V

    return-void
.end method

.method public onPageMoveToReadingList(JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Z)V
    .locals 0

    .line 579
    invoke-virtual/range {p0 .. p5}, Lorg/wikipedia/page/PageActivity;->showMoveToListDialog(JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Z)V

    return-void
.end method

.method public onPageRemoveFromReadingLists(Lorg/wikipedia/page/PageTitle;)V
    .locals 3

    .line 584
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f10032b

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 588
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 587
    invoke-static {p0, p1}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 589
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->updateBookmarkAndMenuOptionsFromDao()V

    return-void
.end method

.method public onPageSetToolbarElevationEnabled(Z)V
    .locals 1

    .line 614
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->toolbarContainerView:Landroid/view/View;

    if-eqz p1, :cond_0

    const p1, 0x7f0701b9

    invoke-static {p1}, Lorg/wikipedia/util/DimenUtil;->getDimension(I)F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lorg/wikipedia/util/DimenUtil;->dpToPx(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public onPageSetToolbarFadeEnabled(Z)V
    .locals 1

    .line 609
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->toolbarHideHandler:Lorg/wikipedia/page/PageToolbarHideHandler;

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/PageToolbarHideHandler;->setFadeEnabled(Z)V

    return-void
.end method

.method public onPageShowLinkPreview(Lorg/wikipedia/history/HistoryEntry;)V
    .locals 3

    .line 548
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 549
    invoke-static {p1, v2}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->newInstance(Lorg/wikipedia/history/HistoryEntry;Landroid/location/Location;)Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    move-result-object p1

    .line 548
    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method public onPageStartSupportActionMode(Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 564
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    return-void
.end method

.method public onPageUpdateProgressBar(Z)V
    .locals 0

    .line 559
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageActivity;->updateProgressBar(Z)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 696
    invoke-direct {p0}, Lorg/wikipedia/page/PageActivity;->isCabOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->onPageCloseActionMode()V

    .line 700
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 256
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 257
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity;->tabsButton:Lorg/wikipedia/views/TabCountsView;

    invoke-virtual {p1}, Lorg/wikipedia/views/TabCountsView;->updateTabCount()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onResume()V
    .locals 1

    .line 689
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onResume()V

    .line 690
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->resetWikiSite()V

    const/4 v0, 0x0

    .line 691
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->storeTemporaryWikitext(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 705
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 706
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onShowOverflowMenuButtonClicked()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 241
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0902e2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/wikipedia/page/PageActivity;->showOverflowMenu(Landroid/view/View;)V

    return-void
.end method

.method public onShowTabsButtonClicked()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 235
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/page/tabs/TabActivity;->captureFirstTabBitmap(Landroid/view/View;)V

    .line 236
    invoke-static {p0}, Lorg/wikipedia/page/tabs/TabActivity;->newIntentFromPageActivity(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public requestLightStatusBar(Z)V
    .locals 2

    .line 222
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/theme/Theme;->isDark()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 228
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 229
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    or-int/lit16 p1, p1, 0x2000

    goto :goto_0

    .line 230
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    and-int/lit16 p1, p1, -0x2001

    .line 228
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public showAddToListDialog(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)V
    .locals 3

    .line 509
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/page/PageActivity;->listDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->showAddToListDialog(Landroidx/fragment/app/FragmentManager;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public showMoveToListDialog(JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Z)V
    .locals 8

    .line 513
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v7, p0, Lorg/wikipedia/page/PageActivity;->listDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->showMoveToListDialog(Landroidx/fragment/app/FragmentManager;JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;ZLandroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public updateProgressBar(Z)V
    .locals 1

    .line 420
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity;->progressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
