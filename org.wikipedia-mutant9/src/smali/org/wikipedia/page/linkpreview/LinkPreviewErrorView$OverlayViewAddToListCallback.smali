.class Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewAddToListCallback;
.super Ljava/lang/Object;
.source "LinkPreviewErrorView.java"

# interfaces
.implements Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverlayViewAddToListCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;


# direct methods
.method private constructor <init>(Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewAddToListCallback;->this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$1;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewAddToListCallback;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;)V

    return-void
.end method


# virtual methods
.method public onPrimaryClick()V
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewAddToListCallback;->this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;

    invoke-static {v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;->access$200(Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;)Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewAddToListCallback;->this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;

    invoke-static {v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;->access$200(Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;)Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;

    move-result-object v0

    invoke-interface {v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;->onAddToList()V

    :cond_0
    return-void
.end method

.method public onSecondaryClick()V
    .locals 0

    return-void
.end method

.method public onTertiaryClick()V
    .locals 0

    return-void
.end method
