.class public Lorg/wikipedia/page/leadimages/LeadImagesHandler;
.super Ljava/lang/Object;
.source "LeadImagesHandler.java"


# static fields
.field private static final MIN_SCREEN_HEIGHT_DP:I = 0x1e0


# instance fields
.field private callToActionIsTranslation:Z

.field private callToActionSourceSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

.field private callToActionTargetSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

.field private captionSourcePageTitle:Lorg/wikipedia/page/PageTitle;

.field private captionTargetPageTitle:Lorg/wikipedia/page/PageTitle;

.field private displayHeightDp:I

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private imageEditType:Lorg/wikipedia/Constants$ImageEditType;

.field private imagePage:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

.field private final pageHeaderView:Lorg/wikipedia/page/leadimages/PageHeaderView;

.field private final parentFragment:Lorg/wikipedia/page/PageFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/views/ObservableWebView;Lorg/wikipedia/page/leadimages/PageHeaderView;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 78
    iput-object p1, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->parentFragment:Lorg/wikipedia/page/PageFragment;

    .line 79
    iput-object p3, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->pageHeaderView:Lorg/wikipedia/page/leadimages/PageHeaderView;

    .line 80
    invoke-virtual {p3, p2}, Lorg/wikipedia/views/LinearLayoutOverWebView;->setWebView(Lorg/wikipedia/views/ObservableWebView;)V

    .line 82
    invoke-virtual {p2, p3}, Lorg/wikipedia/views/ObservableWebView;->addOnScrollChangeListener(Lorg/wikipedia/views/ObservableWebView$OnScrollChangeListener;)V

    .line 84
    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->initDisplayDimensions()V

    .line 85
    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->initArticleHeaderView()V

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/page/leadimages/LeadImagesHandler;)Lorg/wikipedia/Constants$ImageEditType;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->imageEditType:Lorg/wikipedia/Constants$ImageEditType;

    return-object p0
.end method

.method static synthetic access$100(Lorg/wikipedia/page/leadimages/LeadImagesHandler;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    .line 52
    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/wikipedia/page/leadimages/LeadImagesHandler;)Lorg/wikipedia/dataclient/mwapi/MwQueryPage;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->imagePage:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    return-object p0
.end method

.method static synthetic access$300(Lorg/wikipedia/page/leadimages/LeadImagesHandler;)Lorg/wikipedia/suggestededits/PageSummaryForEdit;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionTargetSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    return-object p0
.end method

.method static synthetic access$400(Lorg/wikipedia/page/leadimages/LeadImagesHandler;)Lorg/wikipedia/suggestededits/PageSummaryForEdit;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionSourceSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    return-object p0
.end method

.method static synthetic access$500(Lorg/wikipedia/page/leadimages/LeadImagesHandler;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionIsTranslation:Z

    return p0
.end method

.method private finalizeCallToAction()V
    .locals 17

    move-object/from16 v0, p0

    .line 179
    sget-object v1, Lorg/wikipedia/page/leadimages/LeadImagesHandler$2;->$SwitchMap$org$wikipedia$Constants$ImageEditType:[I

    iget-object v2, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->imageEditType:Lorg/wikipedia/Constants$ImageEditType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 193
    new-instance v1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    iget-object v2, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->captionSourcePageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->captionSourcePageTitle:Lorg/wikipedia/page/PageTitle;

    .line 194
    invoke-virtual {v7}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v8

    iget-object v2, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->imagePage:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/gallery/ImageInfo;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/gallery/ExtMetadata;->imageDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/StringUtils;->defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    iget-object v2, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->imagePage:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 195
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/gallery/ImageInfo;->getThumbUrl()Ljava/lang/String;

    move-result-object v10

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionSourceSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 196
    iget-object v1, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->pageHeaderView:Lorg/wikipedia/page/leadimages/PageHeaderView;

    iget-object v2, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->parentFragment:Lorg/wikipedia/page/PageFragment;

    const v3, 0x7f10039f

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/wikipedia/page/leadimages/PageHeaderView;->setUpCallToAction(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 184
    :cond_0
    iput-boolean v2, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionIsTranslation:Z

    .line 185
    new-instance v1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    iget-object v3, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->captionSourcePageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v4

    iget-object v3, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->captionSourcePageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->captionSourcePageTitle:Lorg/wikipedia/page/PageTitle;

    .line 186
    invoke-virtual {v6}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v7

    iget-object v3, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->captionSourcePageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {p0 .. p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getLeadImageUrl()Ljava/lang/String;

    move-result-object v9

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionSourceSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 188
    new-instance v1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    iget-object v3, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->captionTargetPageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v11

    iget-object v3, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->captionTargetPageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->captionTargetPageTitle:Lorg/wikipedia/page/PageTitle;

    .line 189
    invoke-virtual {v13}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getLeadImageUrl()Ljava/lang/String;

    move-result-object v16

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionTargetSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 190
    iget-object v1, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->pageHeaderView:Lorg/wikipedia/page/leadimages/PageHeaderView;

    iget-object v3, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->parentFragment:Lorg/wikipedia/page/PageFragment;

    const v4, 0x7f1003a0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v6

    invoke-virtual {v6}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v6

    iget-object v7, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->captionTargetPageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v7}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v7

    invoke-virtual {v7}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {v3, v4, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/wikipedia/page/leadimages/PageHeaderView;->setUpCallToAction(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v1, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->pageHeaderView:Lorg/wikipedia/page/leadimages/PageHeaderView;

    iget-object v2, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->parentFragment:Lorg/wikipedia/page/PageFragment;

    const v3, 0x7f1003a1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/wikipedia/page/leadimages/PageHeaderView;->setUpCallToAction(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .line 286
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->parentFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method private getLeadImageUrl()Ljava/lang/String;
    .locals 4

    .line 201
    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/Page;->getPageProperties()Lorg/wikipedia/page/PageProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageProperties;->getLeadImageUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    .line 208
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 209
    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->scheme()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->authority()Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 213
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 215
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 216
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 218
    :cond_3
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 219
    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 220
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 221
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPage()Lorg/wikipedia/page/Page;
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->parentFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v0

    return-object v0
.end method

.method private getTitle()Lorg/wikipedia/page/PageTitle;
    .locals 1

    .line 277
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->parentFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    return-object v0
.end method

.method private initArticleHeaderView()V
    .locals 2

    .line 226
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->pageHeaderView:Lorg/wikipedia/page/leadimages/PageHeaderView;

    new-instance v1, Lorg/wikipedia/page/leadimages/LeadImagesHandler$1;

    invoke-direct {v1, p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler$1;-><init>(Lorg/wikipedia/page/leadimages/LeadImagesHandler;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/page/leadimages/PageHeaderView;->setCallback(Lorg/wikipedia/page/leadimages/PageHeaderView$Callback;)V

    return-void
.end method

.method private initDisplayDimensions()V
    .locals 2

    .line 117
    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getDisplayHeightPx()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getDensityScalar()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->displayHeightDp:I

    return-void
.end method

.method private isMainPage()Z
    .locals 1

    .line 273
    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/Page;->isMainPage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$updateCallToAction$0(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p0

    invoke-virtual {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->isEditProtected()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$updateCallToAction$1(Ljava/lang/String;Ljava/lang/Boolean;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 145
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lio/reactivex/rxjava3/core/Observable;->empty()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/wikipedia/dataclient/mwapi/media/MediaHelper;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/media/MediaHelper;

    invoke-virtual {p1, p0}, Lorg/wikipedia/dataclient/mwapi/media/MediaHelper;->getImageCaptions(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lorg/wikipedia/dataclient/WikiSite;

    const-string v1, "https://commons.wikimedia.org/"

    invoke-direct {v0, v1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v0

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lorg/wikipedia/dataclient/Service;->getImageInfo(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lorg/wikipedia/page/leadimages/-$$Lambda$PDfeA8OZH5GeGa0n1T6NJIOLzm0;->INSTANCE:Lorg/wikipedia/page/leadimages/-$$Lambda$PDfeA8OZH5GeGa0n1T6NJIOLzm0;

    .line 145
    invoke-static {p1, p0, v0}, Lio/reactivex/rxjava3/core/Observable;->zip(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private updateCallToAction()V
    .locals 4

    .line 136
    invoke-virtual {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->dispose()V

    .line 137
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->pageHeaderView:Lorg/wikipedia/page/leadimages/PageHeaderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/wikipedia/page/leadimages/PageHeaderView;->setUpCallToAction(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getLeadImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getLeadImageUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/wikipedia/commons/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/Page;->getPageProperties()Lorg/wikipedia/page/PageProperties;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageProperties;->getLeadImageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v2, Lorg/wikipedia/dataclient/WikiSite;

    const-string v3, "https://commons.wikimedia.org/"

    invoke-direct {v2, v3}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/wikipedia/dataclient/Service;->getProtectionInfo(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 143
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    sget-object v3, Lorg/wikipedia/page/leadimages/-$$Lambda$LeadImagesHandler$B2VY3p3nFuzHCyOgvbHu-cRpecE;->INSTANCE:Lorg/wikipedia/page/leadimages/-$$Lambda$LeadImagesHandler$B2VY3p3nFuzHCyOgvbHu-cRpecE;

    .line 144
    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lorg/wikipedia/page/leadimages/-$$Lambda$LeadImagesHandler$a5XK_VCw1B0wGCuqNvpiLmXV0PA;

    invoke-direct {v3, v0}, Lorg/wikipedia/page/leadimages/-$$Lambda$LeadImagesHandler$a5XK_VCw1B0wGCuqNvpiLmXV0PA;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lorg/wikipedia/page/leadimages/-$$Lambda$LeadImagesHandler$zmn2vXhErQuf1XLOQ-R6Of6kofs;

    invoke-direct {v3, p0, v0}, Lorg/wikipedia/page/leadimages/-$$Lambda$LeadImagesHandler$zmn2vXhErQuf1XLOQ-R6Of6kofs;-><init>(Lorg/wikipedia/page/leadimages/LeadImagesHandler;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 168
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lorg/wikipedia/page/leadimages/-$$Lambda$LeadImagesHandler$qJc5-q1yok0D6EcU3axaJm7chKQ;

    invoke-direct {v2, p0}, Lorg/wikipedia/page/leadimages/-$$Lambda$LeadImagesHandler$qJc5-q1yok0D6EcU3axaJm7chKQ;-><init>(Lorg/wikipedia/page/leadimages/LeadImagesHandler;)V

    .line 169
    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    .line 142
    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 290
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionSourceSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 292
    iput-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionTargetSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionIsTranslation:Z

    return-void
.end method

.method public getCallToActionEditLang()Ljava/lang/String;
    .locals 1

    .line 297
    iget-boolean v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionIsTranslation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionTargetSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionSourceSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionSourceSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 300
    :cond_2
    iget-boolean v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionIsTranslation:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionTargetSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionSourceSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 301
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getLeadImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->isLeadImageEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->pageHeaderView:Lorg/wikipedia/page/leadimages/PageHeaderView;

    invoke-virtual {v0}, Lorg/wikipedia/page/leadimages/PageHeaderView;->copyBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTopMargin()I
    .locals 1

    .line 109
    invoke-virtual {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->isLeadImageEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->parentFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/DimenUtil;->leadImageHeightForDevice(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->parentFragment:Lorg/wikipedia/page/PageFragment;

    .line 110
    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getToolbarMargin()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    .line 109
    invoke-static {v0}, Lorg/wikipedia/util/DimenUtil;->roundedPxToDp(F)I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->pageHeaderView:Lorg/wikipedia/page/leadimages/PageHeaderView;

    invoke-virtual {v0}, Lorg/wikipedia/page/leadimages/PageHeaderView;->hide()V

    return-void
.end method

.method public isLeadImageEnabled()Z
    .locals 2

    .line 101
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isImageDownloadEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/DimenUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->displayHeightDp:I

    const/16 v1, 0x1e0

    if-lt v0, v1, :cond_0

    .line 104
    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->isMainPage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getLeadImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$updateCallToAction$2$LeadImagesHandler(Ljava/lang/String;Landroid/util/Pair;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 148
    new-instance v0, Lorg/wikipedia/page/PageTitle;

    new-instance v1, Lorg/wikipedia/dataclient/WikiSite;

    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https://commons.wikimedia.org/"

    invoke-direct {v1, v3, v2}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    iput-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->captionSourcePageTitle:Lorg/wikipedia/page/PageTitle;

    .line 149
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/wikipedia/page/PageTitle;->setDescription(Ljava/lang/String;)V

    .line 150
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->imagePage:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->imageEditType:Lorg/wikipedia/Constants$ImageEditType;

    .line 152
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    sget-object p1, Lorg/wikipedia/Constants$ImageEditType;->ADD_CAPTION:Lorg/wikipedia/Constants$ImageEditType;

    iput-object p1, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->imageEditType:Lorg/wikipedia/Constants$ImageEditType;

    .line 154
    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageId()I

    move-result p1

    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/wikipedia/commons/ImageTagsProvider;->getImageTagsObservable(ILjava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1

    .line 156
    :cond_0
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 157
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 158
    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 159
    sget-object v0, Lorg/wikipedia/Constants$ImageEditType;->ADD_CAPTION_TRANSLATION:Lorg/wikipedia/Constants$ImageEditType;

    iput-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->imageEditType:Lorg/wikipedia/Constants$ImageEditType;

    .line 160
    new-instance v0, Lorg/wikipedia/page/PageTitle;

    new-instance v2, Lorg/wikipedia/dataclient/WikiSite;

    invoke-direct {v2, v3, v1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p1, v2}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    iput-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->captionTargetPageTitle:Lorg/wikipedia/page/PageTitle;

    .line 165
    :cond_2
    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageId()I

    move-result p1

    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/wikipedia/commons/ImageTagsProvider;->getImageTagsObservable(ILjava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$updateCallToAction$3$LeadImagesHandler(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->imageEditType:Lorg/wikipedia/Constants$ImageEditType;

    sget-object v1, Lorg/wikipedia/Constants$ImageEditType;->ADD_CAPTION:Lorg/wikipedia/Constants$ImageEditType;

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 171
    sget-object p1, Lorg/wikipedia/Constants$ImageEditType;->ADD_TAGS:Lorg/wikipedia/Constants$ImageEditType;

    iput-object p1, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->imageEditType:Lorg/wikipedia/Constants$ImageEditType;

    .line 173
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->finalizeCallToAction()V

    return-void
.end method

.method public loadLeadImage()V
    .locals 2

    .line 121
    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getLeadImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->initDisplayDimensions()V

    .line 126
    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->isMainPage()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->isLeadImageEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->pageHeaderView:Lorg/wikipedia/page/leadimages/PageHeaderView;

    invoke-virtual {v1}, Lorg/wikipedia/page/leadimages/PageHeaderView;->show()V

    .line 128
    iget-object v1, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->pageHeaderView:Lorg/wikipedia/page/leadimages/PageHeaderView;

    invoke-virtual {v1, v0}, Lorg/wikipedia/page/leadimages/PageHeaderView;->loadImage(Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->updateCallToAction()V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->pageHeaderView:Lorg/wikipedia/page/leadimages/PageHeaderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/wikipedia/page/leadimages/PageHeaderView;->loadImage(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public openImageInGallery(Ljava/lang/String;)V
    .locals 14

    .line 249
    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->isLeadImageEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getPage()Lorg/wikipedia/page/Page;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/Page;->getPageProperties()Lorg/wikipedia/page/PageProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageProperties;->getLeadImageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez p1, :cond_0

    .line 253
    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p1

    :goto_0
    move-object v6, p1

    .line 255
    new-instance p1, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->pageHeaderView:Lorg/wikipedia/page/leadimages/PageHeaderView;

    iget-object v0, v0, Lorg/wikipedia/page/leadimages/PageHeaderView;->image:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v8, v0

    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->pageHeaderView:Lorg/wikipedia/page/leadimages/PageHeaderView;

    iget-object v0, v0, Lorg/wikipedia/page/leadimages/PageHeaderView;->image:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 256
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    int-to-float v9, v0

    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->pageHeaderView:Lorg/wikipedia/page/leadimages/PageHeaderView;

    iget-object v0, v0, Lorg/wikipedia/page/leadimages/PageHeaderView;->image:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v10, v0

    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->pageHeaderView:Lorg/wikipedia/page/leadimages/PageHeaderView;

    iget-object v0, v0, Lorg/wikipedia/page/leadimages/PageHeaderView;->image:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v11, v0

    .line 257
    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getLeadImageUrl()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    move-object v7, p1

    invoke-direct/range {v7 .. v13}, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;-><init>(FFFFLjava/lang/String;Z)V

    .line 259
    invoke-static {p1}, Lorg/wikipedia/gallery/GalleryActivity;->setTransitionInfo(Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;)V

    .line 262
    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->pageHeaderView:Lorg/wikipedia/page/leadimages/PageHeaderView;

    iget-object v0, v0, Lorg/wikipedia/page/leadimages/PageHeaderView;->image:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f100452

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p1

    .line 264
    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v1, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->parentFragment:Lorg/wikipedia/page/PageFragment;

    .line 265
    invoke-virtual {v1}, Lorg/wikipedia/page/PageFragment;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v4

    iget-object v1, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->parentFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageFragment;->getRevision()J

    move-result-wide v7

    const/4 v9, 0x0

    .line 264
    invoke-static/range {v3 .. v9}, Lorg/wikipedia/gallery/GalleryActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;JI)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x34

    .line 267
    invoke-virtual {p1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 264
    invoke-virtual {v0, v1, v2, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method
