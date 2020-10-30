.class final Lorg/wikipedia/views/ImageTitleDescriptionView$1;
.super Ljava/lang/Object;
.source "ImageTitleDescriptionView.kt"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/views/ImageTitleDescriptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/views/ImageTitleDescriptionView;


# direct methods
.method constructor <init>(Lorg/wikipedia/views/ImageTitleDescriptionView;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/views/ImageTitleDescriptionView$1;->this$0:Lorg/wikipedia/views/ImageTitleDescriptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 25
    iget-object p1, p0, Lorg/wikipedia/views/ImageTitleDescriptionView$1;->this$0:Lorg/wikipedia/views/ImageTitleDescriptionView;

    invoke-virtual {p1}, Lorg/wikipedia/views/ImageTitleDescriptionView;->getTooltipText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 26
    iget-object p1, p0, Lorg/wikipedia/views/ImageTitleDescriptionView$1;->this$0:Lorg/wikipedia/views/ImageTitleDescriptionView;

    sget v2, Lorg/wikipedia/R$id;->description:I

    invoke-virtual {p1, v2}, Lorg/wikipedia/views/ImageTitleDescriptionView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/wikipedia/views/ImageTitleDescriptionView$1;->this$0:Lorg/wikipedia/views/ImageTitleDescriptionView;

    invoke-virtual {v2}, Lorg/wikipedia/views/ImageTitleDescriptionView;->getTooltipText()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0, v1}, Lorg/wikipedia/util/FeedbackUtil;->showTooltip(Landroid/view/View;Ljava/lang/CharSequence;ZZ)Lcom/skydoves/balloon/Balloon;

    :cond_1
    return v1
.end method
