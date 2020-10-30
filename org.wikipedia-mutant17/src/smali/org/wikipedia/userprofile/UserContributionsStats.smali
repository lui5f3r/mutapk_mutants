.class public final Lorg/wikipedia/userprofile/UserContributionsStats;
.super Ljava/lang/Object;
.source "UserContributionsStats.kt"


# static fields
.field public static final INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats;

.field private static final PAUSE_DURATION_DAYS:I = 0x7

.field private static final REVERT_SEVERITY_DISABLE_THRESHOLD:I = 0x7

.field private static final REVERT_SEVERITY_PAUSE_THRESHOLD:I = 0x5

.field private static totalDescriptionEdits:I

.field private static totalEdits:I

.field private static totalImageCaptionEdits:I

.field private static totalImageTagEdits:I

.field private static totalReverts:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lorg/wikipedia/userprofile/UserContributionsStats;

    invoke-direct {v0}, Lorg/wikipedia/userprofile/UserContributionsStats;-><init>()V

    sput-object v0, Lorg/wikipedia/userprofile/UserContributionsStats;->INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTotalEdits$p(Lorg/wikipedia/userprofile/UserContributionsStats;)I
    .locals 0

    .line 15
    sget p0, Lorg/wikipedia/userprofile/UserContributionsStats;->totalEdits:I

    return p0
.end method

.method public static final synthetic access$setTotalEdits$p(Lorg/wikipedia/userprofile/UserContributionsStats;I)V
    .locals 0

    .line 15
    sput p1, Lorg/wikipedia/userprofile/UserContributionsStats;->totalEdits:I

    return-void
.end method


# virtual methods
.method public final getEditCountsObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Lorg/wikipedia/dataclient/WikiSite;

    const-string v1, "https://www.wikidata.org/"

    invoke-direct {v0, v1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v0

    const-string v1, "ServiceFactory.get(WikiSite(Service.WIKIDATA_URL))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/wikipedia/dataclient/Service;->getEditorTaskCounts()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 28
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 29
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 30
    sget-object v1, Lorg/wikipedia/userprofile/UserContributionsStats$getEditCountsObservable$1;->INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats$getEditCountsObservable$1;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "ServiceFactory.get(WikiS\u2026      }\n                }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPageViewsObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Lorg/wikipedia/dataclient/WikiSite;

    const-string v1, "https://www.wikidata.org/"

    invoke-direct {v0, v1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v0

    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lorg/wikipedia/dataclient/Service;->getUserContributions(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 45
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 46
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 47
    sget-object v1, Lorg/wikipedia/userprofile/UserContributionsStats$getPageViewsObservable$1;->INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats$getPageViewsObservable$1;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "ServiceFactory.get(WikiS\u2026sponse)\n                }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPageViewsObservable(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Lio/reactivex/rxjava3/core/Observable;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userContributions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/dataclient/mwapi/UserContribution;

    .line 57
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/UserContribution;->getComment()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 58
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v7, 0x0

    const-string v8, "wbsetdescription"

    .line 59
    invoke-static {v6, v8, v4, v3, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "|"

    .line 60
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 61
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v5, :cond_0

    .line 62
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v2, ""

    .line 67
    :goto_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v4, 0x1

    :cond_2
    if-eqz v4, :cond_3

    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/UserContribution;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 72
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/UserContribution;->getTitle()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_4
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/UserContribution;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 77
    :cond_5
    new-instance p1, Lorg/wikipedia/dataclient/WikiSite;

    const-string v1, "https://www.wikidata.org/"

    invoke-direct {p1, v1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "qLangMap.keys"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const/4 v9, 0x0

    const-string v2, "|"

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/wikipedia/dataclient/Service;->getWikidataLabelsAndDescriptions(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 78
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 79
    new-instance v1, Lorg/wikipedia/userprofile/UserContributionsStats$getPageViewsObservable$2;

    invoke-direct {v1, v0}, Lorg/wikipedia/userprofile/UserContributionsStats$getPageViewsObservable$2;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "ServiceFactory.get(WikiS\u2026      }\n                }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getRevertSeverity()I
    .locals 2

    .line 132
    sget v0, Lorg/wikipedia/userprofile/UserContributionsStats;->totalEdits:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    sget v0, Lorg/wikipedia/userprofile/UserContributionsStats;->totalReverts:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/wikipedia/userprofile/UserContributionsStats;->totalReverts:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v1, v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method public final getTotalDescriptionEdits()I
    .locals 1

    .line 22
    sget v0, Lorg/wikipedia/userprofile/UserContributionsStats;->totalDescriptionEdits:I

    return v0
.end method

.method public final getTotalImageCaptionEdits()I
    .locals 1

    .line 23
    sget v0, Lorg/wikipedia/userprofile/UserContributionsStats;->totalImageCaptionEdits:I

    return v0
.end method

.method public final getTotalImageTagEdits()I
    .locals 1

    .line 24
    sget v0, Lorg/wikipedia/userprofile/UserContributionsStats;->totalImageTagEdits:I

    return v0
.end method

.method public final getTotalReverts()I
    .locals 1

    .line 21
    sget v0, Lorg/wikipedia/userprofile/UserContributionsStats;->totalReverts:I

    return v0
.end method

.method public final isDisabled()Z
    .locals 2

    .line 136
    invoke-virtual {p0}, Lorg/wikipedia/userprofile/UserContributionsStats;->getRevertSeverity()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final maybePauseAndGetEndDate()Ljava/util/Date;
    .locals 10

    .line 140
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getSuggestedEditsPauseDate()Ljava/util/Date;

    move-result-object v0

    const-string v1, "pauseDate"

    .line 144
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const/4 v3, 0x7

    const/4 v4, 0x6

    const-string v5, "cal"

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    cmp-long v9, v1, v6

    if-eqz v9, :cond_1

    .line 145
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 146
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 147
    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 148
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 150
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setSuggestedEditsPauseDate(Ljava/util/Date;)V

    goto :goto_0

    :cond_0
    move-object v8, v0

    .line 157
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/wikipedia/userprofile/UserContributionsStats;->getRevertSeverity()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    .line 159
    sget v0, Lorg/wikipedia/userprofile/UserContributionsStats;->totalReverts:I

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getSuggestedEditsPauseReverts()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 160
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 161
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 162
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->setSuggestedEditsPauseDate(Ljava/util/Date;)V

    .line 163
    sget v1, Lorg/wikipedia/userprofile/UserContributionsStats;->totalReverts:I

    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->setSuggestedEditsPauseReverts(I)V

    .line 165
    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 166
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    :cond_2
    return-object v8
.end method

.method public final setTotalDescriptionEdits(I)V
    .locals 0

    .line 22
    sput p1, Lorg/wikipedia/userprofile/UserContributionsStats;->totalDescriptionEdits:I

    return-void
.end method

.method public final setTotalImageCaptionEdits(I)V
    .locals 0

    .line 23
    sput p1, Lorg/wikipedia/userprofile/UserContributionsStats;->totalImageCaptionEdits:I

    return-void
.end method

.method public final setTotalImageTagEdits(I)V
    .locals 0

    .line 24
    sput p1, Lorg/wikipedia/userprofile/UserContributionsStats;->totalImageTagEdits:I

    return-void
.end method

.method public final setTotalReverts(I)V
    .locals 0

    .line 21
    sput p1, Lorg/wikipedia/userprofile/UserContributionsStats;->totalReverts:I

    return-void
.end method

.method public final updateStatsInBackground()V
    .locals 1

    .line 128
    invoke-virtual {p0}, Lorg/wikipedia/userprofile/UserContributionsStats;->getEditCountsObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
