.class public Lorg/wikipedia/gallery/GalleryThumbnailScrollView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "GalleryThumbnailScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewAdapter;,
        Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryItemHolder;,
        Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewListener;
    }
.end annotation


# instance fields
.field private mListener:Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewListener;

.field private final mPressAnimation:Landroid/view/animation/Animation;

.field private final mReleaseAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lorg/wikipedia/gallery/GalleryThumbnailScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lorg/wikipedia/gallery/GalleryThumbnailScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const p2, 0x7f01002e

    .line 41
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/gallery/GalleryThumbnailScrollView;->mPressAnimation:Landroid/view/animation/Animation;

    const p2, 0x7f01002f

    .line 42
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryThumbnailScrollView;->mReleaseAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/gallery/GalleryThumbnailScrollView;)Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryThumbnailScrollView;->mListener:Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewListener;

    return-object p0
.end method

.method static synthetic access$100(Lorg/wikipedia/gallery/GalleryThumbnailScrollView;)Landroid/view/animation/Animation;
    .locals 0

    .line 24
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryThumbnailScrollView;->mPressAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$200(Lorg/wikipedia/gallery/GalleryThumbnailScrollView;)Landroid/view/animation/Animation;
    .locals 0

    .line 24
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryThumbnailScrollView;->mReleaseAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method


# virtual methods
.method public setGalleryList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryPage;",
            ">;)V"
        }
    .end annotation

    .line 54
    new-instance v0, Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewAdapter;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewAdapter;-><init>(Lorg/wikipedia/gallery/GalleryThumbnailScrollView;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setGalleryViewListener(Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewListener;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryThumbnailScrollView;->mListener:Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewListener;

    return-void
.end method
