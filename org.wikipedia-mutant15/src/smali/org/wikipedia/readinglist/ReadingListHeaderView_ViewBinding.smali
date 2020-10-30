.class public Lorg/wikipedia/readinglist/ReadingListHeaderView_ViewBinding;
.super Ljava/lang/Object;
.source "ReadingListHeaderView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/readinglist/ReadingListHeaderView;


# direct methods
.method public constructor <init>(Lorg/wikipedia/readinglist/ReadingListHeaderView;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p1}, Lorg/wikipedia/readinglist/ReadingListHeaderView_ViewBinding;-><init>(Lorg/wikipedia/readinglist/ReadingListHeaderView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/readinglist/ReadingListHeaderView;Landroid/view/View;)V
    .locals 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListHeaderView_ViewBinding;->target:Lorg/wikipedia/readinglist/ReadingListHeaderView;

    const v0, 0x7f09031c

    const-string v1, "field \'gradientView\'"

    .line 26
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/readinglist/ReadingListHeaderView;->gradientView:Landroid/view/View;

    const v0, 0x7f090314

    const-string v1, "field \'emptyView\'"

    .line 27
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/readinglist/ReadingListHeaderView;->emptyView:Landroid/view/View;

    const v0, 0x7f09031b

    const-string v1, "field \'imageContainerView\'"

    .line 28
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/readinglist/ReadingListHeaderView;->imageContainerView:Landroid/view/View;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 29
    const-class v1, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    const v2, 0x7f090315

    const-string v3, "field \'imageViews\'"

    .line 30
    invoke-static {p2, v2, v3, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    const v2, 0x7f090316

    .line 31
    invoke-static {p2, v2, v3, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    const v2, 0x7f090317

    .line 32
    invoke-static {p2, v2, v3, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    const v2, 0x7f090318

    .line 33
    invoke-static {p2, v2, v3, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    const v2, 0x7f090319

    .line 34
    invoke-static {p2, v2, v3, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-class v1, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    const v2, 0x7f09031a

    .line 35
    invoke-static {p2, v2, v3, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    const/4 v1, 0x5

    aput-object p2, v0, v1

    .line 29
    invoke-static {v0}, Lbutterknife/internal/Utils;->listFilteringNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lorg/wikipedia/readinglist/ReadingListHeaderView;->imageViews:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 41
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListHeaderView_ViewBinding;->target:Lorg/wikipedia/readinglist/ReadingListHeaderView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListHeaderView_ViewBinding;->target:Lorg/wikipedia/readinglist/ReadingListHeaderView;

    .line 45
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListHeaderView;->gradientView:Landroid/view/View;

    .line 46
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListHeaderView;->emptyView:Landroid/view/View;

    .line 47
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListHeaderView;->imageContainerView:Landroid/view/View;

    .line 48
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListHeaderView;->imageViews:Ljava/util/List;

    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
