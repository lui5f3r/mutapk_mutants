.class final Lorg/wikipedia/userprofile/UserContributionsStats$getPageViewsObservable$1;
.super Ljava/lang/Object;
.source "UserContributionsStats.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/userprofile/UserContributionsStats;->getPageViewsObservable()Lio/reactivex/rxjava3/core/Observable;
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
        "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
        "Lio/reactivex/rxjava3/core/ObservableSource<",
        "+",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats$getPageViewsObservable$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/userprofile/UserContributionsStats$getPageViewsObservable$1;

    invoke-direct {v0}, Lorg/wikipedia/userprofile/UserContributionsStats$getPageViewsObservable$1;-><init>()V

    sput-object v0, Lorg/wikipedia/userprofile/UserContributionsStats$getPageViewsObservable$1;->INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats$getPageViewsObservable$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 48
    sget-object v0, Lorg/wikipedia/userprofile/UserContributionsStats;->INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats;

    const-string v1, "response"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/wikipedia/userprofile/UserContributionsStats;->getPageViewsObservable(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-virtual {p0, p1}, Lorg/wikipedia/userprofile/UserContributionsStats$getPageViewsObservable$1;->apply(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p1

    return-object p1
.end method
