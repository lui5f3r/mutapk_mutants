.class public final Lorg/wikipedia/userprofile/ContributionsFragment;
.super Landroidx/fragment/app/Fragment;
.source "ContributionsFragment.kt"

# interfaces
.implements Lorg/wikipedia/userprofile/ContributionsHeaderView$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/userprofile/ContributionsFragment$HeaderViewHolder;,
        Lorg/wikipedia/userprofile/ContributionsFragment$DateViewHolder;,
        Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder;,
        Lorg/wikipedia/userprofile/ContributionsFragment$ContributionsEntryItemAdapter;,
        Lorg/wikipedia/userprofile/ContributionsFragment$ItemCallback;,
        Lorg/wikipedia/userprofile/ContributionsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContributionsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContributionsFragment.kt\norg/wikipedia/userprofile/ContributionsFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,568:1\n714#2:569\n805#2,2:570\n714#2:572\n805#2,2:573\n714#2:575\n805#2,2:576\n*E\n*S KotlinDebug\n*F\n+ 1 ContributionsFragment.kt\norg/wikipedia/userprofile/ContributionsFragment\n*L\n284#1:569\n284#1,2:570\n287#1:572\n287#1,2:573\n290#1:575\n290#1,2:576\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/userprofile/ContributionsFragment$Companion;

.field private static final DEPICTS_META_STR:Ljava/lang/String; = "add-depicts:"

.field private static final VIEW_TYPE_DATE:I = 0x1

.field private static final VIEW_TYPE_HEADER:I = 0x0

.field private static final VIEW_TYPE_ITEM:I = 0x2


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final adapter:Lorg/wikipedia/userprofile/ContributionsFragment$ContributionsEntryItemAdapter;

.field private allContributions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/wikipedia/userprofile/Contribution;",
            ">;"
        }
    .end annotation
.end field

.field private articleContributionsContinuation:Ljava/lang/String;

.field private final commentRegex:Lkotlin/text/Regex;

.field private displayedContributions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private editFilterType:I

.field private imageContributionsContinuation:Ljava/lang/String;

.field private final qNumberRegex:Lkotlin/text/Regex;

.field private totalContributionCount:I

.field private totalPageViews:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/wikipedia/userprofile/ContributionsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/wikipedia/userprofile/ContributionsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/wikipedia/userprofile/ContributionsFragment;->Companion:Lorg/wikipedia/userprofile/ContributionsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 50
    new-instance v0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionsEntryItemAdapter;

    invoke-direct {v0, p0}, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionsEntryItemAdapter;-><init>(Lorg/wikipedia/userprofile/ContributionsFragment;)V

    iput-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->adapter:Lorg/wikipedia/userprofile/ContributionsFragment$ContributionsEntryItemAdapter;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->allContributions:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->displayedContributions:Ljava/util/List;

    .line 55
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 63
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "Q(\\d+)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->qNumberRegex:Lkotlin/text/Regex;

    .line 64
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "/\\*.*?\\*/"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->commentRegex:Lkotlin/text/Regex;

    return-void
.end method

.method public static final synthetic access$createConsolidatedList(Lorg/wikipedia/userprofile/ContributionsFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/wikipedia/userprofile/ContributionsFragment;->createConsolidatedList()V

    return-void
.end method

.method public static final synthetic access$deCommentString(Lorg/wikipedia/userprofile/ContributionsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lorg/wikipedia/userprofile/ContributionsFragment;->deCommentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$extractDescriptionFromComment(Lorg/wikipedia/userprofile/ContributionsFragment;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/userprofile/ContributionsFragment;->extractDescriptionFromComment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$extractTagsFromComment(Lorg/wikipedia/userprofile/ContributionsFragment;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lorg/wikipedia/userprofile/ContributionsFragment;->extractTagsFromComment(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$fetchContributions(Lorg/wikipedia/userprofile/ContributionsFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/wikipedia/userprofile/ContributionsFragment;->fetchContributions()V

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lorg/wikipedia/userprofile/ContributionsFragment;)Lorg/wikipedia/userprofile/ContributionsFragment$ContributionsEntryItemAdapter;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->adapter:Lorg/wikipedia/userprofile/ContributionsFragment$ContributionsEntryItemAdapter;

    return-object p0
.end method

.method public static final synthetic access$getAllContributions$p(Lorg/wikipedia/userprofile/ContributionsFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->allContributions:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getArticleContributionsContinuation$p(Lorg/wikipedia/userprofile/ContributionsFragment;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->articleContributionsContinuation:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getCommentRegex$p(Lorg/wikipedia/userprofile/ContributionsFragment;)Lkotlin/text/Regex;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->commentRegex:Lkotlin/text/Regex;

    return-object p0
.end method

.method public static final synthetic access$getDisplayedContributions$p(Lorg/wikipedia/userprofile/ContributionsFragment;)Ljava/util/List;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->displayedContributions:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getEditFilterType$p(Lorg/wikipedia/userprofile/ContributionsFragment;)I
    .locals 0

    .line 49
    iget p0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->editFilterType:I

    return p0
.end method

.method public static final synthetic access$getImageContributionsContinuation$p(Lorg/wikipedia/userprofile/ContributionsFragment;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->imageContributionsContinuation:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getQNumberRegex$p(Lorg/wikipedia/userprofile/ContributionsFragment;)Lkotlin/text/Regex;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->qNumberRegex:Lkotlin/text/Regex;

    return-object p0
.end method

.method public static final synthetic access$getTotalContributionCount$p(Lorg/wikipedia/userprofile/ContributionsFragment;)I
    .locals 0

    .line 49
    iget p0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->totalContributionCount:I

    return p0
.end method

.method public static final synthetic access$getTotalPageViews$p(Lorg/wikipedia/userprofile/ContributionsFragment;)J
    .locals 2

    .line 49
    iget-wide v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->totalPageViews:J

    return-wide v0
.end method

.method public static final synthetic access$resetAndFetch(Lorg/wikipedia/userprofile/ContributionsFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/wikipedia/userprofile/ContributionsFragment;->resetAndFetch()V

    return-void
.end method

.method public static final synthetic access$setAllContributions$p(Lorg/wikipedia/userprofile/ContributionsFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->allContributions:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$setArticleContributionsContinuation$p(Lorg/wikipedia/userprofile/ContributionsFragment;Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->articleContributionsContinuation:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setDisplayedContributions$p(Lorg/wikipedia/userprofile/ContributionsFragment;Ljava/util/List;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->displayedContributions:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setEditFilterType$p(Lorg/wikipedia/userprofile/ContributionsFragment;I)V
    .locals 0

    .line 49
    iput p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->editFilterType:I

    return-void
.end method

.method public static final synthetic access$setImageContributionsContinuation$p(Lorg/wikipedia/userprofile/ContributionsFragment;Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->imageContributionsContinuation:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setTotalContributionCount$p(Lorg/wikipedia/userprofile/ContributionsFragment;I)V
    .locals 0

    .line 49
    iput p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->totalContributionCount:I

    return-void
.end method

.method public static final synthetic access$setTotalPageViews$p(Lorg/wikipedia/userprofile/ContributionsFragment;J)V
    .locals 0

    .line 49
    iput-wide p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->totalPageViews:J

    return-void
.end method

.method public static final synthetic access$showError(Lorg/wikipedia/userprofile/ContributionsFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lorg/wikipedia/userprofile/ContributionsFragment;->showError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final createConsolidatedList()V
    .locals 8

    .line 280
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->displayedContributions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    iget v1, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->editFilterType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_8

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    .line 293
    iget-object v1, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->allContributions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6

    .line 290
    :cond_0
    iget-object v1, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->allContributions:Ljava/util/ArrayList;

    .line 714
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 805
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lorg/wikipedia/userprofile/Contribution;

    .line 290
    invoke-virtual {v7}, Lorg/wikipedia/userprofile/Contribution;->getEditType()I

    move-result v7

    if-ne v7, v4, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_1

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    .line 287
    :cond_4
    iget-object v1, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->allContributions:Ljava/util/ArrayList;

    .line 714
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 805
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lorg/wikipedia/userprofile/Contribution;

    .line 287
    invoke-virtual {v7}, Lorg/wikipedia/userprofile/Contribution;->getEditType()I

    move-result v7

    if-ne v7, v4, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_5

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    .line 284
    :cond_8
    iget-object v1, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->allContributions:Ljava/util/ArrayList;

    .line 714
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 805
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lorg/wikipedia/userprofile/Contribution;

    .line 284
    invoke-virtual {v6}, Lorg/wikipedia/userprofile/Contribution;->getEditType()I

    move-result v6

    if-ne v6, v3, :cond_a

    const/4 v6, 0x1

    goto :goto_5

    :cond_a
    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_9

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 296
    :goto_6
    sget-object v1, Lorg/wikipedia/userprofile/ContributionsFragment$createConsolidatedList$4;->INSTANCE:Lorg/wikipedia/userprofile/ContributionsFragment$createConsolidatedList$4;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 298
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 299
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/userprofile/Contribution;

    invoke-virtual {v1}, Lorg/wikipedia/userprofile/Contribution;->getDate()Ljava/util/Date;

    move-result-object v1

    .line 301
    iget-object v3, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->displayedContributions:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/wikipedia/userprofile/ContributionsFragment;->getCorrectDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v3, :cond_d

    .line 303
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/wikipedia/userprofile/Contribution;

    invoke-virtual {v5}, Lorg/wikipedia/userprofile/Contribution;->getDate()Ljava/util/Date;

    move-result-object v5

    .line 304
    invoke-static {v5, v1}, Lorg/apache/commons/lang3/time/DateUtils;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 305
    iget-object v1, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->displayedContributions:Ljava/util/List;

    invoke-direct {p0, v5}, Lorg/wikipedia/userprofile/ContributionsFragment;->getCorrectDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v5

    .line 308
    :cond_c
    iget-object v5, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->displayedContributions:Ljava/util/List;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "sortedContributions[position]"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 311
    :cond_d
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->adapter:Lorg/wikipedia/userprofile/ContributionsFragment$ContributionsEntryItemAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 312
    sget v0, Lorg/wikipedia/R$id;->contributionsRecyclerView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "contributionsRecyclerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private final deCommentString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 326
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final extractDescriptionFromComment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    .line 331
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v7, ", #suggestededit"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v6, p1

    .line 332
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 334
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 336
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final extractTagsFromComment(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v1, "add-depicts:"

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    .line 340
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string p1, ","

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 341
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 342
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const-string v1, "|"

    .line 343
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 344
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    .line 345
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final fetchContributions()V
    .locals 7

    .line 134
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->allContributions:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->articleContributionsContinuation:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->imageContributionsContinuation:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_4

    return-void

    .line 139
    :cond_4
    sget v0, Lorg/wikipedia/R$id;->progressBar:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v3, "progressBar"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 140
    iput v2, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->totalContributionCount:I

    .line 141
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 143
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->allContributions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 144
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    sget-object v3, Lorg/wikipedia/userprofile/UserContributionsStats;->INSTANCE:Lorg/wikipedia/userprofile/UserContributionsStats;

    invoke-virtual {v3}, Lorg/wikipedia/userprofile/UserContributionsStats;->getPageViewsObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    new-instance v4, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$1;

    invoke-direct {v4, p0}, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$1;-><init>(Lorg/wikipedia/userprofile/ContributionsFragment;)V

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 150
    :cond_5
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v3, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->allContributions:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->articleContributionsContinuation:Ljava/lang/String;

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v3, 0x1

    :goto_5
    if-eqz v3, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    goto :goto_6

    .line 151
    :cond_8
    new-instance v3, Lorg/wikipedia/dataclient/WikiSite;

    const-string v4, "https://www.wikidata.org/"

    invoke-direct {v3, v4}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v3

    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v5, 0x32

    iget-object v6, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->articleContributionsContinuation:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6}, Lorg/wikipedia/dataclient/Service;->getUserContributions(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    .line 152
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    .line 153
    new-instance v4, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$2;

    invoke-direct {v4, p0}, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$2;-><init>(Lorg/wikipedia/userprofile/ContributionsFragment;)V

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    .line 206
    :goto_6
    iget-object v4, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->allContributions:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v1

    if-eqz v4, :cond_b

    iget-object v4, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->imageContributionsContinuation:Ljava/lang/String;

    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_9

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_7
    if-eqz v1, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    goto :goto_8

    .line 207
    :cond_b
    new-instance v1, Lorg/wikipedia/dataclient/WikiSite;

    const-string v2, "https://commons.wikimedia.org/"

    invoke-direct {v1, v2}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v1

    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v4, 0xc8

    iget-object v5, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->imageContributionsContinuation:Ljava/lang/String;

    invoke-interface {v1, v2, v4, v5}, Lorg/wikipedia/dataclient/Service;->getUserContributions(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 208
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 209
    new-instance v2, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$3;

    invoke-direct {v2, p0}, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$3;-><init>(Lorg/wikipedia/userprofile/ContributionsFragment;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 258
    :goto_8
    sget-object v2, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$4;->INSTANCE:Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$4;

    .line 150
    invoke-static {v3, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->zip(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 264
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 265
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 266
    new-instance v2, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$5;

    invoke-direct {v2, p0}, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$5;-><init>(Lorg/wikipedia/userprofile/ContributionsFragment;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doAfterTerminate(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 270
    new-instance v2, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$6;

    invoke-direct {v2, p0}, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$6;-><init>(Lorg/wikipedia/userprofile/ContributionsFragment;)V

    .line 273
    new-instance v3, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$7;

    invoke-direct {v3, p0}, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$7;-><init>(Lorg/wikipedia/userprofile/ContributionsFragment;)V

    .line 270
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private final getCorrectDateString(Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    .line 316
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "Calendar.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x6

    const/4 v3, -0x1

    .line 317
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 319
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/commons/lang3/time/DateUtils;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    const p1, 0x7f100460

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringUtils.capitalize(g\u2026ing_card_subtitle_today))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f1003a9

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.sugge\u2026tion_date_yesterday_text)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_1
    invoke-static {p1}, Lorg/wikipedia/util/DateUtil;->getFeedCardDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DateUtil.getFeedCardDateString(date)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private final resetAndFetch()V
    .locals 2

    .line 124
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->allContributions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 125
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->displayedContributions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    sget v0, Lorg/wikipedia/R$id;->errorView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    const-string v1, "errorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->articleContributionsContinuation:Ljava/lang/String;

    .line 128
    iput-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->imageContributionsContinuation:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->adapter:Lorg/wikipedia/userprofile/ContributionsFragment$ContributionsEntryItemAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 130
    invoke-direct {p0}, Lorg/wikipedia/userprofile/ContributionsFragment;->fetchContributions()V

    return-void
.end method

.method private final showError(Ljava/lang/Throwable;)V
    .locals 3

    .line 352
    sget v0, Lorg/wikipedia/R$id;->swipeRefreshLayout:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const-string v1, "swipeRefreshLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 353
    sget v0, Lorg/wikipedia/R$id;->contributionsRecyclerView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "contributionsRecyclerView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 354
    sget v0, Lorg/wikipedia/R$id;->errorView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;)V

    .line 355
    sget p1, Lorg/wikipedia/R$id;->errorView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/userprofile/ContributionsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    const-string v0, "errorView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0c004b

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 104
    sget v0, Lorg/wikipedia/R$id;->contributionsRecyclerView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "contributionsRecyclerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 105
    sget v0, Lorg/wikipedia/R$id;->contributionsRecyclerView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/userprofile/ContributionsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    .line 106
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 107
    invoke-static {}, Lorg/wikipedia/analytics/UserContributionFunnel;->reset()V

    .line 108
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 109
    invoke-virtual {p0}, Lorg/wikipedia/userprofile/ContributionsFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onTypeItemClick(I)V
    .locals 1

    .line 112
    iput p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->editFilterType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 117
    invoke-static {}, Lorg/wikipedia/analytics/UserContributionFunnel;->get()Lorg/wikipedia/analytics/UserContributionFunnel;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/analytics/UserContributionFunnel;->logFilterAll()V

    goto :goto_0

    .line 116
    :cond_0
    invoke-static {}, Lorg/wikipedia/analytics/UserContributionFunnel;->get()Lorg/wikipedia/analytics/UserContributionFunnel;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/analytics/UserContributionFunnel;->logFilterTags()V

    goto :goto_0

    .line 115
    :cond_1
    invoke-static {}, Lorg/wikipedia/analytics/UserContributionFunnel;->get()Lorg/wikipedia/analytics/UserContributionFunnel;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/analytics/UserContributionFunnel;->logFilterCaptions()V

    goto :goto_0

    .line 114
    :cond_2
    invoke-static {}, Lorg/wikipedia/analytics/UserContributionFunnel;->get()Lorg/wikipedia/analytics/UserContributionFunnel;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/analytics/UserContributionFunnel;->logFilterDescriptions()V

    .line 120
    :goto_0
    invoke-direct {p0}, Lorg/wikipedia/userprofile/ContributionsFragment;->createConsolidatedList()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 74
    sget p1, Lorg/wikipedia/R$id;->contributionsRecyclerView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/userprofile/ContributionsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string p2, "contributionsRecyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 75
    sget p1, Lorg/wikipedia/R$id;->contributionsRecyclerView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/userprofile/ContributionsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/wikipedia/userprofile/ContributionsFragment;->adapter:Lorg/wikipedia/userprofile/ContributionsFragment$ContributionsEntryItemAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 77
    sget p1, Lorg/wikipedia/R$id;->contributionsRecyclerView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/userprofile/ContributionsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lorg/wikipedia/userprofile/ContributionsFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lorg/wikipedia/userprofile/ContributionsFragment$onViewCreated$1;-><init>(Lorg/wikipedia/userprofile/ContributionsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 89
    sget p1, Lorg/wikipedia/R$id;->swipeRefreshLayout:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/userprofile/ContributionsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 p2, 0x1

    new-array p2, p2, [I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0400c5

    invoke-static {v0, v1}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x0

    aput v0, p2, v1

    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 90
    sget p1, Lorg/wikipedia/R$id;->swipeRefreshLayout:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/userprofile/ContributionsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance p2, Lorg/wikipedia/userprofile/ContributionsFragment$onViewCreated$2;

    invoke-direct {p2, p0}, Lorg/wikipedia/userprofile/ContributionsFragment$onViewCreated$2;-><init>(Lorg/wikipedia/userprofile/ContributionsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 94
    sget p1, Lorg/wikipedia/R$id;->errorView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/userprofile/ContributionsFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    new-instance p2, Lorg/wikipedia/userprofile/ContributionsFragment$onViewCreated$3;

    invoke-direct {p2, p0}, Lorg/wikipedia/userprofile/ContributionsFragment$onViewCreated$3;-><init>(Lorg/wikipedia/userprofile/ContributionsFragment;)V

    invoke-virtual {p1, p2}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-direct {p0}, Lorg/wikipedia/userprofile/ContributionsFragment;->resetAndFetch()V

    .line 100
    invoke-static {}, Lorg/wikipedia/analytics/UserContributionFunnel;->get()Lorg/wikipedia/analytics/UserContributionFunnel;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/analytics/UserContributionFunnel;->logOpen()V

    return-void
.end method
