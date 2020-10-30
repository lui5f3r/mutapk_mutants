.class final Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularUnRevealed$1;
.super Ljava/lang/Object;
.source "ViewExtension.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/balloon/extensions/ViewExtensionKt;->circularUnRevealed(Landroid/view/View;JLkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewExtension.kt\ncom/skydoves/balloon/extensions/ViewExtensionKt$circularUnRevealed$1\n*L\n1#1,84:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $circularDuration:J

.field final synthetic $doAfterFinish:Lkotlin/jvm/functions/Function0;

.field final synthetic $this_circularUnRevealed:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;JLkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularUnRevealed$1;->$this_circularUnRevealed:Landroid/view/View;

    iput-wide p2, p0, Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularUnRevealed$1;->$circularDuration:J

    iput-object p4, p0, Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularUnRevealed$1;->$doAfterFinish:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 66
    iget-object v0, p0, Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularUnRevealed$1;->$this_circularUnRevealed:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularUnRevealed$1;->$this_circularUnRevealed:Landroid/view/View;

    .line 68
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularUnRevealed$1;->$this_circularUnRevealed:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 69
    iget-object v2, p0, Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularUnRevealed$1;->$this_circularUnRevealed:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularUnRevealed$1;->$this_circularUnRevealed:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 70
    iget-object v3, p0, Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularUnRevealed$1;->$this_circularUnRevealed:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularUnRevealed$1;->$this_circularUnRevealed:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    .line 67
    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 72
    iget-wide v1, p0, Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularUnRevealed$1;->$circularDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 73
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 74
    new-instance v1, Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularUnRevealed$1$2;

    invoke-direct {v1, p0}, Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularUnRevealed$1$2;-><init>(Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularUnRevealed$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method
