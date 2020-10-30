.class Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "LinkPreviewOverlayView_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;


# direct methods
.method constructor <init>(Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding;Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding$2;->this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding$2;->val$target:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView_ViewBinding$2;->val$target:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->onSecondaryClick(Landroid/view/View;)V

    return-void
.end method
