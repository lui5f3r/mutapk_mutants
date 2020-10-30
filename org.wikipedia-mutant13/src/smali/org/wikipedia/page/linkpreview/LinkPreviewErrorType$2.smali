.class final enum Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType$2;
.super Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;
.source "LinkPreviewErrorType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 23
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;-><init>(Ljava/lang/String;IIIILorg/wikipedia/page/linkpreview/LinkPreviewErrorType$1;)V

    return-void
.end method


# virtual methods
.method buttonAction(Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;)Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;
    .locals 0

    .line 27
    invoke-virtual {p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;->dismissCallback()Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewDismissCallback;

    move-result-object p1

    return-object p1
.end method
