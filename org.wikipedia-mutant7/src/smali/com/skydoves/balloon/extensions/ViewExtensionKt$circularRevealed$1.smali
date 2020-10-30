.class final Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularRevealed$1;
.super Ljava/lang/Object;
.source "ViewExtension.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/balloon/extensions/ViewExtensionKt;->circularRevealed(Landroid/view/View;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewExtension.kt\ncom/skydoves/balloon/extensions/ViewExtensionKt$circularRevealed$1\n*L\n1#1,84:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $circularDuration:J

.field final synthetic $this_circularRevealed:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;J)V
    .locals 0

    iput-object p1, p0, Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularRevealed$1;->$this_circularRevealed:Landroid/view/View;

    iput-wide p2, p0, Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularRevealed$1;->$circularDuration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 45
    iget-object v0, p0, Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularRevealed$1;->$this_circularRevealed:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularRevealed$1;->$this_circularRevealed:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularRevealed$1;->$this_circularRevealed:Landroid/view/View;

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularRevealed$1;->$this_circularRevealed:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 49
    iget-object v2, p0, Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularRevealed$1;->$this_circularRevealed:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularRevealed$1;->$this_circularRevealed:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    .line 51
    iget-object v4, p0, Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularRevealed$1;->$this_circularRevealed:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularRevealed$1;->$this_circularRevealed:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    .line 47
    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 52
    iget-wide v1, p0, Lcom/skydoves/balloon/extensions/ViewExtensionKt$circularRevealed$1;->$circularDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 53
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method
