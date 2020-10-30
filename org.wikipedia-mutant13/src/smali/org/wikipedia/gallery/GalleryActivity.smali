.class public Lorg/wikipedia/gallery/GalleryActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "GalleryActivity.java"

# interfaces
.implements Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$Callback;
.implements Lorg/wikipedia/gallery/GalleryItemFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/gallery/GalleryActivity$MediaDownloadReceiverCallback;,
        Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;,
        Lorg/wikipedia/gallery/GalleryActivity$GalleryPageChangeListener;
    }
.end annotation


# static fields
.field public static final ACTIVITY_REQUEST_ADD_IMAGE_TAGS:I = 0x4

.field private static final ACTIVITY_REQUEST_DESCRIPTION_EDIT:I = 0x2

.field public static final ACTIVITY_RESULT_IMAGE_CAPTION_ADDED:I = 0x3

.field public static final ACTIVITY_RESULT_PAGE_SELECTED:I = 0x1

.field public static final EXTRA_FEATURED_IMAGE:Ljava/lang/String; = "featuredImage"

.field public static final EXTRA_FEATURED_IMAGE_AGE:Ljava/lang/String; = "featuredImageAge"

.field public static final EXTRA_FILENAME:Ljava/lang/String; = "filename"

.field public static final EXTRA_PAGETITLE:Ljava/lang/String; = "pageTitle"

.field public static final EXTRA_REVISION:Ljava/lang/String; = "revision"

.field public static final EXTRA_SOURCE:Ljava/lang/String; = "source"

.field public static final EXTRA_WIKI:Ljava/lang/String; = "wiki"

.field private static TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;


# instance fields
.field private app:Lorg/wikipedia/WikipediaApp;

.field private bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

.field byIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field captionEditButton:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private controlsShowing:Z

.field creditText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ctaButtonText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ctaContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field descriptionText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private downloadReceiver:Lorg/wikipedia/gallery/MediaDownloadReceiver;

.field private downloadReceiverCallback:Lorg/wikipedia/gallery/GalleryActivity$MediaDownloadReceiverCallback;

.field errorView:Lorg/wikipedia/views/WikiErrorView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private funnel:Lorg/wikipedia/analytics/GalleryFunnel;

.field private galleryAdapter:Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;

.field galleryDescriptionContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field galleryPager:Landroidx/viewpager2/widget/ViewPager2;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private imageCaptionDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

.field private imageEditType:Lorg/wikipedia/Constants$ImageEditType;

.field infoContainer:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field infoGradient:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private initialFilename:Ljava/lang/String;

.field private initialImageIndex:I

.field licenseContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field licenseIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private linkMovementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

.field private pageChangeListener:Lorg/wikipedia/gallery/GalleryActivity$GalleryPageChangeListener;

.field private pageTitle:Lorg/wikipedia/page/PageTitle;

.field progressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private revision:J

.field saIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private sourceWiki:Lorg/wikipedia/dataclient/WikiSite;

.field private targetLanguageCode:Ljava/lang/String;

.field toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field toolbarContainer:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field toolbarGradient:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field transitionReceiver:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 103
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 120
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 121
    new-instance v0, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-direct {v0}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    .line 145
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->controlsShowing:Z

    .line 151
    new-instance v0, Lorg/wikipedia/gallery/GalleryActivity$GalleryPageChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/gallery/GalleryActivity$GalleryPageChangeListener;-><init>(Lorg/wikipedia/gallery/GalleryActivity;Lorg/wikipedia/gallery/GalleryActivity$1;)V

    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->pageChangeListener:Lorg/wikipedia/gallery/GalleryActivity$GalleryPageChangeListener;

    const/4 v0, -0x1

    .line 164
    iput v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->initialImageIndex:I

    .line 167
    new-instance v0, Lorg/wikipedia/gallery/MediaDownloadReceiver;

    invoke-direct {v0}, Lorg/wikipedia/gallery/MediaDownloadReceiver;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->downloadReceiver:Lorg/wikipedia/gallery/MediaDownloadReceiver;

    .line 168
    new-instance v0, Lorg/wikipedia/gallery/GalleryActivity$MediaDownloadReceiverCallback;

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/gallery/GalleryActivity$MediaDownloadReceiverCallback;-><init>(Lorg/wikipedia/gallery/GalleryActivity;Lorg/wikipedia/gallery/GalleryActivity$1;)V

    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->downloadReceiverCallback:Lorg/wikipedia/gallery/GalleryActivity$MediaDownloadReceiverCallback;

    .line 586
    new-instance v0, Lorg/wikipedia/page/LinkMovementMethodExt;

    new-instance v1, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$U-1O8JgHXSEJ-qcm7yFfqBjzlVU;

    invoke-direct {v1, p0}, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$U-1O8JgHXSEJ-qcm7yFfqBjzlVU;-><init>(Lorg/wikipedia/gallery/GalleryActivity;)V

    invoke-direct {v0, v1}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->linkMovementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    return-void
.end method

.method static synthetic access$200(Lorg/wikipedia/gallery/GalleryActivity;)Lorg/wikipedia/gallery/GalleryItemFragment;
    .locals 0

    .line 103
    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryActivity;->getCurrentItem()Lorg/wikipedia/gallery/GalleryItemFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lorg/wikipedia/gallery/GalleryActivity;)Lorg/wikipedia/analytics/GalleryFunnel;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryActivity;->funnel:Lorg/wikipedia/analytics/GalleryFunnel;

    return-object p0
.end method

.method static synthetic access$400(Lorg/wikipedia/gallery/GalleryActivity;)Lorg/wikipedia/page/PageTitle;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryActivity;->pageTitle:Lorg/wikipedia/page/PageTitle;

    return-object p0
.end method

.method static synthetic access$500(Lorg/wikipedia/gallery/GalleryActivity;Z)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lorg/wikipedia/gallery/GalleryActivity;->hideTransitionReceiver(Z)V

    return-void
.end method

.method private applyGalleryList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/gallery/MediaListItem;",
            ">;)V"
        }
    .end annotation

    .line 684
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->initialFilename:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    .line 685
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/wikipedia/gallery/MediaListItem;

    .line 687
    invoke-virtual {v3}, Lorg/wikipedia/gallery/MediaListItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/wikipedia/util/StringUtil;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/wikipedia/gallery/GalleryActivity;->initialFilename:Ljava/lang/String;

    invoke-static {v5}, Lorg/wikipedia/util/StringUtil;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 688
    invoke-interface {p1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    if-ne v0, v2, :cond_3

    .line 697
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 698
    new-instance p1, Lorg/wikipedia/gallery/MediaListItem;

    iget-object v3, p0, Lorg/wikipedia/gallery/GalleryActivity;->initialFilename:Ljava/lang/String;

    invoke-direct {p1, v3}, Lorg/wikipedia/gallery/MediaListItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object p1, v0

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    .line 703
    :cond_3
    :goto_1
    iget-object v3, p0, Lorg/wikipedia/gallery/GalleryActivity;->galleryAdapter:Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;

    invoke-virtual {v3, p1}, Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;->setList(Ljava/util/List;)V

    if-eq v0, v2, :cond_4

    .line 706
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->galleryPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    goto :goto_2

    .line 707
    :cond_4
    iget p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->initialImageIndex:I

    if-ltz p1, :cond_5

    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->galleryAdapter:Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;

    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 709
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->galleryPager:Landroidx/viewpager2/widget/ViewPager2;

    iget v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->initialImageIndex:I

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_5
    :goto_2
    return-void
.end method

.method private decideImageEditType(Lorg/wikipedia/gallery/GalleryItemFragment;I)V
    .locals 4

    const/4 v0, 0x0

    .line 771
    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->imageEditType:Lorg/wikipedia/Constants$ImageEditType;

    .line 772
    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/gallery/ImageInfo;->getCaptions()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/gallery/GalleryActivity;->sourceWiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 773
    sget-object p1, Lorg/wikipedia/Constants$ImageEditType;->ADD_CAPTION:Lorg/wikipedia/Constants$ImageEditType;

    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->imageEditType:Lorg/wikipedia/Constants$ImageEditType;

    .line 774
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->sourceWiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->targetLanguageCode:Ljava/lang/String;

    .line 775
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->ctaButtonText:Landroid/widget/TextView;

    const p2, 0x7f10013e

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 780
    sget-object p1, Lorg/wikipedia/Constants$ImageEditType;->ADD_TAGS:Lorg/wikipedia/Constants$ImageEditType;

    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->imageEditType:Lorg/wikipedia/Constants$ImageEditType;

    .line 781
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->ctaButtonText:Landroid/widget/TextView;

    const p2, 0x7f1003c5

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 787
    :cond_1
    iget-object p2, p0, Lorg/wikipedia/gallery/GalleryActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p2, v1, :cond_3

    .line 788
    iget-object p2, p0, Lorg/wikipedia/gallery/GalleryActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 789
    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/gallery/ImageInfo;->getCaptions()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 790
    iput-object v2, p0, Lorg/wikipedia/gallery/GalleryActivity;->targetLanguageCode:Ljava/lang/String;

    .line 791
    sget-object p1, Lorg/wikipedia/Constants$ImageEditType;->ADD_CAPTION_TRANSLATION:Lorg/wikipedia/Constants$ImageEditType;

    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->imageEditType:Lorg/wikipedia/Constants$ImageEditType;

    .line 792
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->ctaButtonText:Landroid/widget/TextView;

    const p2, 0x7f10013f

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/wikipedia/gallery/GalleryActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v2

    iget-object v3, p0, Lorg/wikipedia/gallery/GalleryActivity;->targetLanguageCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p0, p2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 797
    :cond_3
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->ctaContainer:Landroid/view/View;

    iget-object p2, p0, Lorg/wikipedia/gallery/GalleryActivity;->imageEditType:Lorg/wikipedia/Constants$ImageEditType;

    if-nez p2, :cond_4

    const/16 v0, 0x8

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private displayApplicableDescription(Lorg/wikipedia/gallery/GalleryItemFragment;)V
    .locals 2

    .line 804
    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/gallery/ImageInfo;->getCaptions()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/gallery/GalleryActivity;->sourceWiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/gallery/ImageInfo;->getCaptions()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->sourceWiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_0

    .line 807
    :cond_0
    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/gallery/ImageInfo;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/gallery/ExtMetadata;->imageDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 809
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 810
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->galleryDescriptionContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 811
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->descriptionText:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->strip(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 813
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->galleryDescriptionContainer:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private disposeImageCaptionDisposable()V
    .locals 1

    .line 468
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->imageCaptionDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->imageCaptionDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method private fetchGalleryItems()V
    .locals 5

    .line 649
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->pageTitle:Lorg/wikipedia/page/PageTitle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 652
    invoke-direct {p0, v0}, Lorg/wikipedia/gallery/GalleryActivity;->updateProgressBar(Z)V

    .line 654
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lorg/wikipedia/gallery/GalleryActivity;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/gallery/GalleryActivity;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lorg/wikipedia/gallery/GalleryActivity;->revision:J

    invoke-interface {v1, v2, v3, v4}, Lorg/wikipedia/dataclient/RestService;->getMediaList(Ljava/lang/String;J)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 655
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 656
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$9MB-KAKVMOTd7gGyb7eQVlz03Lw;

    invoke-direct {v2, p0}, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$9MB-KAKVMOTd7gGyb7eQVlz03Lw;-><init>(Lorg/wikipedia/gallery/GalleryActivity;)V

    new-instance v3, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$FSJi_4f3XLO0q4EmMkAe5TWmOXM;

    invoke-direct {v3, p0}, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$FSJi_4f3XLO0q4EmMkAe5TWmOXM;-><init>(Lorg/wikipedia/gallery/GalleryActivity;)V

    .line 657
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 654
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private getCurrentItem()Lorg/wikipedia/gallery/GalleryItemFragment;
    .locals 2

    .line 715
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->galleryAdapter:Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;

    iget-object v1, p0, Lorg/wikipedia/gallery/GalleryActivity;->galleryPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/PositionAwareFragmentStateAdapter;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/gallery/GalleryItemFragment;

    return-object v0
.end method

.method private hideTransitionReceiver(Z)V
    .locals 3

    .line 534
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->transitionReceiver:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 539
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->transitionReceiver:Landroid/widget/ImageView;

    new-instance v0, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$3iaC4D-V1gOSnFr5Gof7CHxjTmU;

    invoke-direct {v0, p0}, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$3iaC4D-V1gOSnFr5Gof7CHxjTmU;-><init>(Lorg/wikipedia/gallery/GalleryActivity;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 546
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->transitionReceiver:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$layOutGalleryDescription$9(Lorg/wikipedia/gallery/GalleryItemFragment;Ljava/util/Map;Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;Ljava/util/Map;)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 732
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/wikipedia/gallery/ImageInfo;->setCaptions(Ljava/util/Map;)V

    .line 733
    new-instance p0, Landroid/util/Pair;

    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->isEditProtected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private loadGalleryContent()V
    .locals 4

    const/4 v0, 0x0

    .line 669
    invoke-direct {p0, v0}, Lorg/wikipedia/gallery/GalleryActivity;->updateProgressBar(Z)V

    .line 670
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "featuredImage"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 671
    const-class v1, Lorg/wikipedia/feed/image/FeaturedImage;

    .line 672
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 671
    invoke-static {v1, v2}, Lorg/wikipedia/json/GsonUnmarshaller;->unmarshal(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/feed/image/FeaturedImage;

    .line 673
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "featuredImageAge"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/wikipedia/feed/image/FeaturedImage;->setAge(I)V

    .line 674
    new-instance v0, Lorg/wikipedia/gallery/MediaListItem;

    invoke-virtual {v1}, Lorg/wikipedia/feed/image/FeaturedImage;->title()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/wikipedia/gallery/MediaListItem;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/wikipedia/gallery/GalleryActivity;->applyGalleryList(Ljava/util/List;)V

    goto :goto_0

    .line 676
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryActivity;->fetchGalleryItems()V

    :goto_0
    return-void
.end method

.method public static newIntent(Landroid/content/Context;ILjava/lang/String;Lorg/wikipedia/feed/image/FeaturedImage;Lorg/wikipedia/dataclient/WikiSite;I)Landroid/content/Intent;
    .locals 7

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p4

    move v6, p5

    .line 174
    invoke-static/range {v0 .. v6}, Lorg/wikipedia/gallery/GalleryActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;JI)Landroid/content/Intent;

    move-result-object p0

    .line 175
    invoke-static {p3}, Lorg/wikipedia/json/GsonMarshaller;->marshal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "featuredImage"

    invoke-virtual {p0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p2, "featuredImageAge"

    .line 176
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;JI)Landroid/content/Intent;
    .locals 2

    .line 182
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lorg/wikipedia/gallery/GalleryActivity;

    .line 183
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "filename"

    .line 184
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p2, "wiki"

    .line 185
    invoke-virtual {p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    const-string p2, "revision"

    .line 186
    invoke-virtual {p0, p2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p0

    const-string p2, "source"

    .line 187
    invoke-virtual {p0, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string p2, "pageTitle"

    .line 189
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    return-object p0
.end method

.method private setControlsShowing(Z)V
    .locals 1

    .line 555
    iput-boolean p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->controlsShowing:Z

    if-eqz p1, :cond_0

    .line 557
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->toolbarContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/wikipedia/views/ViewAnimations;->ensureTranslationY(Landroid/view/View;I)V

    .line 558
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->infoContainer:Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Lorg/wikipedia/views/ViewAnimations;->ensureTranslationY(Landroid/view/View;I)V

    goto :goto_0

    .line 560
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->toolbarContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    neg-int v0, v0

    invoke-static {p1, v0}, Lorg/wikipedia/views/ViewAnimations;->ensureTranslationY(Landroid/view/View;I)V

    .line 561
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->infoContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-static {p1, v0}, Lorg/wikipedia/views/ViewAnimations;->ensureTranslationY(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method private setLicenseInfo(Lorg/wikipedia/gallery/GalleryItemFragment;)V
    .locals 4

    .line 818
    new-instance v0, Lorg/wikipedia/gallery/ImageLicense;

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/gallery/ImageInfo;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/gallery/ExtMetadata;->license()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/gallery/ImageInfo;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/gallery/ExtMetadata;->licenseShortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/gallery/ImageInfo;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/gallery/ExtMetadata;->licenseUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/wikipedia/gallery/ImageLicense;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    invoke-virtual {v0}, Lorg/wikipedia/gallery/ImageLicense;->getLicenseIcon()I

    move-result v1

    const v2, 0x7f0800e6

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 822
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->licenseIcon:Landroid/widget/ImageView;

    const v1, 0x7f0800e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 823
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->byIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 824
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->byIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 825
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->saIcon:Landroid/widget/ImageView;

    const v1, 0x7f0800ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 826
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->saIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 828
    :cond_0
    iget-object v1, p0, Lorg/wikipedia/gallery/GalleryActivity;->licenseIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lorg/wikipedia/gallery/ImageLicense;->getLicenseIcon()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 829
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->byIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 830
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->saIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 835
    :goto_0
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->licenseIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/gallery/ImageInfo;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/gallery/ExtMetadata;->licenseShortName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f100142

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/lang3/StringUtils;->defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 837
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->licenseIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/gallery/ImageInfo;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/gallery/ExtMetadata;->licenseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 838
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->licenseContainer:Landroid/view/View;

    invoke-static {v0}, Lorg/wikipedia/util/DeviceUtil;->setContextClickAsLongClick(Landroid/view/View;)V

    .line 840
    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/gallery/ImageInfo;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/gallery/ExtMetadata;->artist()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/gallery/ImageInfo;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object p1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/wikipedia/gallery/ExtMetadata;->artist()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/wikipedia/gallery/ExtMetadata;->credit()Ljava/lang/String;

    move-result-object p1

    .line 843
    :goto_1
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->creditText:Landroid/widget/TextView;

    const v1, 0x7f10014a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/commons/lang3/StringUtils;->defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 845
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->infoContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public static setTransitionInfo(Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;)V
    .locals 0

    .line 396
    sput-object p0, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    return-void
.end method

.method private showTransitionReceiver()V
    .locals 2

    .line 530
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->transitionReceiver:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private startCaptionEdit(Lorg/wikipedia/gallery/GalleryItemFragment;)V
    .locals 9

    .line 400
    new-instance v7, Lorg/wikipedia/page/PageTitle;

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getImageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/dataclient/WikiSite;

    iget-object v2, p0, Lorg/wikipedia/gallery/GalleryActivity;->sourceWiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https://commons.wikimedia.org/"

    invoke-direct {v1, v3, v2}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v0, v1}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 401
    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/gallery/ImageInfo;->getCaptions()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/gallery/GalleryActivity;->sourceWiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 402
    invoke-virtual {v7, v0}, Lorg/wikipedia/page/PageTitle;->setDescription(Ljava/lang/String;)V

    .line 404
    new-instance v8, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-virtual {v7}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->sourceWiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v2

    .line 405
    invoke-virtual {v7}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/gallery/ImageInfo;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/gallery/ExtMetadata;->imageDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lorg/apache/commons/lang3/StringUtils;->defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 406
    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/gallery/ImageInfo;->getThumbUrl()Ljava/lang/String;

    move-result-object v6

    move-object v0, v8

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    sget-object v5, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v6, Lorg/wikipedia/Constants$InvokeSource;->GALLERY_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v7

    move-object v3, v8

    invoke-static/range {v0 .. v6}, Lorg/wikipedia/descriptions/DescriptionEditActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startCaptionTranslation(Lorg/wikipedia/gallery/GalleryItemFragment;)V
    .locals 14

    .line 434
    new-instance v3, Lorg/wikipedia/page/PageTitle;

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getImageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/dataclient/WikiSite;

    iget-object v2, p0, Lorg/wikipedia/gallery/GalleryActivity;->sourceWiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v2

    const-string v4, "https://commons.wikimedia.org/"

    invoke-direct {v1, v4, v2}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v0, v1}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 435
    new-instance v12, Lorg/wikipedia/page/PageTitle;

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getImageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/dataclient/WikiSite;

    iget-object v2, p0, Lorg/wikipedia/gallery/GalleryActivity;->targetLanguageCode:Ljava/lang/String;

    iget-object v5, p0, Lorg/wikipedia/gallery/GalleryActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v5}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v5

    invoke-virtual {v5}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v2, v5}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v12, v0, v1}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 436
    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/gallery/ImageInfo;->getCaptions()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/gallery/GalleryActivity;->sourceWiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 437
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/gallery/ImageInfo;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/gallery/ExtMetadata;->imageDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v5, v0

    .line 441
    new-instance v13, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v2

    .line 442
    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/gallery/ImageInfo;->getThumbUrl()Ljava/lang/String;

    move-result-object v6

    move-object v0, v13

    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    new-instance v0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-virtual {v12}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v7

    .line 445
    invoke-virtual {v12}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/gallery/ImageInfo;->getThumbUrl()Ljava/lang/String;

    move-result-object v11

    move-object v5, v0

    move-object v8, v12

    invoke-direct/range {v5 .. v11}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 448
    invoke-virtual {v13}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getLang()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getLang()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    :goto_0
    move-object v10, p1

    sget-object v11, Lorg/wikipedia/Constants$InvokeSource;->GALLERY_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    move-object v5, p0

    move-object v6, v12

    move-object v8, v13

    move-object v9, v0

    .line 447
    invoke-static/range {v5 .. v11}, Lorg/wikipedia/descriptions/DescriptionEditActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startTagsEdit(Lorg/wikipedia/gallery/GalleryItemFragment;)V
    .locals 1

    .line 430
    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    move-result-object p1

    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->GALLERY_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    invoke-static {p0, p1, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private updateProgressBar(Z)V
    .locals 2

    .line 504
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 505
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->progressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public finishWithPageResult(Lorg/wikipedia/page/PageTitle;)V
    .locals 2

    .line 617
    new-instance v0, Lorg/wikipedia/history/HistoryEntry;

    const/16 v1, 0x13

    invoke-direct {v0, p1, v1}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    invoke-virtual {p0, p1, v0}, Lorg/wikipedia/gallery/GalleryActivity;->finishWithPageResult(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V

    return-void
.end method

.method public finishWithPageResult(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V
    .locals 1

    const/4 v0, 0x0

    .line 621
    invoke-static {p0, p2, p1, v0}, Lorg/wikipedia/page/PageActivity;->newIntentForCurrentTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;Z)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x1

    .line 622
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 623
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public synthetic lambda$fetchGalleryItems$7$GalleryActivity(Lorg/wikipedia/gallery/MediaList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "image"

    const-string v1, "video"

    .line 658
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/gallery/MediaList;->getItems([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/wikipedia/gallery/GalleryActivity;->applyGalleryList(Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$fetchGalleryItems$8$GalleryActivity(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 660
    invoke-direct {p0, v0}, Lorg/wikipedia/gallery/GalleryActivity;->updateProgressBar(Z)V

    .line 661
    invoke-virtual {p0, p1}, Lorg/wikipedia/gallery/GalleryActivity;->showError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic lambda$hideTransitionReceiver$5$GalleryActivity()V
    .locals 2

    .line 540
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->transitionReceiver:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 543
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$layOutGalleryDescription$10$GalleryActivity(Landroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 737
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/wikipedia/gallery/GalleryActivity;->updateGalleryDescription(ZI)V

    return-void
.end method

.method public synthetic lambda$new$6$GalleryActivity(Ljava/lang/String;)V
    .locals 4

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Link clicked was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/log/L;->v(Ljava/lang/CharSequence;)V

    .line 589
    invoke-static {p1}, Lorg/wikipedia/util/UriUtil;->resolveProtocolRelativeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/wiki/"

    .line 590
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 591
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/wikipedia/dataclient/WikiSite;->titleForInternalLink(Ljava/lang/String;)Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    .line 592
    invoke-virtual {p0, p1}, Lorg/wikipedia/gallery/GalleryActivity;->showLinkPreview(Lorg/wikipedia/page/PageTitle;)V

    goto :goto_0

    .line 594
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 595
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 596
    invoke-static {v2}, Lorg/wikipedia/dataclient/WikiSite;->supportedAuthority(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 597
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    new-instance p1, Lorg/wikipedia/dataclient/WikiSite;

    invoke-direct {p1, v1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Lorg/wikipedia/dataclient/WikiSite;->titleForUri(Landroid/net/Uri;)Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    .line 599
    invoke-virtual {p0, p1}, Lorg/wikipedia/gallery/GalleryActivity;->showLinkPreview(Lorg/wikipedia/page/PageTitle;)V

    goto :goto_0

    :cond_1
    const-string v0, "/w/"

    .line 602
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/wikipedia/gallery/GalleryActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/dataclient/WikiSite;->scheme()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/wikipedia/gallery/GalleryActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 604
    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/dataclient/WikiSite;->authority()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%1$s://%2$s"

    .line 603
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 606
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/wikipedia/util/UriUtil;->handleExternalLink(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onActivityResult$4$GalleryActivity(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V
    .locals 1

    .line 367
    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryActivity;->getCurrentItem()Lorg/wikipedia/gallery/GalleryItemFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryActivity;->getCurrentItem()Lorg/wikipedia/gallery/GalleryItemFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getImageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 368
    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryActivity;->getCurrentItem()Lorg/wikipedia/gallery/GalleryItemFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getImageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/wikipedia/commons/FilePageActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onCreate$0$GalleryActivity(Landroid/view/View;)V
    .locals 0

    .line 216
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic lambda$onCreate$1$GalleryActivity(Landroid/view/View;)V
    .locals 1

    .line 218
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 219
    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryActivity;->loadGalleryContent()V

    return-void
.end method

.method public synthetic lambda$onCreate$2$GalleryActivity()V
    .locals 1

    .line 260
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 263
    :cond_0
    iget-boolean v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->controlsShowing:Z

    invoke-direct {p0, v0}, Lorg/wikipedia/gallery/GalleryActivity;->setControlsShowing(Z)V

    return-void
.end method

.method public synthetic lambda$onCreate$3$GalleryActivity()V
    .locals 1

    .line 279
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 282
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryActivity;->loadGalleryContent()V

    return-void
.end method

.method public layOutGalleryDescription()V
    .locals 5

    .line 722
    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryActivity;->getCurrentItem()Lorg/wikipedia/gallery/GalleryItemFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 723
    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getImageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/gallery/ImageInfo;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 727
    invoke-direct {p0, v1}, Lorg/wikipedia/gallery/GalleryActivity;->updateProgressBar(Z)V

    .line 728
    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryActivity;->disposeImageCaptionDisposable()V

    .line 729
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/media/MediaHelper;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/media/MediaHelper;

    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getImageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/wikipedia/dataclient/mwapi/media/MediaHelper;->getImageCaptions(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/dataclient/WikiSite;

    const-string v3, "https://commons.wikimedia.org/"

    invoke-direct {v2, v3}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 730
    invoke-static {v2}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v2

    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getImageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/wikipedia/dataclient/Service;->getProtectionInfo(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 731
    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryActivity;->getCurrentItem()Lorg/wikipedia/gallery/GalleryItemFragment;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageId()I

    move-result v3

    iget-object v4, p0, Lorg/wikipedia/gallery/GalleryActivity;->sourceWiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {v4}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/wikipedia/commons/ImageTagsProvider;->getImageTagsObservable(ILjava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    new-instance v4, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$S2XA4SZcTyz0WOzgBwq4kJiznDQ;

    invoke-direct {v4, v0}, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$S2XA4SZcTyz0WOzgBwq4kJiznDQ;-><init>(Lorg/wikipedia/gallery/GalleryItemFragment;)V

    .line 729
    invoke-static {v1, v2, v3, v4}, Lio/reactivex/rxjava3/core/Observable;->zip(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/functions/Function3;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 735
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 736
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$HqKsi9Pm-o1fobNLRnNOb3Gkd7I;

    invoke-direct {v1, p0}, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$HqKsi9Pm-o1fobNLRnNOb3Gkd7I;-><init>(Lorg/wikipedia/gallery/GalleryActivity;)V

    sget-object v2, Lorg/wikipedia/gallery/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;->INSTANCE:Lorg/wikipedia/gallery/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;

    .line 737
    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->imageCaptionDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void

    .line 724
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->infoContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 361
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x2

    const/4 v1, 0x4

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_5

    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_5

    if-eqz p3, :cond_1

    const-string p2, "intentAction"

    .line 364
    invoke-virtual {p3, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    sget-object p2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    move-object v3, p2

    const/4 v4, 0x1

    .line 366
    iget-object v5, p0, Lorg/wikipedia/gallery/GalleryActivity;->targetLanguageCode:Ljava/lang/String;

    sget-object p2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v3, p2, :cond_3

    const/4 p2, 0x1

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    const/4 v6, 0x0

    :goto_1
    new-instance v7, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$PNxVkfTex4coXEIH51CgsPkxCqE;

    invoke-direct {v7, p0, v3}, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$PNxVkfTex4coXEIH51CgsPkxCqE;-><init>(Lorg/wikipedia/gallery/GalleryActivity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->show(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;ZLjava/lang/String;ZLorg/wikipedia/suggestededits/SuggestedEditsSnackbars$OpenPageListener;)V

    .line 371
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryActivity;->layOutGalleryDescription()V

    if-ne p1, v0, :cond_4

    const/4 v1, 0x3

    .line 372
    :cond_4
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    :cond_5
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 512
    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryActivity;->getCurrentItem()Lorg/wikipedia/gallery/GalleryItemFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getImageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/wikipedia/gallery/GalleryActivity;->funnel:Lorg/wikipedia/analytics/GalleryFunnel;

    if-eqz v1, :cond_0

    .line 514
    iget-object v2, p0, Lorg/wikipedia/gallery/GalleryActivity;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getImageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/wikipedia/analytics/GalleryFunnel;->logGalleryClose(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    .line 517
    :cond_0
    sget-object v0, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    if-eqz v0, :cond_1

    .line 518
    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryActivity;->showTransitionReceiver()V

    .line 521
    :cond_1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 453
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->licenseIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 456
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->licenseIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->licenseIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/wikipedia/util/FeedbackUtil;->showMessageAsPlainText(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 197
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c001f

    .line 198
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 199
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->unbinder:Lbutterknife/Unbinder;

    .line 201
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 202
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 203
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/high16 v0, -0x1000000

    .line 204
    invoke-virtual {p0, v0}, Lorg/wikipedia/activity/BaseActivity;->setNavigationBarColor(I)V

    .line 206
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->toolbarGradient:Landroid/view/View;

    const v1, 0x7f060036

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lorg/wikipedia/util/GradientUtil;->getPowerGradient(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 207
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->infoGradient:Landroid/view/View;

    const v1, 0x7f060037

    const/16 v2, 0x50

    invoke-static {v1, v2}, Lorg/wikipedia/util/GradientUtil;->getPowerGradient(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 208
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->descriptionText:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/wikipedia/gallery/GalleryActivity;->linkMovementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 209
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->creditText:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/wikipedia/gallery/GalleryActivity;->linkMovementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 211
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    const v1, 0x7f0904ad

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f060032

    .line 212
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 213
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    const v2, 0x7f0904ae

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 214
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    new-instance v1, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$jnHqcMrRcni_8D5ZThCFpd1OeEk;

    invoke-direct {v1, p0}, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$jnHqcMrRcni_8D5ZThCFpd1OeEk;-><init>(Lorg/wikipedia/gallery/GalleryActivity;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    new-instance v1, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$1kGClr6dgI9mfaGJBp1YLrgqCgU;

    invoke-direct {v1, p0}, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$1kGClr6dgI9mfaGJBp1YLrgqCgU;-><init>(Lorg/wikipedia/gallery/GalleryActivity;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pageTitle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/PageTitle;

    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 225
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "filename"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->initialFilename:Ljava/lang/String;

    .line 226
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v3, "revision"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->revision:J

    .line 227
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wiki"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/WikiSite;

    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->sourceWiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 229
    new-instance v0, Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;

    invoke-direct {v0, p0, p0}, Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;-><init>(Lorg/wikipedia/gallery/GalleryActivity;Landroidx/appcompat/app/AppCompatActivity;)V

    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->galleryAdapter:Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;

    .line 230
    iget-object v2, p0, Lorg/wikipedia/gallery/GalleryActivity;->galleryPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 231
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->galleryPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v2, p0, Lorg/wikipedia/gallery/GalleryActivity;->pageChangeListener:Lorg/wikipedia/gallery/GalleryActivity$GalleryPageChangeListener;

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 232
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->galleryPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 234
    new-instance v0, Lorg/wikipedia/analytics/GalleryFunnel;

    iget-object v2, p0, Lorg/wikipedia/gallery/GalleryActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/dataclient/WikiSite;

    .line 235
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "source"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Lorg/wikipedia/analytics/GalleryFunnel;-><init>(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/dataclient/WikiSite;I)V

    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->funnel:Lorg/wikipedia/analytics/GalleryFunnel;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 238
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->initialFilename:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 239
    iget-object v2, p0, Lorg/wikipedia/gallery/GalleryActivity;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0, v2, p1}, Lorg/wikipedia/analytics/GalleryFunnel;->logGalleryOpen(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "controlsShowing"

    .line 242
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->controlsShowing:Z

    const-string v0, "pagerIndex"

    .line 243
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->initialImageIndex:I

    .line 246
    iput-object v1, p0, Lorg/wikipedia/gallery/GalleryActivity;->initialFilename:Ljava/lang/String;

    .line 247
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 248
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 249
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const/4 v2, 0x0

    .line 250
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 251
    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;

    move-result-object v3

    invoke-interface {v3}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v3

    .line 252
    instance-of v4, v3, Lorg/wikipedia/gallery/GalleryItemFragment;

    if-eqz v4, :cond_2

    .line 253
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    :cond_3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 259
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->toolbarContainer:Landroid/view/ViewGroup;

    new-instance v0, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$SbtPEpD6RhYgJEQo_lpAilXmgPI;

    invoke-direct {v0, p0}, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$SbtPEpD6RhYgJEQo_lpAilXmgPI;-><init>(Lorg/wikipedia/gallery/GalleryActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 266
    sget-object p1, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    if-eqz p1, :cond_5

    .line 267
    invoke-virtual {p1}, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->getWidth()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    sget-object p1, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    invoke-virtual {p1}, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->getHeight()F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    .line 269
    sget-object p1, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    invoke-virtual {p1}, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->getHeight()F

    move-result p1

    sget-object v0, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    invoke-virtual {v0}, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->getWidth()F

    move-result v0

    div-float/2addr p1, v0

    .line 270
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getDisplayWidthPx()I

    move-result v1

    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getDisplayWidthPx()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p1

    float-to-int p1, v2

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x10

    .line 271
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 272
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->transitionReceiver:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->transitionReceiver:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->transitionReceiver:Landroid/widget/ImageView;

    sget-object v0, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    invoke-virtual {v0}, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->getSrc()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    invoke-virtual {v1}, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->getCenterCrop()Z

    move-result v1

    invoke-static {p1, v0, v1, v5}, Lorg/wikipedia/views/ViewUtil;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;ZZ)V

    .line 278
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->transitionReceiver:Landroid/widget/ImageView;

    new-instance v0, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$KySvjGLd5Ok3aURX2fwBTx4BTYA;

    invoke-direct {v0, p0}, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$KySvjGLd5Ok3aURX2fwBTx4BTYA;-><init>(Lorg/wikipedia/gallery/GalleryActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 287
    :cond_5
    sput-object v1, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 288
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->transitionReceiver:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryActivity;->loadGalleryContent()V

    :goto_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 324
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 295
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 296
    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryActivity;->disposeImageCaptionDisposable()V

    .line 297
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->galleryPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lorg/wikipedia/gallery/GalleryActivity;->pageChangeListener:Lorg/wikipedia/gallery/GalleryActivity$GalleryPageChangeListener;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    const/4 v0, 0x0

    .line 298
    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->pageChangeListener:Lorg/wikipedia/gallery/GalleryActivity$GalleryPageChangeListener;

    .line 300
    iget-object v1, p0, Lorg/wikipedia/gallery/GalleryActivity;->unbinder:Lbutterknife/Unbinder;

    if-eqz v1, :cond_0

    .line 301
    invoke-interface {v1}, Lbutterknife/Unbinder;->unbind()V

    .line 304
    :cond_0
    sput-object v0, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 305
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onDownload(Lorg/wikipedia/gallery/GalleryItemFragment;)V
    .locals 3

    .line 330
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->funnel:Lorg/wikipedia/analytics/GalleryFunnel;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getImageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->funnel:Lorg/wikipedia/analytics/GalleryFunnel;

    iget-object v1, p0, Lorg/wikipedia/gallery/GalleryActivity;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getImageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/analytics/GalleryFunnel;->logGallerySave(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    .line 333
    :cond_0
    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getImageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->downloadReceiver:Lorg/wikipedia/gallery/MediaDownloadReceiver;

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getImageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lorg/wikipedia/gallery/MediaDownloadReceiver;->download(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/gallery/ImageInfo;)V

    const p1, 0x7f100147

    .line 335
    invoke-static {p0, p1}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f100103

    .line 337
    invoke-static {p0, p1}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;I)V

    :goto_0
    return-void
.end method

.method onEditClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 377
    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryActivity;->getCurrentItem()Lorg/wikipedia/gallery/GalleryItemFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 378
    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getImageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/gallery/ImageInfo;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 382
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 384
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 385
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f10021e

    .line 386
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f10021c

    .line 387
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f100303

    const/4 v1, 0x0

    .line 388
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 389
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    .line 392
    :cond_2
    invoke-direct {p0, v0}, Lorg/wikipedia/gallery/GalleryActivity;->startCaptionEdit(Lorg/wikipedia/gallery/GalleryItemFragment;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onLinkPreviewAddToList(Lorg/wikipedia/page/PageTitle;)V
    .locals 3

    .line 636
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->LINK_PREVIEW_MENU:Lorg/wikipedia/Constants$InvokeSource;

    invoke-virtual {v0, v1, p1, v2}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->showAddToListDialog(Landroidx/fragment/app/FragmentManager;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)V

    return-void
.end method

.method public onLinkPreviewCopyLink(Lorg/wikipedia/page/PageTitle;)V
    .locals 1

    .line 631
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/wikipedia/util/ClipboardUtil;->setPlainText(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const p1, 0x7f100032

    .line 632
    invoke-static {p0, p1}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;I)V

    return-void
.end method

.method public onLinkPreviewLoadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Z)V
    .locals 0

    .line 627
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/gallery/GalleryActivity;->finishWithPageResult(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V

    return-void
.end method

.method public onLinkPreviewShareLink(Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    .line 640
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->shareText(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)V

    return-void
.end method

.method onLongClick(Landroid/view/View;)Z
    .locals 1
    .annotation runtime Lbutterknife/OnLongClick;
    .end annotation

    .line 460
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->licenseIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 461
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    invoke-static {p1}, Lorg/wikipedia/util/UriUtil;->resolveProtocolRelativeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/wikipedia/util/UriUtil;->handleExternalLink(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onMediaLoaded()V
    .locals 1

    const/4 v0, 0x1

    .line 526
    invoke-direct {p0, v0}, Lorg/wikipedia/gallery/GalleryActivity;->hideTransitionReceiver(Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 317
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 318
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->downloadReceiver:Lorg/wikipedia/gallery/MediaDownloadReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/wikipedia/gallery/MediaDownloadReceiver;->setCallback(Lorg/wikipedia/gallery/MediaDownloadReceiver$Callback;)V

    .line 319
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->downloadReceiver:Lorg/wikipedia/gallery/MediaDownloadReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 310
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onResume()V

    .line 311
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->downloadReceiver:Lorg/wikipedia/gallery/MediaDownloadReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 312
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->downloadReceiver:Lorg/wikipedia/gallery/MediaDownloadReceiver;

    iget-object v1, p0, Lorg/wikipedia/gallery/GalleryActivity;->downloadReceiverCallback:Lorg/wikipedia/gallery/GalleryActivity$MediaDownloadReceiverCallback;

    invoke-virtual {v0, v1}, Lorg/wikipedia/gallery/MediaDownloadReceiver;->setCallback(Lorg/wikipedia/gallery/MediaDownloadReceiver$Callback;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 498
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 499
    iget-boolean v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->controlsShowing:Z

    const-string v1, "controlsShowing"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 500
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->galleryPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    const-string v1, "pagerIndex"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onShare(Lorg/wikipedia/gallery/GalleryItemFragment;Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)V
    .locals 3

    .line 343
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->funnel:Lorg/wikipedia/analytics/GalleryFunnel;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getImageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->funnel:Lorg/wikipedia/analytics/GalleryFunnel;

    iget-object v1, p0, Lorg/wikipedia/gallery/GalleryActivity;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getImageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/analytics/GalleryFunnel;->logGalleryShare(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 346
    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 347
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/gallery/ImageInfo;->getThumbUrl()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x500

    invoke-static {p1, v1}, Lorg/wikipedia/util/ImageUrlUtil;->getUrlForPreferredSize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 348
    invoke-virtual {p4}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    move-result-object p4

    .line 347
    invoke-static {p0, p2, p1, p3, p4}, Lorg/wikipedia/util/ShareUtil;->shareImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_1
    invoke-static {p0, p4}, Lorg/wikipedia/util/ShareUtil;->shareText(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)V

    :goto_0
    return-void
.end method

.method onTranslateClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 413
    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryActivity;->getCurrentItem()Lorg/wikipedia/gallery/GalleryItemFragment;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 414
    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getImageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/gallery/ImageInfo;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->imageEditType:Lorg/wikipedia/Constants$ImageEditType;

    if-nez v0, :cond_0

    goto :goto_0

    .line 417
    :cond_0
    sget-object v1, Lorg/wikipedia/gallery/GalleryActivity$1;->$SwitchMap$org$wikipedia$Constants$ImageEditType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 425
    invoke-direct {p0, p1}, Lorg/wikipedia/gallery/GalleryActivity;->startCaptionEdit(Lorg/wikipedia/gallery/GalleryItemFragment;)V

    goto :goto_0

    .line 422
    :cond_1
    invoke-direct {p0, p1}, Lorg/wikipedia/gallery/GalleryActivity;->startCaptionTranslation(Lorg/wikipedia/gallery/GalleryItemFragment;)V

    goto :goto_0

    .line 419
    :cond_2
    invoke-direct {p0, p1}, Lorg/wikipedia/gallery/GalleryActivity;->startTagsEdit(Lorg/wikipedia/gallery/GalleryItemFragment;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected setTheme()V
    .locals 1

    .line 356
    sget-object v0, Lorg/wikipedia/theme/Theme;->DARK:Lorg/wikipedia/theme/Theme;

    invoke-virtual {v0}, Lorg/wikipedia/theme/Theme;->getResourceId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    return-void
.end method

.method public setViewPagerEnabled(Z)V
    .locals 1

    .line 578
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->galleryPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    return-void
.end method

.method showError(Ljava/lang/Throwable;)V
    .locals 1

    .line 644
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;)V

    .line 645
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showLinkPreview(Lorg/wikipedia/page/PageTitle;)V
    .locals 4

    .line 573
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/history/HistoryEntry;

    const/16 v3, 0x13

    invoke-direct {v2, p1, v3}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    const/4 p1, 0x0

    .line 574
    invoke-static {v2, p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->newInstance(Lorg/wikipedia/history/HistoryEntry;Landroid/location/Location;)Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    move-result-object p1

    .line 573
    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method public toggleControls()V
    .locals 1

    .line 569
    iget-boolean v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->controlsShowing:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/wikipedia/gallery/GalleryActivity;->setControlsShowing(Z)V

    return-void
.end method

.method public updateGalleryDescription(ZI)V
    .locals 6

    const/4 v0, 0x0

    .line 741
    invoke-direct {p0, v0}, Lorg/wikipedia/gallery/GalleryActivity;->updateProgressBar(Z)V

    .line 743
    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryActivity;->getCurrentItem()Lorg/wikipedia/gallery/GalleryItemFragment;

    move-result-object v1

    const/16 v2, 0x8

    if-eqz v1, :cond_5

    .line 744
    invoke-virtual {v1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getImageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/gallery/ImageInfo;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_3

    .line 749
    :cond_0
    invoke-direct {p0, v1}, Lorg/wikipedia/gallery/GalleryActivity;->displayApplicableDescription(Lorg/wikipedia/gallery/GalleryItemFragment;)V

    .line 753
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/gallery/ImageInfo;->getThumbUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/wikipedia/commons/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 754
    :goto_0
    iget-object v4, p0, Lorg/wikipedia/gallery/GalleryActivity;->captionEditButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 755
    iget-object v4, p0, Lorg/wikipedia/gallery/GalleryActivity;->captionEditButton:Landroid/widget/ImageView;

    const v5, 0x7f0800f2

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 756
    iget-object v4, p0, Lorg/wikipedia/gallery/GalleryActivity;->captionEditButton:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    .line 758
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->captionEditButton:Landroid/widget/ImageView;

    const v3, 0x7f0800b6

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v3, 0x0

    :cond_3
    if-eqz v3, :cond_4

    .line 762
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->ctaContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 763
    invoke-direct {p0, v1, p2}, Lorg/wikipedia/gallery/GalleryActivity;->decideImageEditType(Lorg/wikipedia/gallery/GalleryItemFragment;I)V

    goto :goto_2

    .line 765
    :cond_4
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->ctaContainer:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 767
    :goto_2
    invoke-direct {p0, v1}, Lorg/wikipedia/gallery/GalleryActivity;->setLicenseInfo(Lorg/wikipedia/gallery/GalleryItemFragment;)V

    return-void

    .line 745
    :cond_5
    :goto_3
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->infoContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
