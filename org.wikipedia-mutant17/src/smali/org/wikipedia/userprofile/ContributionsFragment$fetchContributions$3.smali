.class final Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$3;
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

    iput-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$3;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 22
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

    .line 210
    iget-object v1, v0, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$3;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

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

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    iget-object v2, v0, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$3;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-virtual/range {p1 .. p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->continuation()Ljava/util/Map;

    move-result-object v3

    const-string v4, "uccontinue"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$setImageContributionsContinuation$p(Lorg/wikipedia/userprofile/ContributionsFragment;Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p1 .. p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userContributions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/wikipedia/dataclient/mwapi/UserContribution;

    .line 214
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v4

    const-string v5, "WikipediaApp.getInstance()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WikipediaApp.getInstance().appOrSystemLanguageCode"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/UserContribution;->getComment()Ljava/lang/String;

    move-result-object v5

    .line 220
    iget-object v6, v0, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$3;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-static {v6}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$getCommentRegex$p(Lorg/wikipedia/userprofile/ContributionsFragment;)Lkotlin/text/Regex;

    move-result-object v6

    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/UserContribution;->getComment()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v6

    .line 221
    invoke-static {v6}, Lkotlin/sequences/SequencesKt;->any(Lkotlin/sequences/Sequence;)Z

    move-result v7

    const/4 v11, 0x3

    const-string v12, ""

    const/4 v13, 0x1

    if-eqz v7, :cond_6

    .line 222
    iget-object v7, v0, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$3;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-static {v6}, Lkotlin/sequences/SequencesKt;->first(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkotlin/text/MatchResult;

    invoke-interface {v14}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$deCommentString(Lorg/wikipedia/userprofile/ContributionsFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v7, "wbsetlabel"

    .line 225
    invoke-static {v15, v7, v8, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v5, "|"

    .line 226
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x6

    const/16 v20, 0x0

    invoke-static/range {v15 .. v20}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 227
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v13, :cond_0

    .line 228
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 231
    :cond_0
    iget-object v5, v0, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$3;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/UserContribution;->getComment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Lkotlin/sequences/SequencesKt;->first(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/text/MatchResult;

    invoke-interface {v6}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v7, v6}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$extractDescriptionFromComment(Lorg/wikipedia/userprofile/ContributionsFragment;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    move-object v6, v12

    const/4 v10, 0x2

    goto/16 :goto_3

    :cond_1
    const-string v7, "wbsetclaim"

    .line 233
    invoke-static {v15, v7, v8, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 235
    iget-object v5, v0, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$3;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-static {v5}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$getQNumberRegex$p(Lorg/wikipedia/userprofile/ContributionsFragment;)Lkotlin/text/Regex;

    move-result-object v5

    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/UserContribution;->getComment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8, v9, v10}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v5, v12

    :goto_1
    move-object v6, v5

    move-object v9, v12

    const/4 v10, 0x3

    const/16 v18, 0x1

    goto/16 :goto_4

    :cond_3
    const-string v7, "wbeditentity"

    .line 240
    invoke-static {v15, v7, v8, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 241
    invoke-static {v6}, Lkotlin/sequences/SequencesKt;->count(Lkotlin/sequences/Sequence;)I

    move-result v7

    if-le v7, v13, :cond_5

    invoke-static {v6, v13}, Lkotlin/sequences/SequencesKt;->elementAt(Lkotlin/sequences/Sequence;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/text/MatchResult;

    invoke-interface {v7}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v7

    const-string v14, "add-depicts:"

    invoke-static {v7, v14, v8, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 242
    iget-object v7, v0, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$3;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-static {v6, v13}, Lkotlin/sequences/SequencesKt;->elementAt(Lkotlin/sequences/Sequence;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/text/MatchResult;

    invoke-interface {v6}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$deCommentString(Lorg/wikipedia/userprofile/ContributionsFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 243
    iget-object v7, v0, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$3;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-static {v7, v6}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$extractTagsFromComment(Lorg/wikipedia/userprofile/ContributionsFragment;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 244
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v13

    if-eqz v7, :cond_5

    .line 245
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v5

    .line 246
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v7, v8, :cond_4

    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ListFormatter.getInstance().format(map.values)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    const-string v6, "map.values"

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3e

    const/16 v21, 0x0

    const-string v14, ","

    invoke-static/range {v13 .. v21}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    move v8, v5

    move-object v5, v6

    :cond_5
    move-object v9, v5

    move/from16 v18, v8

    move-object v6, v12

    const/4 v10, 0x3

    goto :goto_4

    :cond_6
    move-object v9, v5

    move-object v6, v12

    const/4 v10, 0x0

    :goto_3
    const/16 v18, 0x0

    .line 254
    :goto_4
    new-instance v14, Lorg/wikipedia/userprofile/Contribution;

    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/UserContribution;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/UserContribution;->getTitle()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/UserContribution;->date()Ljava/util/Date;

    move-result-object v12

    .line 255
    invoke-static {v4}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v13

    const-string v4, "WikiSite.forLanguageCode(contributionLanguage)"

    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v15, 0x0

    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/UserContribution;->getSizediff()I

    move-result v4

    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/UserContribution;->getTop()Z

    move-result v17

    move-object v5, v14

    move-object v3, v14

    move-wide v14, v15

    move/from16 v16, v4

    .line 254
    invoke-direct/range {v5 .. v18}, Lorg/wikipedia/userprofile/Contribution;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Date;Lorg/wikipedia/dataclient/WikiSite;JIZI)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 257
    :cond_7
    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-virtual {p0, p1}, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$3;->apply(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p1

    return-object p1
.end method
