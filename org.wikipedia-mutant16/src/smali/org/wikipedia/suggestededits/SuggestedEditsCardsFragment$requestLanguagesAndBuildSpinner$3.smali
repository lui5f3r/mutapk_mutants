.class final Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$3;
.super Ljava/lang/Object;
.source "SuggestedEditsCardsFragment.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->requestLanguagesAndBuildSpinner()V
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
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuggestedEditsCardsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuggestedEditsCardsFragment.kt\norg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,555:1\n1799#2,2:556\n*E\n*S KotlinDebug\n*F\n+ 1 SuggestedEditsCardsFragment.kt\norg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$3\n*L\n295#1,2:556\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$3;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$3;->accept(Lkotlin/Unit;)V

    return-void
.end method

.method public final accept(Lkotlin/Unit;)V
    .locals 4

    .line 295
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$3;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-static {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->access$getApp$p(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object p1

    const-string v0, "app.language()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object p1

    const-string v0, "app.language().appLanguageCodes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1799
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 296
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$3;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-static {v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->access$getLanguageList$p(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$3;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    const-string v3, "it"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->access$getLanguageLocalName(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
