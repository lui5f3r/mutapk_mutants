.class final Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$updateContents$1;
.super Ljava/lang/Object;
.source "SuggestedEditsImageTagsFragment.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->updateContents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$updateContents$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$updateContents$1;->accept(Ljava/util/Map;)V

    return-void
.end method

.method public final accept(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$updateContents$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    invoke-static {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->access$callback(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;

    move-result-object v0

    invoke-interface {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;->getLangCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "imageCaption"

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$updateContents$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    sget v3, Lorg/wikipedia/R$id;->imageCaption:I

    invoke-virtual {v0, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$updateContents$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    invoke-static {v3}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->access$callback(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;

    move-result-object v3

    invoke-interface {v3}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;->getLangCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$updateContents$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    sget v0, Lorg/wikipedia/R$id;->imageCaption:I

    invoke-virtual {p1, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 170
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$updateContents$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    invoke-static {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->access$getPage$p(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$updateContents$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    invoke-static {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->access$getPage$p(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "page!!.imageInfo()!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/wikipedia/gallery/ImageInfo;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 171
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$updateContents$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    sget v3, Lorg/wikipedia/R$id;->imageCaption:I

    invoke-virtual {p1, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$updateContents$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    invoke-static {v3}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->access$getPage$p(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;)Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/wikipedia/gallery/ImageInfo;->getMetadata()Lorg/wikipedia/gallery/ExtMetadata;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/wikipedia/gallery/ExtMetadata;->imageDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$updateContents$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    sget v0, Lorg/wikipedia/R$id;->imageCaption:I

    invoke-virtual {p1, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 171
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 174
    :cond_2
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$updateContents$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    sget v0, Lorg/wikipedia/R$id;->imageCaption:I

    invoke-virtual {p1, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
