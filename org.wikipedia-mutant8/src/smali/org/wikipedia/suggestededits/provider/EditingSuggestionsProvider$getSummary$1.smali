.class final Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getSummary$1;
.super Ljava/lang/Object;
.source "EditingSuggestionsProvider.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->getSummary(Lkotlin/Pair;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/BiFunction<",
        "Lorg/wikipedia/dataclient/page/PageSummary;",
        "Lorg/wikipedia/dataclient/page/PageSummary;",
        "Lkotlin/Pair<",
        "+",
        "Lorg/wikipedia/dataclient/page/PageSummary;",
        "+",
        "Lorg/wikipedia/dataclient/page/PageSummary;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getSummary$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getSummary$1;

    invoke-direct {v0}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getSummary$1;-><init>()V

    sput-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getSummary$1;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getSummary$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lorg/wikipedia/dataclient/page/PageSummary;

    check-cast p2, Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getSummary$1;->apply(Lorg/wikipedia/dataclient/page/PageSummary;Lorg/wikipedia/dataclient/page/PageSummary;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lorg/wikipedia/dataclient/page/PageSummary;Lorg/wikipedia/dataclient/page/PageSummary;)Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            ")",
            "Lkotlin/Pair<",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
