.class Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$OverlayViewCallback;
.super Ljava/lang/Object;
.source "LinkPreviewDialog.java"

# interfaces
.implements Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverlayViewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;


# direct methods
.method private constructor <init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$OverlayViewCallback;->this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$1;)V
    .locals 0

    .line 357
    invoke-direct {p0, p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$OverlayViewCallback;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;)V

    return-void
.end method


# virtual methods
.method public onPrimaryClick()V
    .locals 2

    .line 360
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$OverlayViewCallback;->this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->goToLinkedPage(Z)V

    return-void
.end method

.method public onSecondaryClick()V
    .locals 2

    .line 365
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$OverlayViewCallback;->this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->goToLinkedPage(Z)V

    return-void
.end method

.method public onTertiaryClick()V
    .locals 1

    .line 370
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$OverlayViewCallback;->this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    invoke-static {v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->access$400(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;)V

    return-void
.end method
