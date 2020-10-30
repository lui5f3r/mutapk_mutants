.class final Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$1;
.super Ljava/lang/Object;
.source "SuggestedEditsTasksFragment.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->fetchUserContributions()V
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
        "T3:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function3<",
        "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
        "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
        "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
        "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    check-cast p3, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-virtual {p0, p1, p2, p3}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$1;->apply(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;
    .locals 4

    .line 170
    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo()Lorg/wikipedia/dataclient/mwapi/UserInfo;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "wikidataResponse.query()!!.userInfo()!!"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/wikipedia/dataclient/mwapi/UserInfo;->isBlocked()Z

    move-result p3

    const-string v1, "commonsResponse.query()!!.userInfo()!!"

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo()Lorg/wikipedia/dataclient/mwapi/UserInfo;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/wikipedia/dataclient/mwapi/UserInfo;->isBlocked()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 171
    :cond_0
    iget-object p3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    const/4 v2, 0x1

    invoke-static {p3, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->access$setIpBlocked$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Z)V

    .line 174
    :cond_1
    iget-object p3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-static {p3}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->access$getTotalContributions$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)I

    move-result v2

    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo()Lorg/wikipedia/dataclient/mwapi/UserInfo;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/UserInfo;->getEditCount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p3, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->access$setTotalContributions$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;I)V

    .line 175
    iget-object p3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-static {p3}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->access$getTotalContributions$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)I

    move-result v2

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo()Lorg/wikipedia/dataclient/mwapi/UserInfo;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/UserInfo;->getEditCount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p3, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->access$setTotalContributions$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;I)V

    .line 177
    iget-object p3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo()Lorg/wikipedia/dataclient/mwapi/UserInfo;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/UserInfo;->getLatestContrib()Ljava/util/Date;

    move-result-object v0

    const-string v2, "wikidataResponse.query()\u2026serInfo()!!.latestContrib"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->access$setLatestEditDate$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Ljava/util/Date;)V

    .line 178
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo()Lorg/wikipedia/dataclient/mwapi/UserInfo;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/wikipedia/dataclient/mwapi/UserInfo;->getLatestContrib()Ljava/util/Date;

    move-result-object p3

    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-static {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->access$getLatestEditDate$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 179
    iget-object p3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo()Lorg/wikipedia/dataclient/mwapi/UserInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/UserInfo;->getLatestContrib()Ljava/util/Date;

    move-result-object v0

    const-string v1, "commonsResponse.query()!\u2026serInfo()!!.latestContrib"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->access$setLatestEditDate$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Ljava/util/Date;)V

    .line 182
    :cond_2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 183
    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userContributions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 184
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userContributions()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 185
    sget-object p1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$1$1;->INSTANCE:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$1$1;

    invoke-static {p3, p1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 186
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-static {p1, p3}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->access$getEditStreak(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Ljava/util/List;)I

    move-result p3

    invoke-static {p1, p3}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->access$setLatestEditStreak$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;I)V

    .line 187
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$fetchUserContributions$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    sget-object p3, Lorg/wikipedia/userprofile/UserContributionsStats;->INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats;

    invoke-virtual {p3}, Lorg/wikipedia/userprofile/UserContributionsStats;->getRevertSeverity()I

    move-result p3

    invoke-static {p1, p3}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->access$setRevertSeverity$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;I)V

    return-object p2
.end method
