.class final Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$1;
.super Ljava/lang/Object;
.source "SuggestedEditsCardsFragment.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


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
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function<",
        "Lorg/wikipedia/dataclient/mwapi/SiteMatrix;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/SiteMatrix;

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$1;->apply(Lorg/wikipedia/dataclient/mwapi/SiteMatrix;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final apply(Lorg/wikipedia/dataclient/mwapi/SiteMatrix;)V
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-static {v0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->access$setSiteMatrix$p(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;Lorg/wikipedia/dataclient/mwapi/SiteMatrix;)V

    return-void
.end method
