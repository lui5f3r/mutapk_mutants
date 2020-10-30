.class final Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$OnToSpinnerItemSelectedListener;
.super Ljava/lang/Object;
.source "SuggestedEditsCardsFragment.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnToSpinnerItemSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 436
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$OnToSpinnerItemSelectedListener;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$OnToSpinnerItemSelectedListener;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getLangFromCode()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$OnToSpinnerItemSelectedListener;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-static {p2}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->access$getApp$p(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)Lorg/wikipedia/WikipediaApp;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object p2

    const-string p4, "app.language()"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 439
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$OnToSpinnerItemSelectedListener;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-static {p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->access$swapLanguageSpinnerSelection(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;Z)V

    .line 442
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$OnToSpinnerItemSelectedListener;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-static {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->access$getSwappingLanguageSpinners$p(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$OnToSpinnerItemSelectedListener;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getLangToCode()Ljava/lang/String;

    move-result-object p1

    iget-object p5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$OnToSpinnerItemSelectedListener;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-static {p5}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->access$getApp$p(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)Lorg/wikipedia/WikipediaApp;

    move-result-object p5

    invoke-virtual {p5}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object p5

    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p5}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    .line 443
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$OnToSpinnerItemSelectedListener;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-static {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->access$getApp$p(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)Lorg/wikipedia/WikipediaApp;

    move-result-object p5

    invoke-virtual {p5}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object p5

    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p5}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    const-string p4, "app.language().appLanguageCodes[position]"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->setLangToCode(Ljava/lang/String;)V

    .line 444
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$OnToSpinnerItemSelectedListener;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-static {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->access$resetViewPagerItemAdapter(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V

    .line 445
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$OnToSpinnerItemSelectedListener;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-static {p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->access$updateBackButton(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;I)V

    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
