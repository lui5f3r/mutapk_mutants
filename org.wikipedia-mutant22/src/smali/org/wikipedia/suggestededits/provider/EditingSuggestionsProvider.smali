.class public final Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;
.super Ljava/lang/Object;
.source "EditingSuggestionsProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$ListEmptyException;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

.field private static final MAX_RETRY_LIMIT:J = 0x32L

.field private static final articlesWithMissingDescriptionCache:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static articlesWithMissingDescriptionCacheLang:Ljava/lang/String;

.field private static final articlesWithTranslatableDescriptionCache:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lkotlin/Pair<",
            "Lorg/wikipedia/page/PageTitle;",
            "Lorg/wikipedia/page/PageTitle;",
            ">;>;"
        }
    .end annotation
.end field

.field private static articlesWithTranslatableDescriptionCacheFromLang:Ljava/lang/String;

.field private static articlesWithTranslatableDescriptionCacheToLang:Ljava/lang/String;

.field private static final imagesWithMissingCaptionsCache:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static imagesWithMissingCaptionsCacheLang:Ljava/lang/String;

.field private static final imagesWithMissingTagsCache:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryPage;",
            ">;"
        }
    .end annotation
.end field

.field private static final imagesWithTranslatableCaptionCache:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static imagesWithTranslatableCaptionCacheFromLang:Ljava/lang/String;

.field private static imagesWithTranslatableCaptionCacheToLang:Ljava/lang/String;

.field private static final mutex:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    invoke-direct {v0}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;-><init>()V

    sput-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    .line 14
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->mutex:Ljava/util/concurrent/Semaphore;

    .line 16
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithMissingDescriptionCache:Ljava/util/Stack;

    const-string v0, ""

    .line 17
    sput-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithMissingDescriptionCacheLang:Ljava/lang/String;

    .line 18
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    sput-object v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithTranslatableDescriptionCache:Ljava/util/Stack;

    .line 19
    sput-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithTranslatableDescriptionCacheFromLang:Ljava/lang/String;

    .line 20
    sput-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithTranslatableDescriptionCacheToLang:Ljava/lang/String;

    .line 22
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    sput-object v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithMissingCaptionsCache:Ljava/util/Stack;

    .line 23
    sput-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithMissingCaptionsCacheLang:Ljava/lang/String;

    .line 24
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    sput-object v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithTranslatableCaptionCache:Ljava/util/Stack;

    .line 25
    sput-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithTranslatableCaptionCacheFromLang:Ljava/lang/String;

    .line 26
    sput-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithTranslatableCaptionCacheToLang:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithMissingTagsCache:Ljava/util/Stack;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getArticlesWithMissingDescriptionCache$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;)Ljava/util/Stack;
    .locals 0

    .line 13
    sget-object p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithMissingDescriptionCache:Ljava/util/Stack;

    return-object p0
.end method

.method public static final synthetic access$getArticlesWithMissingDescriptionCacheLang$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;)Ljava/lang/String;
    .locals 0

    .line 13
    sget-object p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithMissingDescriptionCacheLang:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getArticlesWithTranslatableDescriptionCache$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;)Ljava/util/Stack;
    .locals 0

    .line 13
    sget-object p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithTranslatableDescriptionCache:Ljava/util/Stack;

    return-object p0
.end method

.method public static final synthetic access$getArticlesWithTranslatableDescriptionCacheFromLang$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;)Ljava/lang/String;
    .locals 0

    .line 13
    sget-object p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithTranslatableDescriptionCacheFromLang:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getArticlesWithTranslatableDescriptionCacheToLang$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;)Ljava/lang/String;
    .locals 0

    .line 13
    sget-object p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithTranslatableDescriptionCacheToLang:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getImagesWithMissingCaptionsCache$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;)Ljava/util/Stack;
    .locals 0

    .line 13
    sget-object p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithMissingCaptionsCache:Ljava/util/Stack;

    return-object p0
.end method

.method public static final synthetic access$getImagesWithMissingCaptionsCacheLang$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;)Ljava/lang/String;
    .locals 0

    .line 13
    sget-object p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithMissingCaptionsCacheLang:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getImagesWithMissingTagsCache$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;)Ljava/util/Stack;
    .locals 0

    .line 13
    sget-object p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithMissingTagsCache:Ljava/util/Stack;

    return-object p0
.end method

.method public static final synthetic access$getImagesWithTranslatableCaptionCache$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;)Ljava/util/Stack;
    .locals 0

    .line 13
    sget-object p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithTranslatableCaptionCache:Ljava/util/Stack;

    return-object p0
.end method

.method public static final synthetic access$getImagesWithTranslatableCaptionCacheFromLang$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;)Ljava/lang/String;
    .locals 0

    .line 13
    sget-object p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithTranslatableCaptionCacheFromLang:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getImagesWithTranslatableCaptionCacheToLang$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;)Ljava/lang/String;
    .locals 0

    .line 13
    sget-object p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithTranslatableCaptionCacheToLang:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getMutex$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 13
    sget-object p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->mutex:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method public static final synthetic access$getSummary(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;Lkotlin/Pair;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->getSummary(Lkotlin/Pair;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setArticlesWithMissingDescriptionCacheLang$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;Ljava/lang/String;)V
    .locals 0

    .line 13
    sput-object p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithMissingDescriptionCacheLang:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setArticlesWithTranslatableDescriptionCacheFromLang$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;Ljava/lang/String;)V
    .locals 0

    .line 13
    sput-object p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithTranslatableDescriptionCacheFromLang:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setArticlesWithTranslatableDescriptionCacheToLang$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;Ljava/lang/String;)V
    .locals 0

    .line 13
    sput-object p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithTranslatableDescriptionCacheToLang:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setImagesWithMissingCaptionsCacheLang$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;Ljava/lang/String;)V
    .locals 0

    .line 13
    sput-object p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithMissingCaptionsCacheLang:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setImagesWithTranslatableCaptionCacheFromLang$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;Ljava/lang/String;)V
    .locals 0

    .line 13
    sput-object p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithTranslatableCaptionCacheFromLang:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setImagesWithTranslatableCaptionCacheToLang$p(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;Ljava/lang/String;)V
    .locals 0

    .line 13
    sput-object p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithTranslatableCaptionCacheToLang:Ljava/lang/String;

    return-void
.end method

.method public static synthetic getNextArticleWithMissingDescription$default(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;Lorg/wikipedia/dataclient/WikiSite;JILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x32

    .line 32
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->getNextArticleWithMissingDescription(Lorg/wikipedia/dataclient/WikiSite;J)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getNextArticleWithMissingDescription$default(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;ZJILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const-wide/16 p4, 0x32

    :cond_0
    move-wide v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 67
    invoke-virtual/range {v0 .. v5}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->getNextArticleWithMissingDescription(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;ZJ)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getNextImageWithMissingCaption$default(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;Ljava/lang/String;JILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x32

    .line 121
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->getNextImageWithMissingCaption(Ljava/lang/String;J)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getNextImageWithMissingCaption$default(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const-wide/16 p3, 0x32

    .line 155
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->getNextImageWithMissingCaption(Ljava/lang/String;Ljava/lang/String;J)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getNextImageWithMissingTags$default(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;JILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x32

    .line 195
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->getNextImageWithMissingTags(J)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method private final getSummary(Lkotlin/Pair;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Lorg/wikipedia/page/PageTitle;",
            "+",
            "Lorg/wikipedia/page/PageTitle;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Pair<",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            ">;>;"
        }
    .end annotation

    .line 117
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/wikipedia/dataclient/RestService;->getSummary(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 118
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/page/PageTitle;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lorg/wikipedia/dataclient/RestService;->getSummary(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getSummary$1;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getSummary$1;

    .line 117
    invoke-static {v0, p1, v1}, Lio/reactivex/rxjava3/core/Observable;->zip(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "Observable.zip(ServiceFa\u2026> Pair(source, target) })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final getNextArticleWithMissingDescription(Lorg/wikipedia/dataclient/WikiSite;J)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/dataclient/WikiSite;",
            "J)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            ">;"
        }
    .end annotation

    const-string v0, "wiki"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$1;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$1;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;

    invoke-direct {v1, p1, p2, p3}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;-><init>(Lorg/wikipedia/dataclient/WikiSite;J)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 63
    new-instance p3, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$3;

    invoke-direct {p3, p1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$3;-><init>(Lorg/wikipedia/dataclient/WikiSite;)V

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 64
    sget-object p2, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string p2, "Observable.fromCallable \u2026nally { mutex.release() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getNextArticleWithMissingDescription(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;ZJ)Lio/reactivex/rxjava3/core/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/dataclient/WikiSite;",
            "Ljava/lang/String;",
            "ZJ)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Pair<",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            ">;>;"
        }
    .end annotation

    const-string v0, "sourceWiki"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetLang"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$5;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$5;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v7, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6;

    move-object v1, v7

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$6;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;ZJ)V

    invoke-virtual {v0, v7}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 112
    sget-object p2, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$7;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$7;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 113
    sget-object p2, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$8;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$8;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string p2, "Observable.fromCallable \u2026nally { mutex.release() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getNextImageWithMissingCaption(Ljava/lang/String;J)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "lang"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$1;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$1;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;

    invoke-direct {v1, p1, p2, p3}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 152
    sget-object p2, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$3;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$3;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string p2, "Observable.fromCallable \u2026nally { mutex.release() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getNextImageWithMissingCaption(Ljava/lang/String;Ljava/lang/String;J)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "sourceLang"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetLang"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$4;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$4;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$5;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$5;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 192
    sget-object p2, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$6;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$6;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string p2, "Observable.fromCallable \u2026nally { mutex.release() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getNextImageWithMissingTags(J)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryPage;",
            ">;"
        }
    .end annotation

    .line 196
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$1;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$1;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$2;

    invoke-direct {v1, p1, p2}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$2;-><init>(J)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 233
    sget-object p2, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$3;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$3;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string p2, "Observable.fromCallable \u2026nally { mutex.release() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
