.class public Lorg/wikipedia/feed/FeedFragment;
.super Landroidx/fragment/app/Fragment;
.source "FeedFragment.java"

# interfaces
.implements Lorg/wikipedia/BackPressedHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/feed/FeedFragment$FeedScrollListener;,
        Lorg/wikipedia/feed/FeedFragment$FeedCallback;,
        Lorg/wikipedia/feed/FeedFragment$Callback;
    }
.end annotation


# instance fields
.field private app:Lorg/wikipedia/WikipediaApp;

.field private coordinator:Lorg/wikipedia/feed/FeedCoordinator;

.field emptyContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private feedAdapter:Lorg/wikipedia/feed/view/FeedAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/wikipedia/feed/view/FeedAdapter<",
            "*>;"
        }
    .end annotation
.end field

.field private final feedCallback:Lorg/wikipedia/feed/view/FeedAdapter$Callback;

.field private feedScrollListener:Lorg/wikipedia/feed/FeedFragment$FeedScrollListener;

.field feedView:Lorg/wikipedia/feed/view/FeedView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private funnel:Lorg/wikipedia/analytics/FeedFunnel;

.field private shouldElevateToolbar:Z

.field private suggestedEditsCardView:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;

.field swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 85
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 94
    new-instance v0, Lorg/wikipedia/feed/FeedFragment$FeedCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/feed/FeedFragment$FeedCallback;-><init>(Lorg/wikipedia/feed/FeedFragment;Lorg/wikipedia/feed/FeedFragment$1;)V

    iput-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->feedCallback:Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    .line 95
    new-instance v0, Lorg/wikipedia/feed/FeedFragment$FeedScrollListener;

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/feed/FeedFragment$FeedScrollListener;-><init>(Lorg/wikipedia/feed/FeedFragment;Lorg/wikipedia/feed/FeedFragment$1;)V

    iput-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->feedScrollListener:Lorg/wikipedia/feed/FeedFragment$FeedScrollListener;

    return-void
.end method

.method static synthetic access$1002(Lorg/wikipedia/feed/FeedFragment;Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;)Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/wikipedia/feed/FeedFragment;->suggestedEditsCardView:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/wikipedia/feed/FeedFragment;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lorg/wikipedia/feed/FeedFragment;->startDescriptionEditScreen()V

    return-void
.end method

.method static synthetic access$1200(Lorg/wikipedia/feed/FeedFragment;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lorg/wikipedia/feed/FeedFragment;->shouldElevateToolbar:Z

    return p0
.end method

.method static synthetic access$1202(Lorg/wikipedia/feed/FeedFragment;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lorg/wikipedia/feed/FeedFragment;->shouldElevateToolbar:Z

    return p1
.end method

.method static synthetic access$200(Lorg/wikipedia/feed/FeedFragment;)Lorg/wikipedia/feed/view/FeedAdapter;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/wikipedia/feed/FeedFragment;->feedAdapter:Lorg/wikipedia/feed/view/FeedAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lorg/wikipedia/feed/FeedFragment;)Lorg/wikipedia/analytics/FeedFunnel;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/wikipedia/feed/FeedFragment;->funnel:Lorg/wikipedia/analytics/FeedFunnel;

    return-object p0
.end method

.method static synthetic access$400(Lorg/wikipedia/feed/FeedFragment;)Lorg/wikipedia/feed/FeedCoordinator;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/wikipedia/feed/FeedFragment;->coordinator:Lorg/wikipedia/feed/FeedCoordinator;

    return-object p0
.end method

.method static synthetic access$500(Lorg/wikipedia/feed/FeedFragment;)Lorg/wikipedia/feed/FeedFragment$Callback;
    .locals 0

    .line 85
    invoke-direct {p0}, Lorg/wikipedia/feed/FeedFragment;->getCallback()Lorg/wikipedia/feed/FeedFragment$Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lorg/wikipedia/feed/FeedFragment;Lorg/wikipedia/feed/model/Card;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/feed/FeedFragment;->showDismissCardUndoSnackbar(Lorg/wikipedia/feed/model/Card;I)V

    return-void
.end method

.method static synthetic access$700(Lorg/wikipedia/feed/FeedFragment;Lorg/wikipedia/feed/model/Card;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/FeedFragment;->showCardLangSelectDialog(Lorg/wikipedia/feed/model/Card;)V

    return-void
.end method

.method static synthetic access$800(Lorg/wikipedia/feed/FeedFragment;Ljava/lang/String;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/FeedFragment;->showLanguagesActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lorg/wikipedia/feed/FeedFragment;)Lorg/wikipedia/WikipediaApp;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/wikipedia/feed/FeedFragment;->app:Lorg/wikipedia/WikipediaApp;

    return-object p0
.end method

.method private getCallback()Lorg/wikipedia/feed/FeedFragment$Callback;
    .locals 1

    .line 337
    const-class v0, Lorg/wikipedia/feed/FeedFragment$Callback;

    invoke-static {p0, v0}, Lorg/wikipedia/activity/FragmentUtil;->getCallback(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/FeedFragment$Callback;

    return-object v0
.end method

.method public static newInstance()Lorg/wikipedia/feed/FeedFragment;
    .locals 2

    .line 117
    new-instance v0, Lorg/wikipedia/feed/FeedFragment;

    invoke-direct {v0}, Lorg/wikipedia/feed/FeedFragment;-><init>()V

    const/4 v1, 0x1

    .line 118
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-object v0
.end method

.method private showCardLangSelectDialog(Lorg/wikipedia/feed/model/Card;)V
    .locals 4

    .line 563
    invoke-virtual {p1}, Lorg/wikipedia/feed/model/Card;->type()Lorg/wikipedia/feed/model/CardType;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/feed/model/CardType;->contentType()Lorg/wikipedia/feed/FeedContentType;

    move-result-object p1

    .line 564
    invoke-virtual {p1}, Lorg/wikipedia/feed/FeedContentType;->isPerLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    new-instance v0, Lorg/wikipedia/feed/configure/LanguageItemAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/wikipedia/feed/configure/LanguageItemAdapter;-><init>(Landroid/content/Context;Lorg/wikipedia/feed/FeedContentType;)V

    .line 566
    new-instance v1, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;-><init>(Landroid/content/Context;)V

    .line 567
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/wikipedia/feed/FeedContentType;->getLangCodesDisabled()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 568
    invoke-virtual {v0}, Lorg/wikipedia/feed/configure/LanguageItemAdapter;->getLangList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;->setContentType(Ljava/util/List;Ljava/util/List;)V

    .line 569
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 570
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 571
    invoke-virtual {p1}, Lorg/wikipedia/feed/FeedContentType;->titleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f10012e

    new-instance v3, Lorg/wikipedia/feed/-$$Lambda$FeedFragment$uxo33RJ41-o5CC-c14fNxtroD-E;

    invoke-direct {v3, p0, p1, v2}, Lorg/wikipedia/feed/-$$Lambda$FeedFragment$uxo33RJ41-o5CC-c14fNxtroD-E;-><init>(Lorg/wikipedia/feed/FeedFragment;Lorg/wikipedia/feed/FeedContentType;Ljava/util/List;)V

    .line 572
    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f10012d

    const/4 v1, 0x0

    .line 577
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 578
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 579
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method private showDismissCardUndoSnackbar(Lorg/wikipedia/feed/model/Card;I)V
    .locals 3

    .line 555
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f100187

    .line 556
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/wikipedia/util/FeedbackUtil;->LENGTH_DEFAULT:I

    .line 555
    invoke-static {v0, v1, v2}, Lorg/wikipedia/util/FeedbackUtil;->makeSnackbar(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 558
    new-instance v1, Lorg/wikipedia/feed/-$$Lambda$FeedFragment$v0bLmoLyk0t7oSTM4Yk25Eru4u0;

    invoke-direct {v1, p0, p1, p2}, Lorg/wikipedia/feed/-$$Lambda$FeedFragment$v0bLmoLyk0t7oSTM4Yk25Eru4u0;-><init>(Lorg/wikipedia/feed/FeedFragment;Lorg/wikipedia/feed/model/Card;I)V

    const p1, 0x7f10012f

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 559
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method private showLanguagesActivity(Ljava/lang/String;)V
    .locals 1

    .line 589
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x3b

    .line 590
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showRemoveChineseVariantPrompt()V
    .locals 3

    .line 189
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v0

    const-string v1, "zh-hant"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 190
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v0

    const-string v1, "zh-hans"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->shouldShowRemoveChineseVariantPrompt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1000d4

    .line 193
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f1000d3

    .line 194
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f1000d1

    new-instance v2, Lorg/wikipedia/feed/-$$Lambda$FeedFragment$YPECPSq2FXGtDFNavUbGr9fX_38;

    invoke-direct {v2, p0}, Lorg/wikipedia/feed/-$$Lambda$FeedFragment$YPECPSq2FXGtDFNavUbGr9fX_38;-><init>(Lorg/wikipedia/feed/FeedFragment;)V

    .line 195
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f1000d2

    const/4 v2, 0x0

    .line 197
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 198
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_0
    const/4 v0, 0x0

    .line 200
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->shouldShowRemoveChineseVariantPrompt(Z)V

    return-void
.end method

.method private startDescriptionEditScreen()V
    .locals 9

    .line 264
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->suggestedEditsCardView:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;

    if-nez v0, :cond_0

    return-void

    .line 267
    :cond_0
    invoke-virtual {v0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    invoke-virtual {v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getAction()Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object v6

    .line 268
    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    const/16 v8, 0x37

    if-ne v6, v0, :cond_1

    .line 269
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/feed/FeedFragment;->suggestedEditsCardView:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;

    invoke-virtual {v1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    invoke-virtual {v1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->FEED:Lorg/wikipedia/Constants$InvokeSource;

    invoke-static {v0, v1, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 272
    :cond_1
    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-eq v6, v0, :cond_3

    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v6, v0, :cond_2

    goto :goto_0

    .line 273
    :cond_2
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->suggestedEditsCardView:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;

    .line 274
    invoke-virtual {v0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    invoke-virtual {v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getSourceSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    goto :goto_1

    .line 272
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->suggestedEditsCardView:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;

    .line 273
    invoke-virtual {v0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    invoke-virtual {v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getTargetSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 275
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->suggestedEditsCardView:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;

    .line 276
    invoke-virtual {v0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    invoke-virtual {v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getSourceSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v4

    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->suggestedEditsCardView:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;

    invoke-virtual {v0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    invoke-virtual {v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getTargetSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v5

    sget-object v7, Lorg/wikipedia/Constants$InvokeSource;->FEED:Lorg/wikipedia/Constants$InvokeSource;

    .line 275
    invoke-static/range {v1 .. v7}, Lorg/wikipedia/descriptions/DescriptionEditActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getCardLanguageCode(Lorg/wikipedia/feed/model/Card;)Ljava/lang/String;
    .locals 1

    .line 595
    instance-of v0, p1, Lorg/wikipedia/feed/model/WikiSiteCard;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/wikipedia/feed/model/WikiSiteCard;

    invoke-virtual {p1}, Lorg/wikipedia/feed/model/WikiSiteCard;->wikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public synthetic lambda$onActivityResult$1$FeedFragment()V
    .locals 8

    .line 248
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->suggestedEditsCardView:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;

    invoke-virtual {v0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    invoke-virtual {v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getSourceSummaryForEdit()Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    .line 249
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->suggestedEditsCardView:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;

    invoke-virtual {v0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    invoke-virtual {v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getAction()Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v0, v1, :cond_0

    .line 250
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/wikipedia/commons/FilePageActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 251
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->suggestedEditsCardView:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;

    invoke-virtual {v0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    invoke-virtual {v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getAction()Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->suggestedEditsCardView:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;

    invoke-virtual {v0}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    invoke-virtual {v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getAction()Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/history/HistoryEntry;

    const/16 v3, 0x1e

    invoke-direct {v1, v2, v3}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    invoke-static {v0, v1, v2}, Lorg/wikipedia/page/PageActivity;->newIntentForNewTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 252
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 253
    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    .line 252
    invoke-static/range {v1 .. v7}, Lorg/wikipedia/gallery/GalleryActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;JI)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$showCardLangSelectDialog$3$FeedFragment(Lorg/wikipedia/feed/FeedContentType;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 573
    invoke-virtual {p1}, Lorg/wikipedia/feed/FeedContentType;->getLangCodesDisabled()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 574
    invoke-virtual {p1}, Lorg/wikipedia/feed/FeedContentType;->getLangCodesDisabled()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 575
    invoke-virtual {p0}, Lorg/wikipedia/feed/FeedFragment;->refresh()V

    return-void
.end method

.method public synthetic lambda$showDismissCardUndoSnackbar$2$FeedFragment(Lorg/wikipedia/feed/model/Card;ILandroid/view/View;)V
    .locals 0

    .line 558
    iget-object p3, p0, Lorg/wikipedia/feed/FeedFragment;->coordinator:Lorg/wikipedia/feed/FeedCoordinator;

    invoke-virtual {p3, p1, p2}, Lorg/wikipedia/feed/FeedCoordinatorBase;->undoDismissCard(Lorg/wikipedia/feed/model/Card;I)V

    return-void
.end method

.method public synthetic lambda$showRemoveChineseVariantPrompt$0$FeedFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 196
    sget-object p1, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->CHINESE_VARIANT_REMOVAL:Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    invoke-virtual {p1}, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->text()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/wikipedia/feed/FeedFragment;->showLanguagesActivity(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 209
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 210
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 232
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x3a

    if-ne p1, p3, :cond_0

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    .line 235
    iget-object p1, p0, Lorg/wikipedia/feed/FeedFragment;->coordinator:Lorg/wikipedia/feed/FeedCoordinator;

    invoke-virtual {p1}, Lorg/wikipedia/feed/FeedCoordinatorBase;->updateHiddenCards()V

    .line 236
    invoke-virtual {p0}, Lorg/wikipedia/feed/FeedFragment;->refresh()V

    goto/16 :goto_1

    :cond_0
    const/16 p3, 0x29

    const/4 v0, 0x1

    if-ne p1, p3, :cond_1

    if-eq p2, v0, :cond_2

    :cond_1
    const/16 p3, 0x3b

    if-ne p1, p3, :cond_3

    if-ne p2, v0, :cond_3

    .line 239
    :cond_2
    invoke-virtual {p0}, Lorg/wikipedia/feed/FeedFragment;->refresh()V

    goto :goto_1

    :cond_3
    const/16 p3, 0x37

    if-ne p1, p3, :cond_5

    .line 241
    invoke-static {}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->get()Lorg/wikipedia/analytics/SuggestedEditsFunnel;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->log()V

    .line 242
    invoke-static {}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->reset()V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_5

    .line 244
    iget-object p1, p0, Lorg/wikipedia/feed/FeedFragment;->suggestedEditsCardView:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 245
    iget-object p1, p0, Lorg/wikipedia/feed/FeedFragment;->suggestedEditsCardView:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;->refreshCardContent()V

    .line 246
    iget-object p1, p0, Lorg/wikipedia/feed/FeedFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v0, :cond_4

    iget-object p1, p0, Lorg/wikipedia/feed/FeedFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lorg/wikipedia/feed/FeedFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCode()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v3, p1

    .line 247
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p1, p0, Lorg/wikipedia/feed/FeedFragment;->suggestedEditsCardView:Lorg/wikipedia/feed/suggestededits/SuggestedEditsCardView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/view/DefaultFeedCardView;->getCard()Lorg/wikipedia/feed/model/Card;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    invoke-virtual {p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;->getAction()Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v4, 0x1

    new-instance v5, Lorg/wikipedia/feed/-$$Lambda$FeedFragment$SGkcGiOern9DC00QzCaH2Y8qjGg;

    invoke-direct {v5, p0}, Lorg/wikipedia/feed/-$$Lambda$FeedFragment$SGkcGiOern9DC00QzCaH2Y8qjGg;-><init>(Lorg/wikipedia/feed/FeedFragment;)V

    invoke-static/range {v0 .. v5}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->show(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;ZLjava/lang/String;ZLorg/wikipedia/suggestededits/SuggestedEditsSnackbars$OpenPageListener;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 124
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/feed/FeedFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 126
    new-instance v0, Lorg/wikipedia/feed/FeedCoordinator;

    invoke-direct {v0, p1}, Lorg/wikipedia/feed/FeedCoordinator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->coordinator:Lorg/wikipedia/feed/FeedCoordinator;

    .line 127
    iget-object p1, p0, Lorg/wikipedia/feed/FeedFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/wikipedia/feed/FeedCoordinatorBase;->more(Lorg/wikipedia/dataclient/WikiSite;)V

    .line 128
    new-instance p1, Lorg/wikipedia/analytics/FeedFunnel;

    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-direct {p1, v0}, Lorg/wikipedia/analytics/FeedFunnel;-><init>(Lorg/wikipedia/WikipediaApp;)V

    iput-object p1, p0, Lorg/wikipedia/feed/FeedFragment;->funnel:Lorg/wikipedia/analytics/FeedFunnel;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 134
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0c004f

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 137
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/feed/FeedFragment;->unbinder:Lbutterknife/Unbinder;

    .line 138
    new-instance p2, Lorg/wikipedia/feed/view/FeedAdapter;

    iget-object p3, p0, Lorg/wikipedia/feed/FeedFragment;->coordinator:Lorg/wikipedia/feed/FeedCoordinator;

    iget-object v1, p0, Lorg/wikipedia/feed/FeedFragment;->feedCallback:Lorg/wikipedia/feed/view/FeedAdapter$Callback;

    invoke-direct {p2, p3, v1}, Lorg/wikipedia/feed/view/FeedAdapter;-><init>(Lorg/wikipedia/feed/FeedCoordinatorBase;Lorg/wikipedia/feed/view/FeedAdapter$Callback;)V

    iput-object p2, p0, Lorg/wikipedia/feed/FeedFragment;->feedAdapter:Lorg/wikipedia/feed/view/FeedAdapter;

    .line 139
    iget-object p3, p0, Lorg/wikipedia/feed/FeedFragment;->feedView:Lorg/wikipedia/feed/view/FeedView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 140
    iget-object p2, p0, Lorg/wikipedia/feed/FeedFragment;->feedView:Lorg/wikipedia/feed/view/FeedView;

    iget-object p3, p0, Lorg/wikipedia/feed/FeedFragment;->feedScrollListener:Lorg/wikipedia/feed/FeedFragment$FeedScrollListener;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 142
    iget-object p2, p0, Lorg/wikipedia/feed/FeedFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 p3, 0x1

    new-array p3, p3, [I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0400c5

    invoke-static {v1, v2}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result v1

    aput v1, p3, v0

    invoke-virtual {p2, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 143
    iget-object p2, p0, Lorg/wikipedia/feed/FeedFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance p3, Lorg/wikipedia/feed/-$$Lambda$XqbxIm7lMtDYr7fhEjQ4WdGaQYk;

    invoke-direct {p3, p0}, Lorg/wikipedia/feed/-$$Lambda$XqbxIm7lMtDYr7fhEjQ4WdGaQYk;-><init>(Lorg/wikipedia/feed/FeedFragment;)V

    invoke-virtual {p2, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 145
    iget-object p2, p0, Lorg/wikipedia/feed/FeedFragment;->coordinator:Lorg/wikipedia/feed/FeedCoordinator;

    new-instance p3, Lorg/wikipedia/feed/FeedFragment$1;

    invoke-direct {p3, p0}, Lorg/wikipedia/feed/FeedFragment$1;-><init>(Lorg/wikipedia/feed/FeedFragment;)V

    invoke-virtual {p2, p3}, Lorg/wikipedia/feed/FeedCoordinatorBase;->setFeedUpdateListener(Lorg/wikipedia/feed/FeedCoordinatorBase$FeedUpdateListener;)V

    .line 179
    invoke-direct {p0}, Lorg/wikipedia/feed/FeedFragment;->getCallback()Lorg/wikipedia/feed/FeedFragment$Callback;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 180
    invoke-direct {p0}, Lorg/wikipedia/feed/FeedFragment;->getCallback()Lorg/wikipedia/feed/FeedFragment$Callback;

    move-result-object p2

    invoke-virtual {p0}, Lorg/wikipedia/feed/FeedFragment;->shouldElevateToolbar()Z

    move-result p3

    invoke-interface {p2, p3}, Lorg/wikipedia/feed/FeedFragment$Callback;->updateToolbarElevation(Z)V

    .line 183
    :cond_0
    invoke-static {}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->manualSync()V

    .line 184
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->incrementExploreFeedVisitCount()V

    return-object p1
.end method

.method onCustomizeClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 v0, -0x1

    .line 305
    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/FeedFragment;->showConfigureActivity(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 295
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 296
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->coordinator:Lorg/wikipedia/feed/FeedCoordinator;

    invoke-virtual {v0}, Lorg/wikipedia/feed/FeedCoordinator;->reset()V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 283
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->coordinator:Lorg/wikipedia/feed/FeedCoordinator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/FeedCoordinatorBase;->setFeedUpdateListener(Lorg/wikipedia/feed/FeedCoordinatorBase$FeedUpdateListener;)V

    .line 284
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 285
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->feedView:Lorg/wikipedia/feed/view/FeedView;

    iget-object v2, p0, Lorg/wikipedia/feed/FeedFragment;->feedScrollListener:Lorg/wikipedia/feed/FeedFragment$FeedScrollListener;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 286
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->feedView:Lorg/wikipedia/feed/view/FeedView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 287
    iput-object v1, p0, Lorg/wikipedia/feed/FeedFragment;->feedAdapter:Lorg/wikipedia/feed/view/FeedAdapter;

    .line 288
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 289
    iput-object v1, p0, Lorg/wikipedia/feed/FeedFragment;->unbinder:Lbutterknife/Unbinder;

    .line 290
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onGoOffline()V
    .locals 1

    .line 313
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->feedAdapter:Lorg/wikipedia/feed/view/FeedAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 314
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->coordinator:Lorg/wikipedia/feed/FeedCoordinator;

    invoke-virtual {v0}, Lorg/wikipedia/feed/FeedCoordinatorBase;->requestOfflineCard()V

    return-void
.end method

.method public onGoOnline()V
    .locals 2

    .line 318
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->feedAdapter:Lorg/wikipedia/feed/view/FeedAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 319
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->coordinator:Lorg/wikipedia/feed/FeedCoordinator;

    invoke-virtual {v0}, Lorg/wikipedia/feed/FeedCoordinatorBase;->removeOfflineCard()V

    .line 320
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->coordinator:Lorg/wikipedia/feed/FeedCoordinator;

    invoke-virtual {v0}, Lorg/wikipedia/feed/FeedCoordinatorBase;->incrementAge()V

    .line 321
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->coordinator:Lorg/wikipedia/feed/FeedCoordinator;

    iget-object v1, p0, Lorg/wikipedia/feed/FeedFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/FeedCoordinatorBase;->more(Lorg/wikipedia/dataclient/WikiSite;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 226
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 227
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->funnel:Lorg/wikipedia/analytics/FeedFunnel;

    invoke-virtual {v0}, Lorg/wikipedia/analytics/FeedFunnel;->exit()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 215
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 216
    invoke-direct {p0}, Lorg/wikipedia/feed/FeedFragment;->showRemoveChineseVariantPrompt()V

    .line 217
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->funnel:Lorg/wikipedia/analytics/FeedFunnel;

    invoke-virtual {v0}, Lorg/wikipedia/analytics/FeedFunnel;->enter()V

    .line 221
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->feedAdapter:Lorg/wikipedia/feed/view/FeedAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public refresh()V
    .locals 2

    .line 325
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->funnel:Lorg/wikipedia/analytics/FeedFunnel;

    iget-object v1, p0, Lorg/wikipedia/feed/FeedFragment;->coordinator:Lorg/wikipedia/feed/FeedCoordinator;

    invoke-virtual {v1}, Lorg/wikipedia/feed/FeedCoordinatorBase;->getAge()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/analytics/FeedFunnel;->refresh(I)V

    .line 326
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->emptyContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->coordinator:Lorg/wikipedia/feed/FeedCoordinator;

    invoke-virtual {v0}, Lorg/wikipedia/feed/FeedCoordinator;->reset()V

    .line 328
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->feedAdapter:Lorg/wikipedia/feed/view/FeedAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 329
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->coordinator:Lorg/wikipedia/feed/FeedCoordinator;

    iget-object v1, p0, Lorg/wikipedia/feed/FeedFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/feed/FeedCoordinatorBase;->more(Lorg/wikipedia/dataclient/WikiSite;)V

    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .line 309
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->feedView:Lorg/wikipedia/feed/view/FeedView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public shouldElevateToolbar()Z
    .locals 1

    .line 204
    iget-boolean v0, p0, Lorg/wikipedia/feed/FeedFragment;->shouldElevateToolbar:Z

    return v0
.end method

.method public showConfigureActivity(I)V
    .locals 1

    .line 584
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/wikipedia/feed/configure/ConfigureActivity;->newIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x3a

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public updateHiddenCards()V
    .locals 1

    .line 333
    iget-object v0, p0, Lorg/wikipedia/feed/FeedFragment;->coordinator:Lorg/wikipedia/feed/FeedCoordinator;

    invoke-virtual {v0}, Lorg/wikipedia/feed/FeedCoordinatorBase;->updateHiddenCards()V

    return-void
.end method
