.class public final Lorg/wikipedia/talk/TalkTopicsActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "TalkTopicsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicHolder;,
        Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicItemAdapter;,
        Lorg/wikipedia/talk/TalkTopicsActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/talk/TalkTopicsActivity$Companion;

.field private static final EXTRA_LANGUAGE:Ljava/lang/String; = "language"

.field private static final EXTRA_USER_NAME:Ljava/lang/String; = "userName"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private final topics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/wikipedia/dataclient/page/TalkPage$Topic;",
            ">;"
        }
    .end annotation
.end field

.field private userName:Ljava/lang/String;

.field private wikiSite:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/wikipedia/talk/TalkTopicsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/wikipedia/talk/TalkTopicsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/wikipedia/talk/TalkTopicsActivity;->Companion:Lorg/wikipedia/talk/TalkTopicsActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 34
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    const-string v1, "WikipediaApp.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    const-string v1, "WikipediaApp.getInstance().wikiSite"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    const-string v0, ""

    .line 35
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->userName:Ljava/lang/String;

    .line 36
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->topics:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$getTopics$p(Lorg/wikipedia/talk/TalkTopicsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->topics:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getUserName$p(Lorg/wikipedia/talk/TalkTopicsActivity;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->userName:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getWikiSite$p(Lorg/wikipedia/talk/TalkTopicsActivity;)Lorg/wikipedia/dataclient/WikiSite;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    return-object p0
.end method

.method public static final synthetic access$loadTopics(Lorg/wikipedia/talk/TalkTopicsActivity;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->loadTopics()V

    return-void
.end method

.method public static final synthetic access$setUserName$p(Lorg/wikipedia/talk/TalkTopicsActivity;Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->userName:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setWikiSite$p(Lorg/wikipedia/talk/TalkTopicsActivity;Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    return-void
.end method

.method public static final synthetic access$updateOnError(Lorg/wikipedia/talk/TalkTopicsActivity;Ljava/lang/Throwable;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lorg/wikipedia/talk/TalkTopicsActivity;->updateOnError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$updateOnSuccess(Lorg/wikipedia/talk/TalkTopicsActivity;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->updateOnSuccess()V

    return-void
.end method

.method private final loadTopics()V
    .locals 4

    .line 111
    sget v0, Lorg/wikipedia/R$id;->talkRefreshView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wikipedia/util/L10nUtil;->setConditionalLayoutDirection(Landroid/view/View;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 114
    sget v0, Lorg/wikipedia/R$id;->talkProgressBar:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v1, "talkProgressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 115
    sget v0, Lorg/wikipedia/R$id;->talkErrorView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    const-string v1, "talkErrorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    sget v0, Lorg/wikipedia/R$id;->talkEmptyContainer:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v2, "talkEmptyContainer"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->userName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/wikipedia/dataclient/RestService;->getTalkPage(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 119
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 120
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 121
    new-instance v2, Lorg/wikipedia/talk/TalkTopicsActivity$loadTopics$1;

    invoke-direct {v2, p0}, Lorg/wikipedia/talk/TalkTopicsActivity$loadTopics$1;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doAfterTerminate(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 125
    new-instance v2, Lorg/wikipedia/talk/TalkTopicsActivity$loadTopics$2;

    invoke-direct {v2, p0}, Lorg/wikipedia/talk/TalkTopicsActivity$loadTopics$2;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;)V

    .line 129
    new-instance v3, Lorg/wikipedia/talk/TalkTopicsActivity$loadTopics$3;

    invoke-direct {v3, p0}, Lorg/wikipedia/talk/TalkTopicsActivity$loadTopics$3;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;)V

    .line 125
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public static final newIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    sget-object v0, Lorg/wikipedia/talk/TalkTopicsActivity;->Companion:Lorg/wikipedia/talk/TalkTopicsActivity$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsActivity$Companion;->newIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private final updateOnError(Ljava/lang/Throwable;)V
    .locals 3

    .line 143
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->topics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 144
    sget v0, Lorg/wikipedia/R$id;->talkRecyclerView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "talkRecyclerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 145
    :cond_0
    sget v0, Lorg/wikipedia/R$id;->talkRecyclerView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    .line 148
    instance-of v0, p1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->code()I

    move-result v0

    const/16 v2, 0x194

    if-ne v0, v2, :cond_1

    .line 149
    sget p1, Lorg/wikipedia/R$id;->talkEmptyContainer:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v0, "talkEmptyContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    sget p1, Lorg/wikipedia/R$id;->talkNewTopicButton:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->show()V

    goto :goto_0

    .line 153
    :cond_1
    sget v0, Lorg/wikipedia/R$id;->talkNewTopicButton:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hide()V

    .line 154
    sget v0, Lorg/wikipedia/R$id;->talkErrorView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    const-string v2, "talkErrorView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 155
    sget v0, Lorg/wikipedia/R$id;->talkErrorView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private final updateOnSuccess()V
    .locals 2

    .line 136
    sget v0, Lorg/wikipedia/R$id;->talkErrorView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    const-string v1, "talkErrorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    sget v0, Lorg/wikipedia/R$id;->talkNewTopicButton:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->show()V

    .line 138
    sget v0, Lorg/wikipedia/R$id;->talkRecyclerView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "talkRecyclerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    .line 139
    sget v0, Lorg/wikipedia/R$id;->talkRecyclerView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 84
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3b

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "activity_result_lang_position_data"

    .line 86
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 87
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 88
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object p2

    const-string p3, "WikipediaApp.getInstance().language()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 89
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p1

    const-string p2, "WikiSite.forLanguageCode\u2026().appLanguageCodes[pos])"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 90
    invoke-direct {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->loadTopics()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 40
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002d

    .line 41
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "language"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    const-string v1, ""

    if-eqz p1, :cond_1

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    invoke-static {p1}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p1

    const-string v0, "WikiSite.forLanguageCode\u2026XTRA_LANGUAGE).orEmpty())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 46
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "userName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    move-object v1, p1

    :cond_2
    iput-object v1, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->userName:Ljava/lang/String;

    const p1, 0x7f100439

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 47
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->removeUnderscores(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    sget p1, Lorg/wikipedia/R$id;->talkRecyclerView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "talkRecyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 50
    sget p1, Lorg/wikipedia/R$id;->talkRecyclerView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lorg/wikipedia/views/FooterMarginItemDecoration;

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3}, Lorg/wikipedia/views/FooterMarginItemDecoration;-><init>(II)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 51
    sget p1, Lorg/wikipedia/R$id;->talkRecyclerView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lorg/wikipedia/views/DrawableItemDecoration;

    const v3, 0x7f040261

    invoke-direct {v1, p0, v3, v2, v2}, Lorg/wikipedia/views/DrawableItemDecoration;-><init>(Landroid/content/Context;IZZ)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 52
    sget p1, Lorg/wikipedia/R$id;->talkRecyclerView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicItemAdapter;

    invoke-direct {v0, p0}, Lorg/wikipedia/talk/TalkTopicsActivity$TalkTopicItemAdapter;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 54
    sget p1, Lorg/wikipedia/R$id;->talkErrorView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    new-instance v0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$1;

    invoke-direct {v0, p0}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$1;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;)V

    invoke-virtual {p1, v0}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget p1, Lorg/wikipedia/R$id;->talkErrorView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    new-instance v0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$2;

    invoke-direct {v0, p0}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$2;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;)V

    invoke-virtual {p1, v0}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    sget p1, Lorg/wikipedia/R$id;->talkNewTopicButton:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    new-instance v0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$3;

    invoke-direct {v0, p0}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$3;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    sget p1, Lorg/wikipedia/R$id;->talkRefreshView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$4;

    invoke-direct {v0, p0}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$4;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;)V

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 69
    sget p1, Lorg/wikipedia/R$id;->talkNewTopicButton:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicsActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const-string v0, "talkNewTopicButton"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 70
    invoke-direct {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->loadTopics()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 97
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0016

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 75
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09021f

    if-ne v0, v1, :cond_0

    .line 103
    sget-object p1, Lorg/wikipedia/Constants$InvokeSource;->TALK_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    invoke-virtual {p1}, Lorg/wikipedia/Constants$InvokeSource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x3b

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1

    .line 107
    :cond_0
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 0

    .line 79
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onResume()V

    .line 80
    invoke-direct {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->loadTopics()V

    return-void
.end method
