.class Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;
.super Ljava/lang/Object;
.source "DescriptionEditFragment.java"

# interfaces
.implements Lorg/wikipedia/descriptions/DescriptionEditView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/descriptions/DescriptionEditFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditViewCallback"
.end annotation


# instance fields
.field private final commonsDbName:Ljava/lang/String;

.field final synthetic this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

.field private final wikiCommons:Lorg/wikipedia/dataclient/WikiSite;

.field private final wikiData:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method private constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;)V
    .locals 2

    .line 261
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance p1, Lorg/wikipedia/dataclient/WikiSite;

    const-string v0, "https://www.wikidata.org/"

    const-string v1, ""

    invoke-direct {p1, v0, v1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->wikiData:Lorg/wikipedia/dataclient/WikiSite;

    .line 263
    new-instance p1, Lorg/wikipedia/dataclient/WikiSite;

    const-string v0, "https://commons.wikimedia.org/"

    invoke-direct {p1, v0}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->wikiCommons:Lorg/wikipedia/dataclient/WikiSite;

    const-string p1, "commonswiki"

    .line 264
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->commonsDbName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;Lorg/wikipedia/descriptions/DescriptionEditFragment$1;)V
    .locals 0

    .line 261
    invoke-direct {p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;-><init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;)V

    return-void
.end method

.method static synthetic access$700(Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;Ljava/lang/String;)V
    .locals 0

    .line 261
    invoke-direct {p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->postDescription(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;Ljava/lang/Throwable;Z)V
    .locals 0

    .line 261
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->editFailed(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private editFailed(Ljava/lang/Throwable;Z)V
    .locals 2

    .line 376
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editView:Lorg/wikipedia/descriptions/DescriptionEditView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 377
    invoke-virtual {v0, v1}, Lorg/wikipedia/descriptions/DescriptionEditView;->setSaveState(Z)V

    .line 378
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/wikipedia/util/FeedbackUtil;->showError(Landroid/app/Activity;Ljava/lang/Throwable;)V

    .line 379
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 381
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$600(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/analytics/DescriptionEditFunnel;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 382
    iget-object p2, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {p2}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$600(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/analytics/DescriptionEditFunnel;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/wikipedia/analytics/DescriptionEditFunnel;->logError(Ljava/lang/String;)V

    .line 384
    :cond_1
    invoke-static {}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->get()Lorg/wikipedia/analytics/SuggestedEditsFunnel;

    move-result-object p1

    iget-object p2, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {p2}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$100(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->failure(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V

    return-void
.end method

.method private getEditTokenThenSave(Z)V
    .locals 2

    .line 290
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$400(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/csrf/CsrfTokenClient;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$400(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/csrf/CsrfTokenClient;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback$1;

    invoke-direct {v1, p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback$1;-><init>(Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;)V

    invoke-virtual {v0, p1, v1}, Lorg/wikipedia/csrf/CsrfTokenClient;->request(ZLorg/wikipedia/csrf/CsrfTokenClient$Callback;)V

    return-void
.end method

.method private getPostObservable(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lorg/wikipedia/dataclient/wikidata/EntityPostResponse;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 360
    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {v1}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$100(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    const-string v3, "user"

    const-string v4, "#suggestededit-translate 1.0"

    const-string v5, "#suggestededit-add 1.0"

    const/4 v6, 0x0

    if-eq v1, v2, :cond_4

    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {v1}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$100(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v1, v2, :cond_0

    goto :goto_2

    .line 367
    :cond_0
    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->wikiData:Lorg/wikipedia/dataclient/WikiSite;

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v7

    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {v1}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$500(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->dbName()Ljava/lang/String;

    move-result-object v10

    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    .line 368
    invoke-static {v1}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$500(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v11

    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    iget-object v1, v1, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editView:Lorg/wikipedia/descriptions/DescriptionEditView;

    invoke-virtual {v1}, Lorg/wikipedia/descriptions/DescriptionEditView;->getDescription()Ljava/lang/String;

    move-result-object v12

    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    .line 369
    invoke-static {v1}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$100(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v1, v2, :cond_1

    move-object v13, v5

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    .line 370
    invoke-static {v1}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$100(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v1, v2, :cond_2

    move-object v13, v4

    goto :goto_0

    :cond_2
    move-object v13, v6

    .line 371
    :goto_0
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v15, v3

    goto :goto_1

    :cond_3
    move-object v15, v6

    :goto_1
    move-object/from16 v8, p2

    move-object/from16 v9, p2

    move-object/from16 v14, p1

    .line 367
    invoke-interface/range {v7 .. v15}, Lorg/wikipedia/dataclient/Service;->postDescriptionEdit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    return-object v1

    .line 361
    :cond_4
    :goto_2
    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->wikiCommons:Lorg/wikipedia/dataclient/WikiSite;

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v7

    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    .line 362
    invoke-static {v1}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$500(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v11

    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    iget-object v1, v1, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editView:Lorg/wikipedia/descriptions/DescriptionEditView;

    invoke-virtual {v1}, Lorg/wikipedia/descriptions/DescriptionEditView;->getDescription()Ljava/lang/String;

    move-result-object v12

    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    .line 363
    invoke-static {v1}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$100(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v1, v2, :cond_5

    move-object v13, v5

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    .line 364
    invoke-static {v1}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$100(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v1, v2, :cond_6

    move-object v13, v4

    goto :goto_3

    :cond_6
    move-object v13, v6

    .line 365
    :goto_3
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v15, v3

    goto :goto_4

    :cond_7
    move-object v15, v6

    :goto_4
    const-string v10, "commonswiki"

    move-object/from16 v8, p2

    move-object/from16 v9, p2

    move-object/from16 v14, p1

    .line 361
    invoke-interface/range {v7 .. v15}, Lorg/wikipedia/dataclient/Service;->postLabelEdit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    return-object v1
.end method

.method private postDescription(Ljava/lang/String;)V
    .locals 3

    .line 316
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$900(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {v1}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$500(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v1

    invoke-interface {v1}, Lorg/wikipedia/dataclient/Service;->getSiteInfo()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditFragment$EditViewCallback$3Jk28k72_lmrt1cCjvGyKdtDvfk;

    invoke-direct {v2, p0, p1}, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditFragment$EditViewCallback$3Jk28k72_lmrt1cCjvGyKdtDvfk;-><init>(Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;Ljava/lang/String;)V

    .line 317
    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 324
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 325
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditFragment$EditViewCallback$zNfN3rhOARoGBwC3NNfUEP0RpKM;

    invoke-direct {v1, p0}, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditFragment$EditViewCallback$zNfN3rhOARoGBwC3NNfUEP0RpKM;-><init>(Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;)V

    new-instance v2, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditFragment$EditViewCallback$EUOqrdi7EUf1vvVE51dSXoI7SN0;

    invoke-direct {v2, p0}, Lorg/wikipedia/descriptions/-$$Lambda$DescriptionEditFragment$EditViewCallback$EUOqrdi7EUf1vvVE51dSXoI7SN0;-><init>(Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;)V

    .line 326
    invoke-virtual {p1, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 316
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$postDescription$0$DescriptionEditFragment$EditViewCallback(Ljava/lang/String;Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 318
    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->siteInfo()Lorg/wikipedia/settings/SiteInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->siteInfo()Lorg/wikipedia/settings/SiteInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/settings/SiteInfo;->lang()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->siteInfo()Lorg/wikipedia/settings/SiteInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/settings/SiteInfo;->lang()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->siteInfo()Lorg/wikipedia/settings/SiteInfo;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/settings/SiteInfo;->lang()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {p2}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$500(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/page/PageTitle;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object p2

    .line 322
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->getPostObservable(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$postDescription$1$DescriptionEditFragment$EditViewCallback(Lorg/wikipedia/dataclient/wikidata/EntityPostResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 327
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwPostResponse;->getSuccessVal()I

    move-result v0

    if-lez v0, :cond_1

    .line 328
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {v1}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$1100(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Ljava/lang/Runnable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 329
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$600(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/analytics/DescriptionEditFunnel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 330
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$600(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/analytics/DescriptionEditFunnel;

    move-result-object v0

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/wikidata/EntityPostResponse;->getEntity()Lorg/wikipedia/dataclient/wikidata/Entities$Entity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/wikidata/EntityPostResponse;->getEntity()Lorg/wikipedia/dataclient/wikidata/Entities$Entity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->getLastRevId()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/analytics/DescriptionEditFunnel;->logSaved(J)V

    goto :goto_1

    .line 333
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Received unrecognized description edit response"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->editFailed(Ljava/lang/Throwable;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic lambda$postDescription$2$DescriptionEditFragment$EditViewCallback(Ljava/lang/Throwable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 336
    instance-of v0, p1, Lorg/wikipedia/dataclient/mwapi/MwException;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 337
    move-object v0, p1

    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwException;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwException;->getError()Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->badLoginState()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->badToken()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    const-string v2, "abusefilter-disallowed"

    .line 340
    invoke-virtual {v0, v2}, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->hasMessageName(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "abusefilter-warning"

    if-nez v3, :cond_2

    invoke-virtual {v0, v4}, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->hasMessageName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 351
    :cond_1
    invoke-direct {p0, p1, v1}, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->editFailed(Ljava/lang/Throwable;Z)V

    goto :goto_3

    .line 341
    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->hasMessageName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v4

    .line 342
    :goto_1
    invoke-virtual {v0, v2}, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->getMessageHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 343
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editView:Lorg/wikipedia/descriptions/DescriptionEditView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/wikipedia/descriptions/DescriptionEditView;->setSaveState(Z)V

    if-eqz p1, :cond_4

    .line 345
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editView:Lorg/wikipedia/descriptions/DescriptionEditView;

    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/wikipedia/descriptions/DescriptionEditView;->setError(Ljava/lang/CharSequence;)V

    .line 347
    :cond_4
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {p1}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$600(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/analytics/DescriptionEditFunnel;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 348
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {p1}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$600(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/analytics/DescriptionEditFunnel;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/wikipedia/analytics/DescriptionEditFunnel;->logAbuseFilterWarning(Ljava/lang/String;)V

    goto :goto_3

    .line 339
    :cond_5
    :goto_2
    invoke-direct {p0, v1}, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->getEditTokenThenSave(Z)V

    goto :goto_3

    .line 354
    :cond_6
    invoke-direct {p0, p1, v1}, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->editFailed(Ljava/lang/Throwable;Z)V

    :cond_7
    :goto_3
    return-void
.end method

.method public onBottomBarClick()V
    .locals 2

    .line 404
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$1000(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/descriptions/DescriptionEditFragment$Callback;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {v1}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$100(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/wikipedia/descriptions/DescriptionEditFragment$Callback;->onBottomBarContainerClicked(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V

    return-void
.end method

.method public onCancelClick()V
    .locals 2

    .line 394
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editView:Lorg/wikipedia/descriptions/DescriptionEditView;

    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditView;->showingReviewContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editView:Lorg/wikipedia/descriptions/DescriptionEditView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/wikipedia/descriptions/DescriptionEditView;->loadReviewContent(Z)V

    goto :goto_0

    .line 397
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/DeviceUtil;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 398
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onHelpClick()V
    .locals 1

    .line 389
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/FeedbackUtil;->showAndroidAppEditingFAQ(Landroid/content/Context;)V

    return-void
.end method

.method public onSaveClick()V
    .locals 4

    .line 268
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editView:Lorg/wikipedia/descriptions/DescriptionEditView;

    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditView;->showingReviewContent()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editView:Lorg/wikipedia/descriptions/DescriptionEditView;

    invoke-virtual {v0, v1}, Lorg/wikipedia/descriptions/DescriptionEditView;->loadReviewContent(Z)V

    goto :goto_2

    .line 271
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editView:Lorg/wikipedia/descriptions/DescriptionEditView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/wikipedia/descriptions/DescriptionEditView;->setError(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editView:Lorg/wikipedia/descriptions/DescriptionEditView;

    invoke-virtual {v0, v1}, Lorg/wikipedia/descriptions/DescriptionEditView;->setSaveState(Z)V

    .line 274
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$300(Lorg/wikipedia/descriptions/DescriptionEditFragment;)V

    .line 276
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$100(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$100(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 279
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    new-instance v1, Lorg/wikipedia/csrf/CsrfTokenClient;

    iget-object v2, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->wikiData:Lorg/wikipedia/dataclient/WikiSite;

    invoke-static {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$500(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/page/PageTitle;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/wikipedia/csrf/CsrfTokenClient;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/dataclient/WikiSite;)V

    invoke-static {v0, v1}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$402(Lorg/wikipedia/descriptions/DescriptionEditFragment;Lorg/wikipedia/csrf/CsrfTokenClient;)Lorg/wikipedia/csrf/CsrfTokenClient;

    goto :goto_1

    .line 277
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    new-instance v1, Lorg/wikipedia/csrf/CsrfTokenClient;

    iget-object v2, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->wikiCommons:Lorg/wikipedia/dataclient/WikiSite;

    invoke-direct {v1, v2}, Lorg/wikipedia/csrf/CsrfTokenClient;-><init>(Lorg/wikipedia/dataclient/WikiSite;)V

    invoke-static {v0, v1}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$402(Lorg/wikipedia/descriptions/DescriptionEditFragment;Lorg/wikipedia/csrf/CsrfTokenClient;)Lorg/wikipedia/csrf/CsrfTokenClient;

    :goto_1
    const/4 v0, 0x0

    .line 281
    invoke-direct {p0, v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->getEditTokenThenSave(Z)V

    .line 283
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$600(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/analytics/DescriptionEditFunnel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$600(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/analytics/DescriptionEditFunnel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/analytics/DescriptionEditFunnel;->logSaveAttempt()V

    :cond_3
    :goto_2
    return-void
.end method

.method public onVoiceInputClick()V
    .locals 3

    .line 409
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    .line 410
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 412
    :try_start_0
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    const/16 v2, 0x2d

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    :catch_0
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$EditViewCallback;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f10010e

    invoke-static {v0, v1}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;I)V

    :goto_0
    return-void
.end method
