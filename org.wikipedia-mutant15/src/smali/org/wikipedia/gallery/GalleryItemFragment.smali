.class public Lorg/wikipedia/gallery/GalleryItemFragment;
.super Landroidx/fragment/app/Fragment;
.source "GalleryItemFragment.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/gallery/GalleryItemFragment$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/Fragment;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final ARG_GALLERY_ITEM:Ljava/lang/String; = "galleryItem"

.field private static final ARG_PAGETITLE:Ljava/lang/String; = "pageTitle"


# instance fields
.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private imageTitle:Lorg/wikipedia/page/PageTitle;

.field imageView:Lcom/github/chrisbanes/photoview/PhotoView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mediaController:Landroid/widget/MediaController;

.field private mediaListItem:Lorg/wikipedia/gallery/MediaListItem;

.field private mediaPage:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

.field private pageTitle:Lorg/wikipedia/page/PageTitle;

.field progressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private unbinder:Lbutterknife/Unbinder;

.field videoContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field videoPlayButton:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field videoThumbnail:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private videoThumbnailClickListener:Landroid/view/View$OnClickListener;

.field videoView:Landroid/widget/VideoView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 78
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 260
    new-instance v0, Lorg/wikipedia/gallery/GalleryItemFragment$1;

    invoke-direct {v0, p0}, Lorg/wikipedia/gallery/GalleryItemFragment$1;-><init>(Lorg/wikipedia/gallery/GalleryItemFragment;)V

    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->videoThumbnailClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/gallery/GalleryItemFragment;)Landroid/widget/MediaController;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->mediaController:Landroid/widget/MediaController;

    return-object p0
.end method

.method static synthetic access$002(Lorg/wikipedia/gallery/GalleryItemFragment;Landroid/widget/MediaController;)Landroid/widget/MediaController;
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->mediaController:Landroid/widget/MediaController;

    return-object p1
.end method

.method static synthetic access$100(Lorg/wikipedia/gallery/GalleryItemFragment;Z)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->updateProgressBar(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/wikipedia/gallery/GalleryItemFragment;)Lorg/wikipedia/gallery/GalleryItemFragment$Callback;
    .locals 0

    .line 62
    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryItemFragment;->callback()Lorg/wikipedia/gallery/GalleryItemFragment$Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lorg/wikipedia/gallery/GalleryItemFragment;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getShareSubject()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lorg/wikipedia/gallery/GalleryItemFragment;)Lorg/wikipedia/page/PageTitle;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->imageTitle:Lorg/wikipedia/page/PageTitle;

    return-object p0
.end method

.method private callback()Lorg/wikipedia/gallery/GalleryItemFragment$Callback;
    .locals 1

    .line 384
    const-class v0, Lorg/wikipedia/gallery/GalleryItemFragment$Callback;

    invoke-static {p0, v0}, Lorg/wikipedia/activity/FragmentUtil;->getCallback(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/gallery/GalleryItemFragment$Callback;

    return-object v0
.end method

.method private getMediaInfoDisposable(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->mediaListItem:Lorg/wikipedia/gallery/MediaListItem;

    invoke-virtual {v0}, Lorg/wikipedia/gallery/MediaListItem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/FileUtil;->isVideo(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "https://commons.wikimedia.org/"

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->mediaListItem:Lorg/wikipedia/gallery/MediaListItem;

    invoke-virtual {v0}, Lorg/wikipedia/gallery/MediaListItem;->isInCommons()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/wikipedia/dataclient/WikiSite;

    invoke-direct {v0, v1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/wikipedia/dataclient/Service;->getVideoInfo(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1

    .line 256
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->mediaListItem:Lorg/wikipedia/gallery/MediaListItem;

    invoke-virtual {v0}, Lorg/wikipedia/gallery/MediaListItem;->isInCommons()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/wikipedia/dataclient/WikiSite;

    invoke-direct {v0, v1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/wikipedia/dataclient/Service;->getImageInfo(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method private getShareSubject()Ljava/lang/String;
    .locals 1

    .line 374
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->pageTitle:Lorg/wikipedia/page/PageTitle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private handleImageSaveRequest()V
    .locals 1

    .line 211
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/PermissionUtil;->hasWriteExternalStoragePermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryItemFragment;->requestWriteExternalStoragePermission()V

    goto :goto_0

    .line 214
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryItemFragment;->saveImage()V

    :goto_0
    return-void
.end method

.method private loadImage(Ljava/lang/String;)V
    .locals 2

    .line 317
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->imageView:Lcom/github/chrisbanes/photoview/PhotoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading image from url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/log/L;->v(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 320
    invoke-direct {p0, v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->updateProgressBar(Z)V

    .line 321
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->imageView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-static {v0, p1, p0}, Lorg/wikipedia/views/ViewUtil;->loadImageWithWhiteBackground(Landroid/widget/ImageView;Ljava/lang/String;Lcom/bumptech/glide/request/RequestListener;)V

    return-void
.end method

.method private loadMedia()V
    .locals 4

    .line 227
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->pageTitle:Lorg/wikipedia/page/PageTitle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->mediaListItem:Lorg/wikipedia/gallery/MediaListItem;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 230
    invoke-direct {p0, v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->updateProgressBar(Z)V

    .line 231
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->mediaListItem:Lorg/wikipedia/gallery/MediaListItem;

    invoke-virtual {v1}, Lorg/wikipedia/gallery/MediaListItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfoDisposable(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 232
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 233
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/gallery/-$$Lambda$GalleryItemFragment$iBKnhd6NRlZLwD11vKIdXXR8l_0;

    invoke-direct {v2, p0}, Lorg/wikipedia/gallery/-$$Lambda$GalleryItemFragment$iBKnhd6NRlZLwD11vKIdXXR8l_0;-><init>(Lorg/wikipedia/gallery/GalleryItemFragment;)V

    .line 234
    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doAfterTerminate(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/gallery/-$$Lambda$GalleryItemFragment$uI8XpCWkqQJ63IFqy7SgtQWzFJY;

    invoke-direct {v2, p0}, Lorg/wikipedia/gallery/-$$Lambda$GalleryItemFragment$uI8XpCWkqQJ63IFqy7SgtQWzFJY;-><init>(Lorg/wikipedia/gallery/GalleryItemFragment;)V

    new-instance v3, Lorg/wikipedia/gallery/-$$Lambda$GalleryItemFragment$fZPx56N0LJl4IKoBIX4sAlx4TII;

    invoke-direct {v3, p0}, Lorg/wikipedia/gallery/-$$Lambda$GalleryItemFragment$fZPx56N0LJl4IKoBIX4sAlx4TII;-><init>(Lorg/wikipedia/gallery/GalleryItemFragment;)V

    .line 239
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private loadVideo()V
    .locals 3

    .line 303
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->videoContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->videoPlayButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->videoView:Landroid/widget/VideoView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 306
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/gallery/ImageInfo;->getThumbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->videoThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->videoThumbnail:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/gallery/ImageInfo;->getThumbUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wikipedia/views/ViewUtil;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1

    .line 307
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->videoThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    :goto_1
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->videoThumbnail:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->videoThumbnailClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/gallery/MediaListItem;)Lorg/wikipedia/gallery/GalleryItemFragment;
    .locals 3

    .line 101
    new-instance v0, Lorg/wikipedia/gallery/GalleryItemFragment;

    invoke-direct {v0}, Lorg/wikipedia/gallery/GalleryItemFragment;-><init>()V

    .line 102
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pageTitle"

    .line 103
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "galleryItem"

    .line 104
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 105
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private requestWriteExternalStoragePermission()V
    .locals 1

    const/16 v0, 0x2c

    .line 219
    invoke-static {p0, v0}, Lorg/wikipedia/util/PermissionUtil;->requestWriteStorageRuntimePermissions(Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method private saveImage()V
    .locals 1

    .line 378
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryItemFragment;->callback()Lorg/wikipedia/gallery/GalleryItemFragment$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryItemFragment;->callback()Lorg/wikipedia/gallery/GalleryItemFragment$Callback;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/wikipedia/gallery/GalleryItemFragment$Callback;->onDownload(Lorg/wikipedia/gallery/GalleryItemFragment;)V

    :cond_0
    return-void
.end method

.method private shareImage()V
    .locals 3

    .line 339
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 342
    :cond_0
    new-instance v0, Lorg/wikipedia/gallery/GalleryItemFragment$2;

    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/gallery/ImageInfo;->getThumbUrl()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x500

    invoke-static {v1, v2}, Lorg/wikipedia/util/ImageUrlUtil;->getUrlForPreferredSize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/gallery/GalleryItemFragment$2;-><init>(Lorg/wikipedia/gallery/GalleryItemFragment;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/gallery/ImagePipelineBitmapGetter;->get(Landroid/content/Context;)V

    return-void
.end method

.method private updateProgressBar(Z)V
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->progressBar:Landroid/widget/ProgressBar;

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
.method getImageTitle()Lorg/wikipedia/page/PageTitle;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->imageTitle:Lorg/wikipedia/page/PageTitle;

    return-object v0
.end method

.method getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->mediaPage:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMediaPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->mediaPage:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    return-object v0
.end method

.method public synthetic lambda$loadMedia$2$GalleryItemFragment()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 235
    invoke-direct {p0, v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->updateProgressBar(Z)V

    .line 236
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 237
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/gallery/GalleryActivity;

    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryActivity;->layOutGalleryDescription()V

    return-void
.end method

.method public synthetic lambda$loadMedia$3$GalleryItemFragment(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 240
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->mediaPage:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 241
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->mediaListItem:Lorg/wikipedia/gallery/MediaListItem;

    invoke-virtual {p1}, Lorg/wikipedia/gallery/MediaListItem;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/FileUtil;->isVideo(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 242
    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryItemFragment;->loadVideo()V

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/gallery/ImageInfo;->getThumbUrl()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x500

    invoke-static {p1, v0}, Lorg/wikipedia/util/ImageUrlUtil;->getUrlForPreferredSize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->loadImage(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$loadMedia$4$GalleryItemFragment(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f100140

    invoke-static {v0, v1}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;I)V

    .line 248
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic lambda$onCreateView$0$GalleryItemFragment(Landroid/view/View;)V
    .locals 0

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/gallery/GalleryActivity;

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryActivity;->toggleControls()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onCreateView$1$GalleryItemFragment(Landroid/graphics/RectF;)V
    .locals 2

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->imageView:Lcom/github/chrisbanes/photoview/PhotoView;

    if-nez p1, :cond_0

    goto :goto_1

    .line 137
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/gallery/GalleryActivity;

    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->imageView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lorg/wikipedia/gallery/GalleryActivity;->setViewPagerEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 145
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 146
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 147
    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryItemFragment;->loadMedia()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 111
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "galleryItem"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/gallery/MediaListItem;

    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->mediaListItem:Lorg/wikipedia/gallery/MediaListItem;

    .line 113
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "pageTitle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/page/PageTitle;

    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->pageTitle:Lorg/wikipedia/page/PageTitle;

    if-nez p1, :cond_0

    .line 115
    new-instance p1, Lorg/wikipedia/page/PageTitle;

    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->mediaListItem:Lorg/wikipedia/gallery/MediaListItem;

    invoke-virtual {v0}, Lorg/wikipedia/gallery/MediaListItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/dataclient/WikiSite;

    const-string v2, "https://commons.wikimedia.org/"

    invoke-direct {v1, v2}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0, v1}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 117
    :cond_0
    new-instance p1, Lorg/wikipedia/page/PageTitle;

    sget-object v0, Lorg/wikipedia/page/Namespace;->FILE:Lorg/wikipedia/page/Namespace;

    invoke-virtual {v0}, Lorg/wikipedia/page/Namespace;->toLegacyString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->mediaListItem:Lorg/wikipedia/gallery/MediaListItem;

    .line 118
    invoke-virtual {v1}, Lorg/wikipedia/gallery/MediaListItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 119
    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->imageTitle:Lorg/wikipedia/page/PageTitle;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0052

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 125
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->unbinder:Lbutterknife/Unbinder;

    .line 127
    iget-object p2, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->imageView:Lcom/github/chrisbanes/photoview/PhotoView;

    new-instance p3, Lorg/wikipedia/gallery/-$$Lambda$GalleryItemFragment$sSexcd90VeIpHKsBE4cNJC2JMXw;

    invoke-direct {p3, p0}, Lorg/wikipedia/gallery/-$$Lambda$GalleryItemFragment$sSexcd90VeIpHKsBE4cNJC2JMXw;-><init>(Lorg/wikipedia/gallery/GalleryItemFragment;)V

    invoke-virtual {p2, p3}, Lcom/github/chrisbanes/photoview/PhotoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object p2, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->imageView:Lcom/github/chrisbanes/photoview/PhotoView;

    new-instance p3, Lorg/wikipedia/gallery/-$$Lambda$GalleryItemFragment$IT7mfODMYoIdODz3RDiJxJ5SW2c;

    invoke-direct {p3, p0}, Lorg/wikipedia/gallery/-$$Lambda$GalleryItemFragment$IT7mfODMYoIdODz3RDiJxJ5SW2c;-><init>(Lorg/wikipedia/gallery/GalleryItemFragment;)V

    invoke-virtual {p2, p3}, Lcom/github/chrisbanes/photoview/PhotoView;->setOnMatrixChangeListener(Lcom/github/chrisbanes/photoview/OnMatrixChangedListener;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 152
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 153
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->imageView:Lcom/github/chrisbanes/photoview/PhotoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/chrisbanes/photoview/PhotoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->videoThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->unbinder:Lbutterknife/Unbinder;

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 157
    iput-object v1, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->unbinder:Lbutterknife/Unbinder;

    .line 159
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    .line 327
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/gallery/GalleryActivity;

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryActivity;->onMediaLoaded()V

    const/4 p1, 0x0

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 192
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 207
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 194
    :pswitch_0
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->imageTitle:Lorg/wikipedia/page/PageTitle;

    if-eqz p1, :cond_0

    .line 195
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->imageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-static {p1, v0}, Lorg/wikipedia/commons/FilePageActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return v1

    .line 202
    :pswitch_1
    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryItemFragment;->shareImage()V

    return v1

    .line 199
    :pswitch_2
    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryItemFragment;->handleImageSaveRequest()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7f09022e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .line 164
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 165
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->mediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .line 179
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f090230

    .line 183
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v0, 0x7f09022f

    .line 184
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 185
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/gallery/ImageInfo;->getThumbUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->imageView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 184
    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v0, 0x7f09022e

    .line 186
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 187
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/gallery/ImageInfo;->getThumbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->imageView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 186
    :goto_2
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/16 p2, 0x2c

    if-ne p1, p2, :cond_1

    .line 360
    invoke-static {p3}, Lorg/wikipedia/util/PermissionUtil;->isPermitted([I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 361
    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryItemFragment;->saveImage()V

    goto :goto_0

    :cond_0
    const-string p1, "Write permission was denied by user"

    .line 363
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/CharSequence;)V

    .line 364
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f100146

    invoke-static {p1, p2}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;I)V

    :goto_0
    return-void

    .line 368
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected permission request code "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    .line 333
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->imageView:Lcom/github/chrisbanes/photoview/PhotoView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/gallery/GalleryActivity;

    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryActivity;->onMediaLoaded()V

    return p2
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 62
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lorg/wikipedia/gallery/GalleryItemFragment;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
