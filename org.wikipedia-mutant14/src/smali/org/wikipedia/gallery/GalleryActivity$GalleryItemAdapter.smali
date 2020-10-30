.class Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;
.super Lorg/wikipedia/views/PositionAwareFragmentStateAdapter;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/gallery/GalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GalleryItemAdapter"
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/gallery/MediaListItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/wikipedia/gallery/GalleryActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/gallery/GalleryActivity;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 856
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;->this$0:Lorg/wikipedia/gallery/GalleryActivity;

    .line 857
    invoke-direct {p0, p2}, Lorg/wikipedia/views/PositionAwareFragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 854
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 874
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;->this$0:Lorg/wikipedia/gallery/GalleryActivity;

    invoke-static {v0}, Lorg/wikipedia/gallery/GalleryActivity;->access$400(Lorg/wikipedia/gallery/GalleryActivity;)Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/gallery/MediaListItem;

    invoke-static {v0, p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->newInstance(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/gallery/MediaListItem;)Lorg/wikipedia/gallery/GalleryItemFragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 868
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/gallery/MediaListItem;",
            ">;)V"
        }
    .end annotation

    .line 861
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 862
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 863
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
