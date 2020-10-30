.class final Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$onViewCreated$3;
.super Ljava/lang/Object;
.source "SuggestedEditsCardsFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$onViewCreated$3;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 120
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$onViewCreated$3;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    sget v0, Lorg/wikipedia/R$id;->nextButton:I

    invoke-virtual {p1, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    const-string v0, "nextButton"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Landroid/graphics/drawable/Animatable;

    if-eqz p1, :cond_1

    .line 121
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$onViewCreated$3;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    sget v1, Lorg/wikipedia/R$id;->nextButton:I

    invoke-virtual {p1, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.Animatable"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$onViewCreated$3;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->nextPage(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
