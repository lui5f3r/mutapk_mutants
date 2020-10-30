.class public Lorg/wikipedia/language/LangLinksActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "LangLinksActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/language/LangLinksActivity$LangLinksItemViewHolder;,
        Lorg/wikipedia/language/LangLinksActivity$DefaultViewHolder;,
        Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;,
        Lorg/wikipedia/language/LangLinksActivity$LanguageSearchCallback;
    }
.end annotation


# static fields
.field public static final ACTION_LANGLINKS_FOR_TITLE:Ljava/lang/String; = "org.wikipedia.langlinks_for_title"

.field public static final ACTIVITY_RESULT_LANGLINK_SELECT:I = 0x1

.field public static final EXTRA_PAGETITLE:Ljava/lang/String; = "org.wikipedia.pagetitle"


# instance fields
.field private actionMode:Landroidx/appcompat/view/ActionMode;

.field private adapter:Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;

.field private app:Lorg/wikipedia/WikipediaApp;

.field private currentSearchQuery:Ljava/lang/String;

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field langLinksEmpty:Lorg/wikipedia/views/SearchEmptyView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field langLinksError:Lorg/wikipedia/views/WikiErrorView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field langLinksList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field langLinksProgress:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private languageEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/page/PageTitle;",
            ">;"
        }
    .end annotation
.end field

.field private searchActionModeCallback:Lorg/wikipedia/history/SearchActionModeCallback;

.field private siteInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/SiteMatrix$SiteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private title:Lorg/wikipedia/page/PageTitle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 64
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/language/LangLinksActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method static synthetic access$002(Lorg/wikipedia/language/LangLinksActivity;Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/ActionMode;
    .locals 0

    .line 54
    iput-object p1, p0, Lorg/wikipedia/language/LangLinksActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$100(Lorg/wikipedia/language/LangLinksActivity;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/wikipedia/language/LangLinksActivity;->currentSearchQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lorg/wikipedia/language/LangLinksActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    iput-object p1, p0, Lorg/wikipedia/language/LangLinksActivity;->currentSearchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lorg/wikipedia/language/LangLinksActivity;)Lorg/wikipedia/WikipediaApp;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/wikipedia/language/LangLinksActivity;->app:Lorg/wikipedia/WikipediaApp;

    return-object p0
.end method

.method static synthetic access$500(Lorg/wikipedia/language/LangLinksActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lorg/wikipedia/language/LangLinksActivity;->getCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static addChineseEntriesIfNeeded(Lorg/wikipedia/page/PageTitle;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/page/PageTitle;",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/PageTitle;",
            ">;)V"
        }
    .end annotation

    .line 287
    invoke-virtual {p0}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    const-string v1, "zh-hans"

    const-string v2, "zh-hant"

    .line 288
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 290
    aget-object v3, v1, v2

    .line 291
    invoke-virtual {p0}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v4

    invoke-virtual {v4}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 292
    new-instance v4, Lorg/wikipedia/page/PageTitle;

    invoke-virtual {p0}, Lorg/wikipedia/page/PageTitle;->isMainPage()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v3}, Lorg/wikipedia/settings/SiteInfoClient;->getMainPageForLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-static {v3}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 293
    invoke-virtual {p0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/wikipedia/page/PageTitle;->setText(Ljava/lang/String;)V

    .line 294
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private displayLangLinks()V
    .locals 4

    .line 193
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity;->languageEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity;->langLinksEmpty:Lorg/wikipedia/views/SearchEmptyView;

    const v1, 0x7f10015b

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/SearchEmptyView;->setEmptyText(I)V

    .line 196
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity;->langLinksProgress:Landroid/view/View;

    iget-object v1, p0, Lorg/wikipedia/language/LangLinksActivity;->langLinksEmpty:Lorg/wikipedia/views/SearchEmptyView;

    invoke-static {v0, v1}, Lorg/wikipedia/views/ViewAnimations;->crossFade(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 198
    :cond_0
    new-instance v0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;

    iget-object v1, p0, Lorg/wikipedia/language/LangLinksActivity;->languageEntries:Ljava/util/List;

    invoke-direct {p0}, Lorg/wikipedia/language/LangLinksActivity;->getEntriesByAppLanguages()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;-><init>(Lorg/wikipedia/language/LangLinksActivity;Ljava/util/List;Ljava/util/List;Lorg/wikipedia/language/LangLinksActivity$1;)V

    iput-object v0, p0, Lorg/wikipedia/language/LangLinksActivity;->adapter:Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;

    .line 199
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity;->langLinksEmpty:Lorg/wikipedia/views/SearchEmptyView;

    const v1, 0x7f10015d

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/SearchEmptyView;->setEmptyText(I)V

    .line 200
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity;->langLinksList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lorg/wikipedia/language/LangLinksActivity;->adapter:Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 201
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity;->langLinksList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 202
    new-instance v0, Lorg/wikipedia/language/LangLinksActivity$LanguageSearchCallback;

    invoke-direct {v0, p0, v3}, Lorg/wikipedia/language/LangLinksActivity$LanguageSearchCallback;-><init>(Lorg/wikipedia/language/LangLinksActivity;Lorg/wikipedia/language/LangLinksActivity$1;)V

    iput-object v0, p0, Lorg/wikipedia/language/LangLinksActivity;->searchActionModeCallback:Lorg/wikipedia/history/SearchActionModeCallback;

    .line 204
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lorg/wikipedia/language/LangLinksActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v1

    invoke-interface {v1}, Lorg/wikipedia/dataclient/Service;->getSiteMatrix()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 205
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 206
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/language/-$$Lambda$NQIKSawmFQ2rD1KCdIzmKQw-FzE;->INSTANCE:Lorg/wikipedia/language/-$$Lambda$NQIKSawmFQ2rD1KCdIzmKQw-FzE;

    .line 207
    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/language/-$$Lambda$LangLinksActivity$1sDaxgH6b8arzZqHlGc-PQ4qocY;

    invoke-direct {v2, p0}, Lorg/wikipedia/language/-$$Lambda$LangLinksActivity$1sDaxgH6b8arzZqHlGc-PQ4qocY;-><init>(Lorg/wikipedia/language/LangLinksActivity;)V

    .line 208
    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doAfterTerminate(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/language/-$$Lambda$LangLinksActivity$7Xzql4RoUOWDpGG9sdjSuAij1h8;

    invoke-direct {v2, p0}, Lorg/wikipedia/language/-$$Lambda$LangLinksActivity$7Xzql4RoUOWDpGG9sdjSuAij1h8;-><init>(Lorg/wikipedia/language/LangLinksActivity;)V

    sget-object v3, Lorg/wikipedia/language/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;->INSTANCE:Lorg/wikipedia/language/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;

    .line 212
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 214
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity;->langLinksProgress:Landroid/view/View;

    iget-object v1, p0, Lorg/wikipedia/language/LangLinksActivity;->langLinksList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lorg/wikipedia/views/ViewAnimations;->crossFade(Landroid/view/View;Landroid/view/View;)V

    .line 217
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method private fetchLangLinks()V
    .locals 4

    .line 221
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity;->languageEntries:Ljava/util/List;

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lorg/wikipedia/language/LangLinksActivity;->title:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/language/LangLinksActivity;->title:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/wikipedia/dataclient/Service;->getLangLinks(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 223
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 224
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/language/-$$Lambda$LangLinksActivity$ncToI8goZTqXVm7KyKc2JC1ymNw;

    invoke-direct {v2, p0}, Lorg/wikipedia/language/-$$Lambda$LangLinksActivity$ncToI8goZTqXVm7KyKc2JC1ymNw;-><init>(Lorg/wikipedia/language/LangLinksActivity;)V

    new-instance v3, Lorg/wikipedia/language/-$$Lambda$LangLinksActivity$uPK7z9mX-VhOMpgZXiC_Sy-kck4;

    invoke-direct {v3, p0}, Lorg/wikipedia/language/-$$Lambda$LangLinksActivity$uPK7z9mX-VhOMpgZXiC_Sy-kck4;-><init>(Lorg/wikipedia/language/LangLinksActivity;)V

    .line 225
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 222
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    goto :goto_0

    .line 236
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/language/LangLinksActivity;->displayLangLinks()V

    :goto_0
    return-void
.end method

.method private getCanonicalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 462
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity;->siteInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 463
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/dataclient/mwapi/SiteMatrix$SiteInfo;

    .line 464
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/SiteMatrix$SiteInfo;->code()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 465
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/SiteMatrix$SiteInfo;->localName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 470
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 471
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private getEntriesByAppLanguages()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/PageTitle;",
            ">;"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    iget-object v1, p0, Lorg/wikipedia/language/LangLinksActivity;->languageEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/page/PageTitle;

    .line 182
    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "no"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/wikipedia/language/LangLinksActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 183
    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v3

    const-string v4, "nb"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p0, Lorg/wikipedia/language/LangLinksActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 184
    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v4

    invoke-virtual {v4}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private sortLanguageEntriesByMru(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/PageTitle;",
            ">;)V"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getMruLanguageCodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    .line 272
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 273
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v5}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v5

    invoke-virtual {v5}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 274
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/wikipedia/page/PageTitle;

    add-int/lit8 v4, v2, 0x1

    .line 275
    invoke-interface {p1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v2, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private updateLanguageEntriesSupported(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/PageTitle;",
            ">;)V"
        }
    .end annotation

    .line 242
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 243
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/page/PageTitle;

    .line 244
    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "be-x-old"

    .line 246
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 249
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 250
    new-instance v3, Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "be-tarask"

    invoke-static {v4}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    invoke-interface {v0, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v4, "zh"

    .line 251
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 254
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    const-string v3, "zh-hans"

    const-string v4, "zh-hant"

    .line 255
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 258
    new-instance v5, Lorg/wikipedia/page/PageTitle;

    iget-object v6, p0, Lorg/wikipedia/language/LangLinksActivity;->title:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v6}, Lorg/wikipedia/page/PageTitle;->isMainPage()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v4}, Lorg/wikipedia/settings/SiteInfoClient;->getMainPageForLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v6

    .line 259
    :goto_2
    invoke-static {v4}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 258
    invoke-interface {v0, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    .line 265
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity;->title:Lorg/wikipedia/page/PageTitle;

    invoke-static {v0, p1}, Lorg/wikipedia/language/LangLinksActivity;->addChineseEntriesIfNeeded(Lorg/wikipedia/page/PageTitle;Ljava/util/List;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public synthetic lambda$displayLangLinks$2$LangLinksActivity()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity;->langLinksProgress:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity;->adapter:Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public synthetic lambda$displayLangLinks$3$LangLinksActivity(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lorg/wikipedia/language/LangLinksActivity;->siteInfoList:Ljava/util/List;

    return-void
.end method

.method public synthetic lambda$fetchLangLinks$4$LangLinksActivity(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 226
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->langLinks()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/language/LangLinksActivity;->languageEntries:Ljava/util/List;

    .line 227
    invoke-direct {p0, p1}, Lorg/wikipedia/language/LangLinksActivity;->updateLanguageEntriesSupported(Ljava/util/List;)V

    .line 228
    iget-object p1, p0, Lorg/wikipedia/language/LangLinksActivity;->languageEntries:Ljava/util/List;

    invoke-direct {p0, p1}, Lorg/wikipedia/language/LangLinksActivity;->sortLanguageEntriesByMru(Ljava/util/List;)V

    .line 229
    invoke-direct {p0}, Lorg/wikipedia/language/LangLinksActivity;->displayLangLinks()V

    return-void
.end method

.method public synthetic lambda$fetchLangLinks$5$LangLinksActivity(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity;->langLinksProgress:Landroid/view/View;

    iget-object v1, p0, Lorg/wikipedia/language/LangLinksActivity;->langLinksError:Lorg/wikipedia/views/WikiErrorView;

    invoke-static {v0, v1}, Lorg/wikipedia/views/ViewAnimations;->crossFade(Landroid/view/View;Landroid/view/View;)V

    .line 233
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity;->langLinksError:Lorg/wikipedia/views/WikiErrorView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic lambda$onCreate$0$LangLinksActivity(Landroid/view/View;)V
    .locals 0

    .line 96
    invoke-virtual {p0}, Lorg/wikipedia/language/LangLinksActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic lambda$onCreate$1$LangLinksActivity(Landroid/view/View;)V
    .locals 1

    .line 98
    iget-object p1, p0, Lorg/wikipedia/language/LangLinksActivity;->langLinksError:Lorg/wikipedia/views/WikiErrorView;

    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity;->langLinksProgress:Landroid/view/View;

    invoke-static {p1, v0}, Lorg/wikipedia/views/ViewAnimations;->crossFade(Landroid/view/View;Landroid/view/View;)V

    .line 99
    invoke-direct {p0}, Lorg/wikipedia/language/LangLinksActivity;->fetchLangLinks()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 132
    invoke-static {p0}, Lorg/wikipedia/util/DeviceUtil;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 133
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0020

    .line 81
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 82
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 83
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/language/LangLinksActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "org.wikipedia.langlinks_for_title"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "org.wikipedia.pagetitle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/page/PageTitle;

    iput-object p1, p0, Lorg/wikipedia/language/LangLinksActivity;->title:Lorg/wikipedia/page/PageTitle;

    .line 91
    iget-object p1, p0, Lorg/wikipedia/language/LangLinksActivity;->langLinksEmpty:Lorg/wikipedia/views/SearchEmptyView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    iget-object p1, p0, Lorg/wikipedia/language/LangLinksActivity;->langLinksProgress:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 94
    invoke-direct {p0}, Lorg/wikipedia/language/LangLinksActivity;->fetchLangLinks()V

    .line 96
    iget-object p1, p0, Lorg/wikipedia/language/LangLinksActivity;->langLinksError:Lorg/wikipedia/views/WikiErrorView;

    new-instance v0, Lorg/wikipedia/language/-$$Lambda$LangLinksActivity$b1FH9UsJIGU_lYeWs4svHrLWKdM;

    invoke-direct {v0, p0}, Lorg/wikipedia/language/-$$Lambda$LangLinksActivity$b1FH9UsJIGU_lYeWs4svHrLWKdM;-><init>(Lorg/wikipedia/language/LangLinksActivity;)V

    invoke-virtual {p1, v0}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object p1, p0, Lorg/wikipedia/language/LangLinksActivity;->langLinksError:Lorg/wikipedia/views/WikiErrorView;

    new-instance v0, Lorg/wikipedia/language/-$$Lambda$LangLinksActivity$hvkT17sTUM4wtydy8zgyIr35y8c;

    invoke-direct {v0, p0}, Lorg/wikipedia/language/-$$Lambda$LangLinksActivity$hvkT17sTUM4wtydy8zgyIr35y8c;-><init>(Lorg/wikipedia/language/LangLinksActivity;)V

    invoke-virtual {p1, v0}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Only ACTION_LANGLINKS_FOR_TITLE is supported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 111
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x0

    .line 112
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 113
    iget-object v2, p0, Lorg/wikipedia/language/LangLinksActivity;->languageEntries:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 106
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090250

    if-eq v0, v1, :cond_0

    .line 126
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 121
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/language/LangLinksActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-nez p1, :cond_1

    .line 122
    iget-object p1, p0, Lorg/wikipedia/language/LangLinksActivity;->searchActionModeCallback:Lorg/wikipedia/history/SearchActionModeCallback;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/language/LangLinksActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
