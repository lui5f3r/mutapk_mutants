.class public Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView_ViewBinding;
.super Ljava/lang/Object;
.source "HorizontalScrollingListCardItemView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p1}, Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView_ViewBinding;-><init>(Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView_ViewBinding;->target:Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;

    .line 29
    const-class v0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    const v1, 0x7f0901b0

    const-string v2, "field \'imageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    iput-object v0, p1, Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;->imageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 30
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901b1

    const-string v2, "field \'textView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;->textView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 36
    iget-object v0, p0, Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView_ViewBinding;->target:Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView_ViewBinding;->target:Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;

    .line 40
    iput-object v1, v0, Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;->imageView:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 41
    iput-object v1, v0, Lorg/wikipedia/feed/view/HorizontalScrollingListCardItemView;->textView:Landroid/widget/TextView;

    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
