.class final Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$2;
.super Ljava/lang/Object;
.source "SuggestedEditsCardsFragment.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->requestLanguagesAndBuildSpinner()V
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

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$2;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$2;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    invoke-static {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->access$initLanguageSpinners(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V

    return-void
.end method
