.class final Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GalleryThumbnailScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/gallery/GalleryThumbnailScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GalleryViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryItemHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryPage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/wikipedia/gallery/GalleryThumbnailScrollView;


# direct methods
.method constructor <init>(Lorg/wikipedia/gallery/GalleryThumbnailScrollView;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryPage;",
            ">;)V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewAdapter;->this$0:Lorg/wikipedia/gallery/GalleryThumbnailScrollView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 102
    iput-object p2, p0, Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 98
    check-cast p1, Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryItemHolder;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewAdapter;->onBindViewHolder(Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryItemHolder;I)V
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    invoke-virtual {p1, p2}, Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryItemHolder;->bindItem(Lorg/wikipedia/dataclient/mwapi/MwQueryPage;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 98
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryItemHolder;
    .locals 2

    .line 112
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c007e

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 114
    new-instance p2, Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryItemHolder;

    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewAdapter;->this$0:Lorg/wikipedia/gallery/GalleryThumbnailScrollView;

    invoke-direct {p2, v0, p1}, Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryItemHolder;-><init>(Lorg/wikipedia/gallery/GalleryThumbnailScrollView;Landroid/view/View;)V

    return-object p2
.end method
