.class final Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$4;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$4;

    invoke-direct {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$4;-><init>()V

    sput-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$4;->INSTANCE:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$4;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$requestLanguagesAndBuildSpinner$4;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Throwable;)V
    .locals 0

    .line 298
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    return-void
.end method
