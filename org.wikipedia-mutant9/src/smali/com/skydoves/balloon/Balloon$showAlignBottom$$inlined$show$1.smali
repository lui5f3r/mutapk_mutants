.class public final Lcom/skydoves/balloon/Balloon$showAlignBottom$$inlined$show$1;
.super Ljava/lang/Object;
.source "Balloon.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/balloon/Balloon;->showAlignBottom(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBalloon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Balloon.kt\ncom/skydoves/balloon/Balloon$show$2\n+ 2 Balloon.kt\ncom/skydoves/balloon/Balloon\n*L\n1#1,1355:1\n519#2,4:1356\n*E\n"
.end annotation


# instance fields
.field final synthetic $anchor:Landroid/view/View;

.field final synthetic $anchor$inlined:Landroid/view/View;

.field final synthetic this$0:Lcom/skydoves/balloon/Balloon;

.field final synthetic this$0$inline_fun:Lcom/skydoves/balloon/Balloon;


# direct methods
.method public constructor <init>(Lcom/skydoves/balloon/Balloon;Landroid/view/View;Lcom/skydoves/balloon/Balloon;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/skydoves/balloon/Balloon$showAlignBottom$$inlined$show$1;->this$0$inline_fun:Lcom/skydoves/balloon/Balloon;

    iput-object p2, p0, Lcom/skydoves/balloon/Balloon$showAlignBottom$$inlined$show$1;->$anchor:Landroid/view/View;

    iput-object p3, p0, Lcom/skydoves/balloon/Balloon$showAlignBottom$$inlined$show$1;->this$0:Lcom/skydoves/balloon/Balloon;

    iput-object p4, p0, Lcom/skydoves/balloon/Balloon$showAlignBottom$$inlined$show$1;->$anchor$inlined:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 394
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$showAlignBottom$$inlined$show$1;->this$0$inline_fun:Lcom/skydoves/balloon/Balloon;

    invoke-static {v0}, Lcom/skydoves/balloon/Balloon;->access$getBinding$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 395
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$showAlignBottom$$inlined$show$1;->this$0$inline_fun:Lcom/skydoves/balloon/Balloon;

    invoke-static {v0}, Lcom/skydoves/balloon/Balloon;->access$getBodyWindow$p(Lcom/skydoves/balloon/Balloon;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v2, p0, Lcom/skydoves/balloon/Balloon$showAlignBottom$$inlined$show$1;->this$0$inline_fun:Lcom/skydoves/balloon/Balloon;

    invoke-virtual {v2}, Lcom/skydoves/balloon/Balloon;->getMeasureWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 396
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$showAlignBottom$$inlined$show$1;->this$0$inline_fun:Lcom/skydoves/balloon/Balloon;

    invoke-static {v0}, Lcom/skydoves/balloon/Balloon;->access$getBodyWindow$p(Lcom/skydoves/balloon/Balloon;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v2, p0, Lcom/skydoves/balloon/Balloon$showAlignBottom$$inlined$show$1;->this$0$inline_fun:Lcom/skydoves/balloon/Balloon;

    invoke-virtual {v2}, Lcom/skydoves/balloon/Balloon;->getMeasureHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 397
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$showAlignBottom$$inlined$show$1;->this$0$inline_fun:Lcom/skydoves/balloon/Balloon;

    invoke-static {v0}, Lcom/skydoves/balloon/Balloon;->access$getBinding$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->balloonText:Lcom/skydoves/balloon/vectortext/VectorTextView;

    const-string v2, "this.binding.balloonText"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$showAlignBottom$$inlined$show$1;->this$0$inline_fun:Lcom/skydoves/balloon/Balloon;

    iget-object v2, p0, Lcom/skydoves/balloon/Balloon$showAlignBottom$$inlined$show$1;->$anchor:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/skydoves/balloon/Balloon;->access$initializeArrow(Lcom/skydoves/balloon/Balloon;Landroid/view/View;)V

    .line 401
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$showAlignBottom$$inlined$show$1;->this$0$inline_fun:Lcom/skydoves/balloon/Balloon;

    invoke-static {v0}, Lcom/skydoves/balloon/Balloon;->access$applyBalloonAnimation(Lcom/skydoves/balloon/Balloon;)V

    .line 1356
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$showAlignBottom$$inlined$show$1;->this$0:Lcom/skydoves/balloon/Balloon;

    invoke-static {v0}, Lcom/skydoves/balloon/Balloon;->access$getBodyWindow$p(Lcom/skydoves/balloon/Balloon;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v2, p0, Lcom/skydoves/balloon/Balloon$showAlignBottom$$inlined$show$1;->$anchor$inlined:Landroid/view/View;

    .line 1357
    iget-object v3, p0, Lcom/skydoves/balloon/Balloon$showAlignBottom$$inlined$show$1;->this$0:Lcom/skydoves/balloon/Balloon;

    invoke-static {v3}, Lcom/skydoves/balloon/Balloon;->access$getSupportRtlLayoutFactor$p(Lcom/skydoves/balloon/Balloon;)I

    move-result v3

    iget-object v4, p0, Lcom/skydoves/balloon/Balloon$showAlignBottom$$inlined$show$1;->$anchor$inlined:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/skydoves/balloon/Balloon$showAlignBottom$$inlined$show$1;->this$0:Lcom/skydoves/balloon/Balloon;

    invoke-virtual {v5}, Lcom/skydoves/balloon/Balloon;->getMeasureWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    mul-int v3, v3, v4

    .line 1356
    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method
