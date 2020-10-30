.class final Lorg/wikipedia/userprofile/UserContributionsStats$getEditCountsObservable$1;
.super Ljava/lang/Object;
.source "UserContributionsStats.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/userprofile/UserContributionsStats;->getEditCountsObservable()Lio/reactivex/rxjava3/core/Observable;
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
        "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats$getEditCountsObservable$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/userprofile/UserContributionsStats$getEditCountsObservable$1;

    invoke-direct {v0}, Lorg/wikipedia/userprofile/UserContributionsStats$getEditCountsObservable$1;-><init>()V

    sput-object v0, Lorg/wikipedia/userprofile/UserContributionsStats$getEditCountsObservable$1;->INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats$getEditCountsObservable$1;

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

    .line 15
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-virtual {p0, p1}, Lorg/wikipedia/userprofile/UserContributionsStats$getEditCountsObservable$1;->accept(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)V

    return-void
.end method

.method public final accept(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)V
    .locals 2

    .line 31
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo()Lorg/wikipedia/dataclient/mwapi/UserInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "it.query()!!.userInfo()!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/UserInfo;->isBlocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->editorTaskCounts()Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "it.query()!!.editorTaskCounts()!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lorg/wikipedia/userprofile/UserContributionsStats;->INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->getTotalEdits()I

    move-result v1

    invoke-static {v0, v1}, Lorg/wikipedia/userprofile/UserContributionsStats;->access$setTotalEdits$p(Lorg/wikipedia/userprofile/UserContributionsStats;I)V

    .line 34
    sget-object v0, Lorg/wikipedia/userprofile/UserContributionsStats;->INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->getTotalDescriptionEdits()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/userprofile/UserContributionsStats;->setTotalDescriptionEdits(I)V

    .line 35
    sget-object v0, Lorg/wikipedia/userprofile/UserContributionsStats;->INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->getTotalImageCaptionEdits()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/userprofile/UserContributionsStats;->setTotalImageCaptionEdits(I)V

    .line 36
    sget-object v0, Lorg/wikipedia/userprofile/UserContributionsStats;->INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->getTotalDepictsEdits()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/userprofile/UserContributionsStats;->setTotalImageTagEdits(I)V

    .line 37
    sget-object v0, Lorg/wikipedia/userprofile/UserContributionsStats;->INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->getTotalReverts()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/wikipedia/userprofile/UserContributionsStats;->setTotalReverts(I)V

    .line 38
    sget-object p1, Lorg/wikipedia/userprofile/UserContributionsStats;->INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats;

    invoke-virtual {p1}, Lorg/wikipedia/userprofile/UserContributionsStats;->maybePauseAndGetEndDate()Ljava/util/Date;

    :cond_0
    return-void
.end method
