.class public final synthetic Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$bVYhlVK6FInB32uEJXCB_NJHcbo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$bVYhlVK6FInB32uEJXCB_NJHcbo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$bVYhlVK6FInB32uEJXCB_NJHcbo;

    invoke-direct {v0}, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$bVYhlVK6FInB32uEJXCB_NJHcbo;-><init>()V

    sput-object v0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$bVYhlVK6FInB32uEJXCB_NJHcbo;->INSTANCE:Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$bVYhlVK6FInB32uEJXCB_NJHcbo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-static {p1}, Lorg/wikipedia/search/SearchResultsFragment;->lambda$doSearchResultsCountObservable$17(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
