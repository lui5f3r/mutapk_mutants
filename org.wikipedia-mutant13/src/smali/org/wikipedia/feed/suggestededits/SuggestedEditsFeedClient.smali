.class public final Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;
.super Ljava/lang/Object;
.source "SuggestedEditsFeedClient.kt"

# interfaces
.implements Lorg/wikipedia/feed/dataclient/FeedClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;,
        Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Companion;

.field public static final MAX_RETRY_LIMIT:J = 0x5L


# instance fields
.field private action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

.field private age:I

.field private final app:Lorg/wikipedia/WikipediaApp;

.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private final langFromCode:Ljava/lang/String;

.field private final langToCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->Companion:Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Companion;

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 31
    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 32
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->app:Lorg/wikipedia/WikipediaApp;

    .line 33
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object p1

    const-string v0, "app.language()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCode()Ljava/lang/String;

    move-result-object p1

    const-string v1, "app.language().appLanguageCode"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->langFromCode:Ljava/lang/String;

    .line 34
    iget-object p1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "app.language().appLanguageCodes[1]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->langToCode:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getLangFromCode$p(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->langFromCode:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getLangToCode$p(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->langToCode:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$postEmptyListToFeedCoordinator(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;Lorg/wikipedia/feed/dataclient/FeedClient$Callback;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->postEmptyListToFeedCoordinator(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;)V

    return-void
.end method

.method public static final synthetic access$toSuggestedEditsCard(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;)Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->toSuggestedEditsCard(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;)Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    move-result-object p0

    return-object p0
.end method

.method private final getArticleToAddDescription(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;)V
    .locals 5

    .line 94
    iget-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    sget-object v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    .line 95
    iget-object v2, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->langFromCode:Ljava/lang/String;

    invoke-static {v2}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    const-string v3, "WikiSite.forLanguageCode(langFromCode)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x5

    invoke-virtual {v1, v2, v3, v4}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->getNextArticleWithMissingDescription(Lorg/wikipedia/dataclient/WikiSite;J)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 96
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 97
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 98
    new-instance v2, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToAddDescription$1;

    invoke-direct {v2, p0, p2, p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToAddDescription$1;-><init>(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;Lorg/wikipedia/feed/dataclient/FeedClient$Callback;)V

    .line 115
    new-instance p2, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToAddDescription$2;

    invoke-direct {p2, p0, p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToAddDescription$2;-><init>(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;Lorg/wikipedia/feed/dataclient/FeedClient$Callback;)V

    .line 98
    invoke-virtual {v1, v2, p2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 94
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private final getArticleToTranslateDescription(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;)V
    .locals 7

    .line 125
    iget-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->langToCode:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 126
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->postEmptyListToFeedCoordinator(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;)V

    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    sget-object v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    .line 130
    iget-object v2, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->langFromCode:Ljava/lang/String;

    invoke-static {v2}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    const-string v3, "WikiSite.forLanguageCode(langFromCode)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->langToCode:Ljava/lang/String;

    const/4 v4, 0x1

    const-wide/16 v5, 0x5

    invoke-virtual/range {v1 .. v6}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->getNextArticleWithMissingDescription(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;ZJ)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 131
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 132
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 133
    new-instance v2, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToTranslateDescription$1;

    invoke-direct {v2, p0, p2, p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToTranslateDescription$1;-><init>(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;Lorg/wikipedia/feed/dataclient/FeedClient$Callback;)V

    .line 163
    new-instance p2, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToTranslateDescription$2;

    invoke-direct {p2, p0, p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getArticleToTranslateDescription$2;-><init>(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;Lorg/wikipedia/feed/dataclient/FeedClient$Callback;)V

    .line 133
    invoke-virtual {v1, v2, p2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 129
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private final getImageToAddCaption(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;)V
    .locals 5

    .line 173
    iget-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    sget-object v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    iget-object v2, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->langFromCode:Ljava/lang/String;

    const-wide/16 v3, 0x5

    invoke-virtual {v1, v2, v3, v4}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->getNextImageWithMissingCaption(Ljava/lang/String;J)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 174
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 175
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 176
    new-instance v2, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToAddCaption$1;

    invoke-direct {v2, p0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToAddCaption$1;-><init>(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 181
    new-instance v2, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToAddCaption$2;

    invoke-direct {v2, p0, p2, p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToAddCaption$2;-><init>(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;Lorg/wikipedia/feed/dataclient/FeedClient$Callback;)V

    .line 211
    new-instance p2, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToAddCaption$3;

    invoke-direct {p2, p0, p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToAddCaption$3;-><init>(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;Lorg/wikipedia/feed/dataclient/FeedClient$Callback;)V

    .line 181
    invoke-virtual {v1, v2, p2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 173
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private final getImageToAddTags(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;)V
    .locals 4

    .line 73
    iget-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    sget-object v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    const-wide/16 v2, 0x5

    .line 74
    invoke-virtual {v1, v2, v3}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->getNextImageWithMissingTags(J)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 75
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 76
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 77
    new-instance v2, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToAddTags$1;

    invoke-direct {v2, p0, p2, p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToAddTags$1;-><init>(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;Lorg/wikipedia/feed/dataclient/FeedClient$Callback;)V

    .line 84
    new-instance p2, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToAddTags$2;

    invoke-direct {p2, p0, p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToAddTags$2;-><init>(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;Lorg/wikipedia/feed/dataclient/FeedClient$Callback;)V

    .line 77
    invoke-virtual {v1, v2, p2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 73
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private final getImageToTranslateCaption(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;)V
    .locals 7

    .line 221
    iget-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->langToCode:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 222
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->postEmptyListToFeedCoordinator(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;)V

    return-void

    .line 225
    :cond_1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 226
    iget-object v1, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    sget-object v2, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    iget-object v3, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->langFromCode:Ljava/lang/String;

    iget-object v4, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->langToCode:Ljava/lang/String;

    const-wide/16 v5, 0x5

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->getNextImageWithMissingCaption(Ljava/lang/String;Ljava/lang/String;J)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 227
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 228
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 229
    new-instance v3, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToTranslateCaption$1;

    invoke-direct {v3, p0, v0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToTranslateCaption$1;-><init>(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 235
    new-instance v3, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToTranslateCaption$2;

    invoke-direct {v3, p0, v0, p2, p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToTranslateCaption$2;-><init>(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;Lorg/wikipedia/feed/dataclient/FeedClient$Callback;)V

    .line 278
    new-instance p2, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToTranslateCaption$3;

    invoke-direct {p2, p0, p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$getImageToTranslateCaption$3;-><init>(Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;Lorg/wikipedia/feed/dataclient/FeedClient$Callback;)V

    .line 235
    invoke-virtual {v2, v3, p2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 226
    invoke-virtual {v1, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private final postEmptyListToFeedCoordinator(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 289
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/wikipedia/feed/FeedCoordinator;->postCardsToCallback(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private final toSuggestedEditsCard(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;)Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;
    .locals 8

    .line 59
    new-instance v7, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;

    iget-object v2, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    iget v6, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->age:I

    move-object v0, v7

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsCard;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;I)V

    return-object v7
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public final fetchSuggestedEditForType(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v1, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 68
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->getArticleToAddDescription(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->getImageToAddTags(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->getImageToTranslateCaption(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;)V

    goto :goto_0

    .line 65
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->getImageToAddCaption(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;)V

    goto :goto_0

    .line 64
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->getArticleToTranslateDescription(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;)V

    :goto_0
    return-void
.end method

.method public request(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;ILorg/wikipedia/feed/dataclient/FeedClient$Callback;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "wiki"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "cb"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput p3, p0, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->age:I

    .line 38
    invoke-virtual {p0}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->cancel()V

    if-nez p3, :cond_0

    .line 43
    sget-object p1, Lorg/wikipedia/userprofile/UserContributionsStats;->INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats;

    invoke-virtual {p1}, Lorg/wikipedia/userprofile/UserContributionsStats;->updateStatsInBackground()V

    .line 46
    :cond_0
    sget-object p1, Lorg/wikipedia/userprofile/UserContributionsStats;->INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats;

    invoke-virtual {p1}, Lorg/wikipedia/userprofile/UserContributionsStats;->isDisabled()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lorg/wikipedia/userprofile/UserContributionsStats;->INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats;

    invoke-virtual {p1}, Lorg/wikipedia/userprofile/UserContributionsStats;->maybePauseAndGetEndDate()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, p4, p1}, Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient;->fetchSuggestedEditForType(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Lorg/wikipedia/feed/suggestededits/SuggestedEditsFeedClient$Callback;)V

    return-void

    .line 47
    :cond_2
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p4, p1}, Lorg/wikipedia/feed/FeedCoordinator;->postCardsToCallback(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Ljava/util/List;)V

    return-void
.end method
