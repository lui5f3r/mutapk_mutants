.class Lorg/wikipedia/gallery/GalleryActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "GalleryActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/gallery/GalleryActivity_ViewBinding;-><init>(Lorg/wikipedia/gallery/GalleryActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/gallery/GalleryActivity_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/gallery/GalleryActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/gallery/GalleryActivity_ViewBinding;Lorg/wikipedia/gallery/GalleryActivity;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity_ViewBinding$1;->this$0:Lorg/wikipedia/gallery/GalleryActivity_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/gallery/GalleryActivity_ViewBinding$1;->val$target:Lorg/wikipedia/gallery/GalleryActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity_ViewBinding$1;->val$target:Lorg/wikipedia/gallery/GalleryActivity;

    invoke-virtual {v0, p1}, Lorg/wikipedia/gallery/GalleryActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
