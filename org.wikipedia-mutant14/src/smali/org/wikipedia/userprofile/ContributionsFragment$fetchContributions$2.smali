.class final Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$2;
.super Ljava/lang/Object;
.source "ContributionsFragment.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/userprofile/ContributionsFragment;->fetchContributions()V
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
        "Ljava/util/ArrayList<",
        "Lorg/wikipedia/userprofile/Contribution;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/userprofile/ContributionsFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/userprofile/ContributionsFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$2;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/util/ArrayList<",
            "Lorg/wikipedia/userprofile/Contribution;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 154
    iget-object v1, v0, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$2;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-static {v1}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$getTotalContributionCount$p(Lorg/wikipedia/userprofile/ContributionsFragment;)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo()Lorg/wikipedia/dataclient/mwapi/UserInfo;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v4, "response.query()!!.userInfo()!!"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/UserInfo;->getEditCount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$setTotalContributionCount$p(Lorg/wikipedia/userprofile/ContributionsFragment;I)V

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 157
    iget-object v3, v0, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$2;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-virtual/range {p1 .. p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->continuation()Ljava/util/Map;

    move-result-object v4

    const-string v5, "uccontinue"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$setArticleContributionsContinuation$p(Lorg/wikipedia/userprofile/ContributionsFragment;Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p1 .. p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userContributions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/wikipedia/dataclient/mwapi/UserContribution;

    .line 159
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v5

    const-string v6, "WikipediaApp.getInstance()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WikipediaApp.getInstance().appOrSystemLanguageCode"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/UserContribution;->getComment()Ljava/lang/String;

    move-result-object v6

    .line 164
    iget-object v7, v0, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$2;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-static {v7}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$getCommentRegex$p(Lorg/wikipedia/userprofile/ContributionsFragment;)Lkotlin/text/Regex;

    move-result-object v7

    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/UserContribution;->getComment()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v10, v11}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v7

    .line 165
    invoke-static {v7}, Lkotlin/sequences/SequencesKt;->any(Lkotlin/sequences/Sequence;)Z

    move-result v8

    const/4 v12, 0x1

    if-eqz v8, :cond_2

    .line 166
    iget-object v8, v0, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$2;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-static {v7}, Lkotlin/sequences/SequencesKt;->first(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlin/text/MatchResult;

    invoke-interface {v13}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$deCommentString(Lorg/wikipedia/userprofile/ContributionsFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v8, "wbsetdescription"

    .line 167
    invoke-static {v14, v8, v9, v10, v11}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v6, "|"

    .line 168
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x6

    const/16 v19, 0x0

    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 169
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v12, :cond_1

    .line 170
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 173
    :cond_1
    iget-object v6, v0, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$2;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/UserContribution;->getComment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Lkotlin/sequences/SequencesKt;->first(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/text/MatchResult;

    invoke-interface {v7}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v8, v7}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$extractDescriptionFromComment(Lorg/wikipedia/userprofile/ContributionsFragment;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v6

    const/16 v18, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v17, v6

    const/16 v18, 0x0

    .line 177
    :goto_1
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/UserContribution;->getTitle()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$2;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-static {v7}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$getQNumberRegex$p(Lorg/wikipedia/userprofile/ContributionsFragment;)Lkotlin/text/Regex;

    move-result-object v7

    invoke-virtual {v7, v6}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 178
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/UserContribution;->getTitle()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    const-string v6, ""

    .line 181
    :goto_2
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_4

    const/4 v9, 0x1

    :cond_4
    if-eqz v9, :cond_5

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 182
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_5
    new-instance v7, Lorg/wikipedia/userprofile/Contribution;

    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/UserContribution;->getTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/UserContribution;->getTitle()Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/UserContribution;->date()Ljava/util/Date;

    move-result-object v20

    .line 186
    invoke-static {v5}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v8

    const-string v9, "WikiSite.forLanguageCode(contributionLanguage)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v22, 0x0

    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/UserContribution;->getSizediff()I

    move-result v24

    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/UserContribution;->getTop()Z

    move-result v25

    const/16 v26, 0x0

    move-object v13, v7

    move-object v14, v6

    move-object/from16 v21, v8

    .line 185
    invoke-direct/range {v13 .. v26}, Lorg/wikipedia/userprofile/Contribution;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Date;Lorg/wikipedia/dataclient/WikiSite;JIZI)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 190
    :cond_6
    new-instance v3, Lorg/wikipedia/dataclient/WikiSite;

    const-string v4, "https://www.wikidata.org/"

    invoke-direct {v3, v4}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    const-string v2, "qLangMap.keys"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3e

    const/4 v12, 0x0

    const-string v5, "|"

    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/wikipedia/dataclient/Service;->getWikidataLabelsAndDescriptions(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 191
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 192
    new-instance v3, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$2$1;

    invoke-direct {v3, v1}, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$2$1;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-virtual {p0, p1}, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$2;->apply(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p1

    return-object p1
.end method
