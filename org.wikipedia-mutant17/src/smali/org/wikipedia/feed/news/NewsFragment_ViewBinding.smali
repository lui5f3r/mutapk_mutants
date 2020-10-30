.class public Lorg/wikipedia/feed/news/NewsFragment_ViewBinding;
.super Ljava/lang/Object;
.source "NewsFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/feed/news/NewsFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/news/NewsFragment;Landroid/view/View;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/wikipedia/feed/news/NewsFragment_ViewBinding;->target:Lorg/wikipedia/feed/news/NewsFragment;

    .line 26
    const-class v0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    const v1, 0x7f090489

    const-string v2, "field \'image\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    iput-object v0, p1, Lorg/wikipedia/feed/news/NewsFragment;->image:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09048b

    const-string v2, "field \'text\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/feed/news/NewsFragment;->text:Landroid/widget/TextView;

    .line 28
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f09048a

    const-string v2, "field \'links\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lorg/wikipedia/feed/news/NewsFragment;->links:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f09048c

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lorg/wikipedia/feed/news/NewsFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 30
    const-class v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const v1, 0x7f090285

    const-string v2, "field \'toolBarLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v0, p1, Lorg/wikipedia/feed/news/NewsFragment;->toolBarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 31
    const-class v0, Lcom/google/android/material/appbar/AppBarLayout;

    const v1, 0x7f090284

    const-string v2, "field \'appBarLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p1, Lorg/wikipedia/feed/news/NewsFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const v0, 0x7f090488

    const-string v1, "field \'gradientView\'"

    .line 32
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lorg/wikipedia/feed/news/NewsFragment;->gradientView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 38
    iget-object v0, p0, Lorg/wikipedia/feed/news/NewsFragment_ViewBinding;->target:Lorg/wikipedia/feed/news/NewsFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lorg/wikipedia/feed/news/NewsFragment_ViewBinding;->target:Lorg/wikipedia/feed/news/NewsFragment;

    .line 42
    iput-object v1, v0, Lorg/wikipedia/feed/news/NewsFragment;->image:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 43
    iput-object v1, v0, Lorg/wikipedia/feed/news/NewsFragment;->text:Landroid/widget/TextView;

    .line 44
    iput-object v1, v0, Lorg/wikipedia/feed/news/NewsFragment;->links:Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    iput-object v1, v0, Lorg/wikipedia/feed/news/NewsFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 46
    iput-object v1, v0, Lorg/wikipedia/feed/news/NewsFragment;->toolBarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 47
    iput-object v1, v0, Lorg/wikipedia/feed/news/NewsFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 48
    iput-object v1, v0, Lorg/wikipedia/feed/news/NewsFragment;->gradientView:Landroid/view/View;

    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
