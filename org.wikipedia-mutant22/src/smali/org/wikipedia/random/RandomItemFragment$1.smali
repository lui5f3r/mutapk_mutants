.class Lorg/wikipedia/random/RandomItemFragment$1;
.super Ljava/lang/Object;
.source "RandomItemFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/random/RandomItemFragment;->updateContents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/random/RandomItemFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/random/RandomItemFragment;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lorg/wikipedia/random/RandomItemFragment$1;->this$0:Lorg/wikipedia/random/RandomItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 128
    iget-object v0, p0, Lorg/wikipedia/random/RandomItemFragment$1;->this$0:Lorg/wikipedia/random/RandomItemFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/wikipedia/random/RandomItemFragment$1;->this$0:Lorg/wikipedia/random/RandomItemFragment;

    iget-object v0, v0, Lorg/wikipedia/random/RandomItemFragment;->extractView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lorg/wikipedia/random/RandomItemFragment$1;->this$0:Lorg/wikipedia/random/RandomItemFragment;

    iget-object v1, v1, Lorg/wikipedia/random/RandomItemFragment;->extractView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 133
    iget-object v1, p0, Lorg/wikipedia/random/RandomItemFragment$1;->this$0:Lorg/wikipedia/random/RandomItemFragment;

    iget-object v1, v1, Lorg/wikipedia/random/RandomItemFragment;->extractView:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 134
    iget-object v0, p0, Lorg/wikipedia/random/RandomItemFragment$1;->this$0:Lorg/wikipedia/random/RandomItemFragment;

    iget-object v0, v0, Lorg/wikipedia/random/RandomItemFragment;->extractView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    :goto_0
    return-void
.end method
