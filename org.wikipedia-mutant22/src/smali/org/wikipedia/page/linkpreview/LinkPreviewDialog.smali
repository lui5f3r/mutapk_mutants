.class public Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;
.super Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;
.source "LinkPreviewDialog.java"

# interfaces
.implements Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$OverlayViewCallback;,
        Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$Callback;
    }
.end annotation


# static fields
.field private static final ARG_ENTRY:Ljava/lang/String; = "entry"

.field private static final ARG_LOCATION:Ljava/lang/String; = "location"


# instance fields
.field private contentContainer:Landroid/view/View;

.field private dialogContainer:Landroid/widget/LinearLayout;

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private errorContainer:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;

.field private extractText:Landroid/widget/TextView;

.field private funnel:Lorg/wikipedia/analytics/LinkPreviewFunnel;

.field private galleryViewListener:Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewListener;

.field private goToPageListener:Landroid/view/View$OnClickListener;

.field private historyEntry:Lorg/wikipedia/history/HistoryEntry;

.field private location:Landroid/location/Location;

.field private menuListener:Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

.field private navigateSuccess:Z

.field private overflowButton:Landroid/view/View;

.field private overlayView:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

.field private pageTitle:Lorg/wikipedia/page/PageTitle;

.field private progressBar:Landroid/widget/ProgressBar;

.field private revision:J

.field private thumbnailGallery:Lorg/wikipedia/gallery/GalleryThumbnailScrollView;

.field private thumbnailView:Landroid/widget/ImageView;

.field private titleText:Landroid/widget/TextView;

.field private toolbarView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->navigateSuccess:Z

    .line 88
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 303
    new-instance v0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$1;

    invoke-direct {v0, p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$1;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;)V

    iput-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->menuListener:Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    .line 331
    new-instance v0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$2;

    invoke-direct {v0, p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$2;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;)V

    iput-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->galleryViewListener:Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewListener;

    .line 341
    new-instance v0, Lorg/wikipedia/page/linkpreview/-$$Lambda$LinkPreviewDialog$2GgD43teWqvBA-EGxKiSLYg1Dr8;

    invoke-direct {v0, p0}, Lorg/wikipedia/page/linkpreview/-$$Lambda$LinkPreviewDialog$2GgD43teWqvBA-EGxKiSLYg1Dr8;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;)V

    iput-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->goToPageListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$100(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;)Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$Callback;
    .locals 0

    .line 57
    invoke-direct {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->callback()Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;)Lorg/wikipedia/page/PageTitle;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    return-object p0
.end method

.method static synthetic access$300(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;)J
    .locals 2

    .line 57
    iget-wide v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->revision:J

    return-wide v0
.end method

.method static synthetic access$400(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->goToExternalMapsApp()V

    return-void
.end method

.method private callback()Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$Callback;
    .locals 1

    .line 375
    const-class v0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$Callback;

    invoke-static {p0, v0}, Lorg/wikipedia/activity/FragmentUtil;->getCallback(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$Callback;

    return-object v0
.end method

.method private goToExternalMapsApp()V
    .locals 3

    .line 344
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->location:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 346
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->location:Landroid/location/Location;

    iget-object v2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/wikipedia/util/GeoUtil;->sendGeoIntent(Landroid/app/Activity;Landroid/location/Location;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$loadGallery$5(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "Failed to fetch gallery collection."

    .line 256
    invoke-static {v0, p0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    return-void
.end method

.method private loadContent()V
    .locals 4

    .line 209
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lorg/wikipedia/dataclient/RestService;->getSummary(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 210
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 211
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/page/linkpreview/-$$Lambda$LinkPreviewDialog$aS8y0xgFoRQbBEGTYlk_vjwNQcc;

    invoke-direct {v2, p0}, Lorg/wikipedia/page/linkpreview/-$$Lambda$LinkPreviewDialog$aS8y0xgFoRQbBEGTYlk_vjwNQcc;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;)V

    new-instance v3, Lorg/wikipedia/page/linkpreview/-$$Lambda$LinkPreviewDialog$wzvw3lY306QeLYWRsNDq7dsrbOs;

    invoke-direct {v3, p0}, Lorg/wikipedia/page/linkpreview/-$$Lambda$LinkPreviewDialog$wzvw3lY306QeLYWRsNDq7dsrbOs;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;)V

    .line 212
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private loadGallery()V
    .locals 5

    .line 228
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isImageDownloadEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->revision:J

    invoke-interface {v1, v2, v3, v4}, Lorg/wikipedia/dataclient/RestService;->getMediaList(Ljava/lang/String;J)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/page/linkpreview/-$$Lambda$LinkPreviewDialog$n2qoeI8Mz_TUjWRp-b4KsKISeGU;

    invoke-direct {v2, p0}, Lorg/wikipedia/page/linkpreview/-$$Lambda$LinkPreviewDialog$n2qoeI8Mz_TUjWRp-b4KsKISeGU;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;)V

    .line 230
    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 241
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 242
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/page/linkpreview/-$$Lambda$LinkPreviewDialog$tjs2aF1CTSdrourmpudYbCoxP3Q;

    invoke-direct {v2, p0}, Lorg/wikipedia/page/linkpreview/-$$Lambda$LinkPreviewDialog$tjs2aF1CTSdrourmpudYbCoxP3Q;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;)V

    sget-object v3, Lorg/wikipedia/page/linkpreview/-$$Lambda$LinkPreviewDialog$AXwX-OvCTDa14EYgZuJ1OCk0P34;->INSTANCE:Lorg/wikipedia/page/linkpreview/-$$Lambda$LinkPreviewDialog$AXwX-OvCTDa14EYgZuJ1OCk0P34;

    .line 243
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 229
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :cond_0
    return-void
.end method

.method private loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Z)V
    .locals 1

    .line 351
    invoke-direct {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->callback()Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    invoke-interface {v0, p1, p2, p3}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$Callback;->onLinkPreviewLoadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Z)V

    :cond_0
    return-void
.end method

.method public static newInstance(Lorg/wikipedia/history/HistoryEntry;Landroid/location/Location;)Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;
    .locals 3

    .line 91
    new-instance v0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    invoke-direct {v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;-><init>()V

    .line 92
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "entry"

    .line 93
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p1, :cond_0

    const-string p0, "location"

    .line 95
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 97
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setPreviewContents(Lorg/wikipedia/page/linkpreview/LinkPreviewContents;)V
    .locals 3

    .line 287
    invoke-virtual {p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewContents;->getExtract()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 288
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->extractText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewContents;->getExtract()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    :cond_0
    invoke-virtual {p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewContents;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getThumbUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 292
    iget-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->thumbnailView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 293
    iget-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->thumbnailView:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lorg/wikipedia/views/ViewUtil;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 295
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->overlayView:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    if-eqz v0, :cond_5

    .line 296
    iget-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 297
    invoke-virtual {p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewContents;->isDisambiguation()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f100054

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 298
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    move-result-object p1

    sget-object v2, Lorg/wikipedia/page/Namespace;->TALK:Lorg/wikipedia/page/Namespace;

    if-eq p1, v2, :cond_4

    iget-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    move-result-object p1

    sget-object v2, Lorg/wikipedia/page/Namespace;->USER_TALK:Lorg/wikipedia/page/Namespace;

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    const p1, 0x7f100053

    goto :goto_1

    :cond_4
    :goto_0
    const p1, 0x7f100055

    .line 296
    :goto_1
    invoke-static {v1, p1}, Lorg/wikipedia/util/L10nUtil;->getStringForArticleLanguage(Lorg/wikipedia/page/PageTitle;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->setPrimaryButtonText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method private showError(Ljava/lang/Throwable;)V
    .locals 5

    .line 268
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->dialogContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 269
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->dialogContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 270
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->progressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->contentContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->overlayView:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    invoke-virtual {v0, v2}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->showSecondaryButton(Z)V

    .line 273
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->overlayView:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    invoke-virtual {v0, v2}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->showTertiaryButton(Z)V

    .line 274
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->errorContainer:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->errorContainer:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;->setError(Ljava/lang/Throwable;)V

    .line 276
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->errorContainer:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;

    invoke-virtual {v0, p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;->setCallback(Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;)V

    .line 277
    invoke-static {p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->get(Ljava/lang/Throwable;)Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    move-result-object p1

    .line 278
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->overlayView:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->buttonText()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->setPrimaryButtonText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->overlayView:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    iget-object v2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->errorContainer:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;

    invoke-virtual {p1, v2}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->buttonAction(Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;)Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->setCallback(Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;)V

    .line 280
    sget-object v0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->OFFLINE:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    if-eq p1, v0, :cond_0

    .line 281
    iget-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->toolbarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->overflowButton:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showPreview(Lorg/wikipedia/page/linkpreview/LinkPreviewContents;)V
    .locals 2

    .line 262
    invoke-direct {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->loadGallery()V

    .line 263
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 264
    invoke-direct {p0, p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->setPreviewContents(Lorg/wikipedia/page/linkpreview/LinkPreviewContents;)V

    return-void
.end method


# virtual methods
.method public goToLinkedPage(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->navigateSuccess:Z

    .line 144
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->funnel:Lorg/wikipedia/analytics/LinkPreviewFunnel;

    invoke-virtual {v0}, Lorg/wikipedia/analytics/LinkPreviewFunnel;->logNavigate()V

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    iget-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->historyEntry:Lorg/wikipedia/history/HistoryEntry;

    invoke-direct {p0, v0, v1, p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Z)V

    return-void
.end method

.method public synthetic lambda$loadContent$1$LinkPreviewDialog(Lorg/wikipedia/dataclient/page/PageSummary;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->funnel:Lorg/wikipedia/analytics/LinkPreviewFunnel;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/analytics/LinkPreviewFunnel;->setPageId(I)V

    .line 214
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/page/PageTitle;->setThumbUrl(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getRevision()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->revision:J

    .line 216
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->titleText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getApiTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/page/PageTitle;->setText(Ljava/lang/String;)V

    .line 219
    new-instance v0, Lorg/wikipedia/page/linkpreview/LinkPreviewContents;

    iget-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/wikipedia/page/linkpreview/LinkPreviewContents;-><init>(Lorg/wikipedia/dataclient/page/PageSummary;Lorg/wikipedia/dataclient/WikiSite;)V

    invoke-direct {p0, v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->showPreview(Lorg/wikipedia/page/linkpreview/LinkPreviewContents;)V

    return-void
.end method

.method public synthetic lambda$loadContent$2$LinkPreviewDialog(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 221
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 222
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->titleText:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    invoke-direct {p0, p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->showError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic lambda$loadGallery$3$LinkPreviewDialog(Lorg/wikipedia/gallery/MediaList;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "image"

    const-string v1, "video"

    .line 232
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/gallery/MediaList;->getItems([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/gallery/MediaListItem;

    .line 235
    invoke-virtual {v1}, Lorg/wikipedia/gallery/MediaListItem;->showInGallery()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 236
    invoke-virtual {v1}, Lorg/wikipedia/gallery/MediaListItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 239
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lio/reactivex/rxjava3/core/Observable;->empty()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object p1

    const/16 v1, 0x7c

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;C)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/wikipedia/dataclient/Service;->getImageInfo(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public synthetic lambda$loadGallery$4$LinkPreviewDialog(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 247
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 248
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->thumbnailGallery:Lorg/wikipedia/gallery/GalleryThumbnailScrollView;

    invoke-virtual {p1, v0}, Lorg/wikipedia/gallery/GalleryThumbnailScrollView;->setGalleryList(Ljava/util/List;)V

    .line 252
    iget-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->thumbnailGallery:Lorg/wikipedia/gallery/GalleryThumbnailScrollView;

    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->galleryViewListener:Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewListener;

    invoke-virtual {p1, v0}, Lorg/wikipedia/gallery/GalleryThumbnailScrollView;->setGalleryViewListener(Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewListener;)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$new$6$LinkPreviewDialog(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 341
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->goToLinkedPage(Z)V

    return-void
.end method

.method public synthetic lambda$onCreateView$0$LinkPreviewDialog(Landroid/view/View;)V
    .locals 2

    .line 124
    new-instance p1, Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->overflowButton:Landroid/view/View;

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const v0, 0x7f0d0009

    .line 125
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/PopupMenu;->inflate(I)V

    .line 126
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->menuListener:Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 127
    invoke-virtual {p1}, Landroidx/appcompat/widget/PopupMenu;->show()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x34

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 190
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onAddToList()V
    .locals 2

    .line 198
    invoke-direct {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->callback()Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    invoke-direct {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->callback()Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$Callback;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-interface {v0, v1}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$Callback;->onLinkPreviewAddToList(Lorg/wikipedia/page/PageTitle;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 103
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p3

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "entry"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/history/HistoryEntry;

    iput-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->historyEntry:Lorg/wikipedia/history/HistoryEntry;

    .line 105
    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iput-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->location:Landroid/location/Location;

    const v0, 0x7f0c0043

    .line 108
    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090101

    .line 109
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->dialogContainer:Landroid/widget/LinearLayout;

    const p2, 0x7f090102

    .line 110
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->contentContainer:Landroid/view/View;

    const p2, 0x7f090103

    .line 111
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;

    iput-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->errorContainer:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;

    const p2, 0x7f0901fd

    .line 112
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->progressBar:Landroid/widget/ProgressBar;

    const p2, 0x7f090203

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->toolbarView:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->goToPageListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090202

    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->titleText:Landroid/widget/TextView;

    .line 117
    iget-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/wikipedia/util/L10nUtil;->setConditionalLayoutDirection(Landroid/view/View;Ljava/lang/String;)V

    const p2, 0x7f0901fa

    .line 119
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->extractText:Landroid/widget/TextView;

    const p2, 0x7f090200

    .line 120
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->thumbnailView:Landroid/widget/ImageView;

    const p2, 0x7f090201

    .line 121
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/gallery/GalleryThumbnailScrollView;

    iput-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->thumbnailGallery:Lorg/wikipedia/gallery/GalleryThumbnailScrollView;

    const p2, 0x7f0901fb

    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->overflowButton:Landroid/view/View;

    .line 123
    new-instance v0, Lorg/wikipedia/page/linkpreview/-$$Lambda$LinkPreviewDialog$P3fPnmPHWu0pVA2W8RxtEggyrEY;

    invoke-direct {v0, p0}, Lorg/wikipedia/page/linkpreview/-$$Lambda$LinkPreviewDialog$P3fPnmPHWu0pVA2W8RxtEggyrEY;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->progressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 134
    invoke-direct {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->loadContent()V

    .line 136
    new-instance p2, Lorg/wikipedia/analytics/LinkPreviewFunnel;

    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->historyEntry:Lorg/wikipedia/history/HistoryEntry;

    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryEntry;->getSource()I

    move-result v0

    invoke-direct {p2, p3, v0}, Lorg/wikipedia/analytics/LinkPreviewFunnel;-><init>(Lorg/wikipedia/WikipediaApp;I)V

    iput-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->funnel:Lorg/wikipedia/analytics/LinkPreviewFunnel;

    .line 137
    invoke-virtual {p2}, Lorg/wikipedia/analytics/LinkPreviewFunnel;->logLinkClick()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 167
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 168
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->thumbnailGallery:Lorg/wikipedia/gallery/GalleryThumbnailScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/wikipedia/gallery/GalleryThumbnailScrollView;->setGalleryViewListener(Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewListener;)V

    .line 169
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->toolbarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->overflowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->overlayView:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0, v1}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->setCallback(Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;)V

    .line 173
    iput-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->overlayView:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    .line 175
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onDismiss()V
    .locals 0

    .line 205
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 180
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 181
    iget-boolean p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->navigateSuccess:Z

    if-nez p1, :cond_0

    .line 182
    iget-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->funnel:Lorg/wikipedia/analytics/LinkPreviewFunnel;

    invoke-virtual {p1}, Lorg/wikipedia/analytics/LinkPreviewFunnel;->logCancel()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 152
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0900c1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 154
    iget-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->overlayView:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 155
    new-instance v1, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->overlayView:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    .line 156
    new-instance v2, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$OverlayViewCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$OverlayViewCallback;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$1;)V

    invoke-virtual {v1, v2}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->setCallback(Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;)V

    .line 157
    iget-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->overlayView:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    iget-object v2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 158
    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    move-result-object v3

    sget-object v4, Lorg/wikipedia/page/Namespace;->TALK:Lorg/wikipedia/page/Namespace;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    move-result-object v3

    sget-object v4, Lorg/wikipedia/page/Namespace;->USER_TALK:Lorg/wikipedia/page/Namespace;

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const v3, 0x7f100053

    goto :goto_1

    :cond_1
    :goto_0
    const v3, 0x7f100055

    .line 157
    :goto_1
    invoke-static {v2, v3}, Lorg/wikipedia/util/L10nUtil;->getStringForArticleLanguage(Lorg/wikipedia/page/PageTitle;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->setPrimaryButtonText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->overlayView:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    iget-object v2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    const v3, 0x7f100194

    invoke-static {v2, v3}, Lorg/wikipedia/util/L10nUtil;->getStringForArticleLanguage(Lorg/wikipedia/page/PageTitle;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->setSecondaryButtonText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->overlayView:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    iget-object v2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->location:Landroid/location/Location;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->showTertiaryButton(Z)V

    .line 161
    iget-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->overlayView:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method
