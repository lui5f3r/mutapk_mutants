.class public final Lcom/skydoves/balloon/Balloon$showAlignTop$$inlined$show$2;
.super Ljava/lang/Object;
.source "Balloon.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/balloon/Balloon;->showAlignTop(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBalloon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Balloon.kt\ncom/skydoves/balloon/Balloon$show$2\n+ 2 Balloon.kt\ncom/skydoves/balloon/Balloon\n*L\n1#1,1355:1\n501#2,4:1356\n*E\n"
.end annotation


# instance fields
.field final synthetic $anchor:Landroid/view/View;

.field final synthetic $anchor$inlined:Landroid/view/View;

.field final synthetic $xOff$inlined:I

.field final synthetic $yOff$inlined:I

.field final synthetic this$0:Lcom/skydoves/balloon/Balloon;

.field final synthetic this$0$inline_fun:Lcom/skydoves/balloon/Balloon;


# direct methods
.method public constructor <init>(Lcom/skydoves/balloon/Balloon;Landroid/view/View;Lcom/skydoves/balloon/Balloon;Landroid/view/View;II)V
    .locals 0

    iput-object p1, p0, Lcom/skydoves/balloon/Balloon$showAlignTop$$inlined$show$2;->this$0$inline_fun:Lcom/skydoves/balloon/Balloon;

    iput-object p2, p0, Lcom/skydoves/balloon/Balloon$showAlignTop$$inlined$show$2;->$anchor:Landroid/view/View;

    iput-object p3, p0, Lcom/skydoves/balloon/Balloon$showAlignTop$$inlined$show$2;->this$0:Lcom/skydoves/balloon/Balloon;

    iput-object p4, p0, Lcom/skydoves/balloon/Balloon$showAlignTop$$inlined$show$2;->$anchor$inlined:Landroid/view/View;

    iput p5, p0, Lcom/skydoves/balloon/Balloon$showAlignTop$$inlined$show$2;->$xOff$inlined:I

    iput p6, p0, Lcom/skydoves/balloon/Balloon$showAlignTop$$inlined$show$2;->$yOff$inlined:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 394
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$showAlignTop$$inlined$show$2;->this$0$inline_fun:Lcom/skydoves/balloon/Balloon;

    invoke-static {v0}, Lcom/skydoves/balloon/Balloon;->access$getBinding$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 395
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$showAlignTop$$inlined$show$2;->this$0$inline_fun:Lcom/skydoves/balloon/Balloon;

    invoke-static {v0}, Lcom/skydoves/balloon/Balloon;->access$getBodyWindow$p(Lcom/skydoves/balloon/Balloon;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/skydoves/balloon/Balloon$showAlignTop$$inlined$show$2;->this$0$inline_fun:Lcom/skydoves/balloon/Balloon;

    invoke-virtual {v1}, Lcom/skydoves/balloon/Balloon;->getMeasureWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 396
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$showAlignTop$$inlined$show$2;->this$0$inline_fun:Lcom/skydoves/balloon/Balloon;

    invoke-static {v0}, Lcom/skydoves/balloon/Balloon;->access$getBodyWindow$p(Lcom/skydoves/balloon/Balloon;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/skydoves/balloon/Balloon$showAlignTop$$inlined$show$2;->this$0$inline_fun:Lcom/skydoves/balloon/Balloon;

    invoke-virtual {v1}, Lcom/skydoves/balloon/Balloon;->getMeasureHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 397
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$showAlignTop$$inlined$show$2;->this$0$inline_fun:Lcom/skydoves/balloon/Balloon;

    invoke-static {v0}, Lcom/skydoves/balloon/Balloon;->access$getBinding$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->balloonText:Lcom/skydoves/balloon/vectortext/VectorTextView;

    const-string v1, "this.binding.balloonText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$showAlignTop$$inlined$show$2;->this$0$inline_fun:Lcom/skydoves/balloon/Balloon;

    iget-object v1, p0, Lcom/skydoves/balloon/Balloon$showAlignTop$$inlined$show$2;->$anchor:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/skydoves/balloon/Balloon;->access$initializeArrow(Lcom/skydoves/balloon/Balloon;Landroid/view/View;)V

    .line 401
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$showAlignTop$$inlined$show$2;->this$0$inline_fun:Lcom/skydoves/balloon/Balloon;

    invoke-static {v0}, Lcom/skydoves/balloon/Balloon;->access$applyBalloonAnimation(Lcom/skydoves/balloon/Balloon;)V

    .line 1356
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$showAlignTop$$inlined$show$2;->this$0:Lcom/skydoves/balloon/Balloon;

    invoke-static {v0}, Lcom/skydoves/balloon/Balloon;->access$getBodyWindow$p(Lcom/skydoves/balloon/Balloon;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/skydoves/balloon/Balloon$showAlignTop$$inlined$show$2;->$anchor$inlined:Landroid/view/View;

    .line 1357
    iget-object v2, p0, Lcom/skydoves/balloon/Balloon$showAlignTop$$inlined$show$2;->this$0:Lcom/skydoves/balloon/Balloon;

    invoke-static {v2}, Lcom/skydoves/balloon/Balloon;->access$getSupportRtlLayoutFactor$p(Lcom/skydoves/balloon/Balloon;)I

    move-result v2

    iget-object v3, p0, Lcom/skydoves/balloon/Balloon$showAlignTop$$inlined$show$2;->$anchor$inlined:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/skydoves/balloon/Balloon$showAlignTop$$inlined$show$2;->this$0:Lcom/skydoves/balloon/Balloon;

    invoke-virtual {v4}, Lcom/skydoves/balloon/Balloon;->getMeasureWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/skydoves/balloon/Balloon$showAlignTop$$inlined$show$2;->$xOff$inlined:I

    add-int/2addr v3, v4

    mul-int v2, v2, v3

    .line 1358
    iget-object v3, p0, Lcom/skydoves/balloon/Balloon$showAlignTop$$inlined$show$2;->this$0:Lcom/skydoves/balloon/Balloon;

    invoke-virtual {v3}, Lcom/skydoves/balloon/Balloon;->getMeasureHeight()I

    move-result v3

    neg-int v3, v3

    iget-object v4, p0, Lcom/skydoves/balloon/Balloon$showAlignTop$$inlined$show$2;->$anchor$inlined:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/skydoves/balloon/Balloon$showAlignTop$$inlined$show$2;->$yOff$inlined:I

    add-int/2addr v3, v4

    .line 1356
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method
