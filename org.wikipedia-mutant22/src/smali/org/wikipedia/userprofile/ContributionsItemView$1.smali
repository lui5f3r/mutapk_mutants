.class final Lorg/wikipedia/userprofile/ContributionsItemView$1;
.super Ljava/lang/Object;
.source "ContributionsItemView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/userprofile/ContributionsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lorg/wikipedia/userprofile/ContributionsItemView;


# direct methods
.method constructor <init>(Lorg/wikipedia/userprofile/ContributionsItemView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/userprofile/ContributionsItemView$1;->this$0:Lorg/wikipedia/userprofile/ContributionsItemView;

    iput-object p2, p0, Lorg/wikipedia/userprofile/ContributionsItemView$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 33
    iget-object p1, p0, Lorg/wikipedia/userprofile/ContributionsItemView$1;->this$0:Lorg/wikipedia/userprofile/ContributionsItemView;

    invoke-virtual {p1}, Lorg/wikipedia/userprofile/ContributionsItemView;->getCallback()Lorg/wikipedia/userprofile/ContributionsItemView$Callback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/wikipedia/userprofile/ContributionsItemView$1;->this$0:Lorg/wikipedia/userprofile/ContributionsItemView;

    sget v0, Lorg/wikipedia/R$id;->title:I

    invoke-virtual {p1, v0}, Lorg/wikipedia/userprofile/ContributionsItemView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "title.text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 34
    iget-object p1, p0, Lorg/wikipedia/userprofile/ContributionsItemView$1;->this$0:Lorg/wikipedia/userprofile/ContributionsItemView;

    invoke-virtual {p1}, Lorg/wikipedia/userprofile/ContributionsItemView;->getCallback()Lorg/wikipedia/userprofile/ContributionsItemView$Callback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsItemView$1;->$context:Landroid/content/Context;

    iget-object v1, p0, Lorg/wikipedia/userprofile/ContributionsItemView$1;->this$0:Lorg/wikipedia/userprofile/ContributionsItemView;

    invoke-virtual {v1}, Lorg/wikipedia/userprofile/ContributionsItemView;->getContribution()Lorg/wikipedia/userprofile/Contribution;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v0, v1}, Lorg/wikipedia/userprofile/ContributionsItemView$Callback;->onClick(Landroid/content/Context;Lorg/wikipedia/userprofile/Contribution;)V

    :cond_1
    return-void
.end method
