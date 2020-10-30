.class public final Lorg/wikipedia/talk/TalkTopicActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "TalkTopicActivity.kt"

# interfaces
.implements Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyHolder;,
        Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyItemAdapter;,
        Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;,
        Lorg/wikipedia/talk/TalkTopicActivity$ReplyTextWatcher;,
        Lorg/wikipedia/talk/TalkTopicActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/talk/TalkTopicActivity$Companion;

.field private static final EXTRA_LANGUAGE:Ljava/lang/String; = "language"

.field private static final EXTRA_TOPIC:Ljava/lang/String; = "topicId"

.field private static final EXTRA_USER_NAME:Ljava/lang/String; = "userName"

.field public static final RESULT_EDIT_SUCCESS:I = 0x1


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

.field private csrfClient:Lorg/wikipedia/csrf/CsrfTokenClient;

.field private currentRevision:J

.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private linkHandler:Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;

.field private final linkMovementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

.field private replyActive:Z

.field private final textWatcher:Lorg/wikipedia/talk/TalkTopicActivity$ReplyTextWatcher;

.field private topic:Lorg/wikipedia/dataclient/page/TalkPage$Topic;

.field private topicId:I

.field private userName:Ljava/lang/String;

.field private wikiSite:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/wikipedia/talk/TalkTopicActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/wikipedia/talk/TalkTopicActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/wikipedia/talk/TalkTopicActivity;->Companion:Lorg/wikipedia/talk/TalkTopicActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 39
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->topicId:I

    .line 41
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    const-string v1, "WikipediaApp.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    const-string v1, "WikipediaApp.getInstance().wikiSite"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->userName:Ljava/lang/String;

    .line 45
    new-instance v0, Lorg/wikipedia/talk/TalkTopicActivity$ReplyTextWatcher;

    invoke-direct {v0, p0}, Lorg/wikipedia/talk/TalkTopicActivity$ReplyTextWatcher;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;)V

    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->textWatcher:Lorg/wikipedia/talk/TalkTopicActivity$ReplyTextWatcher;

    .line 46
    new-instance v0, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-direct {v0}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    .line 51
    new-instance v0, Lorg/wikipedia/page/LinkMovementMethodExt;

    new-instance v1, Lorg/wikipedia/talk/TalkTopicActivity$linkMovementMethod$1;

    invoke-direct {v1, p0}, Lorg/wikipedia/talk/TalkTopicActivity$linkMovementMethod$1;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;)V

    invoke-direct {v0, v1}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->linkMovementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    return-void
.end method

.method public static final synthetic access$doSave(Lorg/wikipedia/talk/TalkTopicActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lorg/wikipedia/talk/TalkTopicActivity;->doSave(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getCurrentRevision$p(Lorg/wikipedia/talk/TalkTopicActivity;)J
    .locals 2

    .line 38
    iget-wide v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->currentRevision:J

    return-wide v0
.end method

.method public static final synthetic access$getLinkHandler$p(Lorg/wikipedia/talk/TalkTopicActivity;)Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->linkHandler:Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;

    return-object p0
.end method

.method public static final synthetic access$getLinkMovementMethod$p(Lorg/wikipedia/talk/TalkTopicActivity;)Lorg/wikipedia/page/LinkMovementMethodExt;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->linkMovementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    return-object p0
.end method

.method public static final synthetic access$getReplyActive$p(Lorg/wikipedia/talk/TalkTopicActivity;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->replyActive:Z

    return p0
.end method

.method public static final synthetic access$getTopic$p(Lorg/wikipedia/talk/TalkTopicActivity;)Lorg/wikipedia/dataclient/page/TalkPage$Topic;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->topic:Lorg/wikipedia/dataclient/page/TalkPage$Topic;

    return-object p0
.end method

.method public static final synthetic access$getTopicId$p(Lorg/wikipedia/talk/TalkTopicActivity;)I
    .locals 0

    .line 38
    iget p0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->topicId:I

    return p0
.end method

.method public static final synthetic access$getWikiSite$p(Lorg/wikipedia/talk/TalkTopicActivity;)Lorg/wikipedia/dataclient/WikiSite;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    return-object p0
.end method

.method public static final synthetic access$isNewTopic(Lorg/wikipedia/talk/TalkTopicActivity;)Z
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->isNewTopic()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$loadTopic(Lorg/wikipedia/talk/TalkTopicActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->loadTopic()V

    return-void
.end method

.method public static final synthetic access$onSaveClicked(Lorg/wikipedia/talk/TalkTopicActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->onSaveClicked()V

    return-void
.end method

.method public static final synthetic access$onSaveError(Lorg/wikipedia/talk/TalkTopicActivity;Ljava/lang/Throwable;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity;->onSaveError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$onSaveSuccess(Lorg/wikipedia/talk/TalkTopicActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->onSaveSuccess()V

    return-void
.end method

.method public static final synthetic access$setCurrentRevision$p(Lorg/wikipedia/talk/TalkTopicActivity;J)V
    .locals 0

    .line 38
    iput-wide p1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->currentRevision:J

    return-void
.end method

.method public static final synthetic access$setLinkHandler$p(Lorg/wikipedia/talk/TalkTopicActivity;Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->linkHandler:Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;

    return-void
.end method

.method public static final synthetic access$setReplyActive$p(Lorg/wikipedia/talk/TalkTopicActivity;Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->replyActive:Z

    return-void
.end method

.method public static final synthetic access$setTopic$p(Lorg/wikipedia/talk/TalkTopicActivity;Lorg/wikipedia/dataclient/page/TalkPage$Topic;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->topic:Lorg/wikipedia/dataclient/page/TalkPage$Topic;

    return-void
.end method

.method public static final synthetic access$setTopicId$p(Lorg/wikipedia/talk/TalkTopicActivity;I)V
    .locals 0

    .line 38
    iput p1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->topicId:I

    return-void
.end method

.method public static final synthetic access$setWikiSite$p(Lorg/wikipedia/talk/TalkTopicActivity;Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    return-void
.end method

.method public static final synthetic access$showLinkPreviewOrNavigate(Lorg/wikipedia/talk/TalkTopicActivity;Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity;->showLinkPreviewOrNavigate(Lorg/wikipedia/page/PageTitle;)V

    return-void
.end method

.method public static final synthetic access$updateOnError(Lorg/wikipedia/talk/TalkTopicActivity;Ljava/lang/Throwable;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity;->updateOnError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$updateOnSuccess(Lorg/wikipedia/talk/TalkTopicActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->updateOnSuccess()V

    return-void
.end method

.method public static final synthetic access$waitForUpdatedRevision(Lorg/wikipedia/talk/TalkTopicActivity;J)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicActivity;->waitForUpdatedRevision(J)V

    return-void
.end method

.method private final doSave(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    .line 300
    iget-object v1, v0, Lorg/wikipedia/talk/TalkTopicActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v2, v0, Lorg/wikipedia/talk/TalkTopicActivity;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    invoke-static {v2}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User_talk:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lorg/wikipedia/talk/TalkTopicActivity;->userName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 301
    invoke-direct/range {p0 .. p0}, Lorg/wikipedia/talk/TalkTopicActivity;->isNewTopic()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "new"

    goto :goto_0

    :cond_0
    iget v2, v0, Lorg/wikipedia/talk/TalkTopicActivity;->topicId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v5, v2

    .line 302
    invoke-direct/range {p0 .. p0}, Lorg/wikipedia/talk/TalkTopicActivity;->isNewTopic()Z

    move-result v2

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    move-object/from16 v2, p2

    goto :goto_1

    :cond_1
    move-object v2, v6

    .line 303
    :goto_1
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "user"

    move-object v8, v7

    goto :goto_2

    :cond_2
    move-object v8, v6

    .line 304
    :goto_2
    invoke-direct/range {p0 .. p0}, Lorg/wikipedia/talk/TalkTopicActivity;->isNewTopic()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object/from16 v9, p3

    goto :goto_3

    :cond_3
    move-object v9, v6

    :goto_3
    invoke-direct/range {p0 .. p0}, Lorg/wikipedia/talk/TalkTopicActivity;->isNewTopic()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v10, v6

    goto :goto_4

    :cond_4
    move-object/from16 v10, p3

    .line 305
    :goto_4
    iget-wide v11, v0, Lorg/wikipedia/talk/TalkTopicActivity;->currentRevision:J

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v7, ""

    move-object v6, v2

    move-object/from16 v13, p1

    .line 300
    invoke-interface/range {v3 .. v15}, Lorg/wikipedia/dataclient/Service;->postEditSubmit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 306
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 307
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 308
    new-instance v3, Lorg/wikipedia/talk/TalkTopicActivity$doSave$1;

    invoke-direct {v3, v0}, Lorg/wikipedia/talk/TalkTopicActivity$doSave$1;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;)V

    .line 310
    new-instance v4, Lorg/wikipedia/talk/TalkTopicActivity$doSave$2;

    invoke-direct {v4, v0}, Lorg/wikipedia/talk/TalkTopicActivity$doSave$2;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;)V

    .line 308
    invoke-virtual {v2, v3, v4}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v2

    .line 300
    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private final isNewTopic()Z
    .locals 2

    .line 196
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->topicId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final loadTopic()V
    .locals 4

    .line 142
    invoke-direct {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->isNewTopic()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 146
    sget v0, Lorg/wikipedia/R$id;->talkProgressBar:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v1, "talkProgressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 147
    sget v0, Lorg/wikipedia/R$id;->talkErrorView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    const-string v1, "talkErrorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/talk/TalkTopicActivity;->userName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/wikipedia/dataclient/RestService;->getTalkPage(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 150
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 151
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 152
    new-instance v2, Lorg/wikipedia/talk/TalkTopicActivity$loadTopic$1;

    invoke-direct {v2, p0}, Lorg/wikipedia/talk/TalkTopicActivity$loadTopic$1;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 158
    new-instance v2, Lorg/wikipedia/talk/TalkTopicActivity$loadTopic$2;

    invoke-direct {v2, p0}, Lorg/wikipedia/talk/TalkTopicActivity$loadTopic$2;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;)V

    .line 161
    new-instance v3, Lorg/wikipedia/talk/TalkTopicActivity$loadTopic$3;

    invoke-direct {v3, p0}, Lorg/wikipedia/talk/TalkTopicActivity$loadTopic$3;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;)V

    .line 158
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public static final newIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1

    sget-object v0, Lorg/wikipedia/talk/TalkTopicActivity;->Companion:Lorg/wikipedia/talk/TalkTopicActivity$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/wikipedia/talk/TalkTopicActivity$Companion;->newIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private final onInitialLoad()V
    .locals 7

    .line 119
    invoke-direct {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->isNewTopic()Z

    move-result v0

    const-string v1, "replySubjectLayout"

    const-string v2, "replySaveButton"

    const-string v3, "replyTextLayout"

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->replyActive:Z

    const v0, 0x7f100431

    .line 121
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    sget v0, Lorg/wikipedia/R$id;->talkProgressBar:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v6, "talkProgressBar"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 123
    sget v0, Lorg/wikipedia/R$id;->talkErrorView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    const-string v6, "talkErrorView"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    sget v0, Lorg/wikipedia/R$id;->replySaveButton:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    sget v0, Lorg/wikipedia/R$id;->replySubjectLayout:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    sget v0, Lorg/wikipedia/R$id;->replyTextLayout:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f100430

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 127
    sget v0, Lorg/wikipedia/R$id;->replyTextLayout:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    sget v0, Lorg/wikipedia/R$id;->replySubjectLayout:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 129
    sget v0, Lorg/wikipedia/R$id;->replySubjectLayout:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0}, Lorg/wikipedia/util/DeviceUtil;->showSoftKeyboard(Landroid/view/View;)V

    goto :goto_0

    .line 131
    :cond_0
    iput-boolean v4, p0, Lorg/wikipedia/talk/TalkTopicActivity;->replyActive:Z

    .line 132
    sget v0, Lorg/wikipedia/R$id;->replyEditText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PlainPasteEditText;

    const-string v4, ""

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
    sget v0, Lorg/wikipedia/R$id;->replySaveButton:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    sget v0, Lorg/wikipedia/R$id;->replySubjectLayout:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    sget v0, Lorg/wikipedia/R$id;->replyTextLayout:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 136
    sget v0, Lorg/wikipedia/R$id;->replyTextLayout:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f100435

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 137
    invoke-direct {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->loadTopic()V

    :goto_0
    return-void
.end method

.method private final onSaveClicked()V
    .locals 7

    .line 258
    sget v0, Lorg/wikipedia/R$id;->replySubjectText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PlainPasteEditText;

    const-string v1, "replySubjectText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    if-eqz v0, :cond_8

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget v3, Lorg/wikipedia/R$id;->replyEditText:I

    invoke-virtual {p0, v3}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/wikipedia/views/PlainPasteEditText;

    const-string v4, "replyEditText"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 261
    invoke-direct {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->isNewTopic()Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 262
    sget v0, Lorg/wikipedia/R$id;->replySubjectLayout:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "replySubjectLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f100437

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 263
    sget v0, Lorg/wikipedia/R$id;->replySubjectLayout:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    return-void

    .line 265
    :cond_1
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 266
    sget v0, Lorg/wikipedia/R$id;->replyTextLayout:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "replyTextLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f10042f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 267
    sget v0, Lorg/wikipedia/R$id;->replyTextLayout:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    return-void

    .line 272
    :cond_3
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v5, 0x0

    const-string v6, "~~~~"

    invoke-static {v1, v6, v4, v3, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 273
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ~~~~"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 275
    :cond_4
    invoke-direct {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->isNewTopic()Z

    move-result v1

    if-nez v1, :cond_5

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 280
    :cond_5
    sget v1, Lorg/wikipedia/R$id;->talkProgressBar:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const-string v3, "talkProgressBar"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 281
    sget v1, Lorg/wikipedia/R$id;->replySaveButton:I

    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v3, "replySaveButton"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 283
    new-instance v1, Lorg/wikipedia/csrf/CsrfTokenClient;

    iget-object v3, p0, Lorg/wikipedia/talk/TalkTopicActivity;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    invoke-direct {v1, v3, v3}, Lorg/wikipedia/csrf/CsrfTokenClient;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/dataclient/WikiSite;)V

    iput-object v1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->csrfClient:Lorg/wikipedia/csrf/CsrfTokenClient;

    if-eqz v1, :cond_6

    .line 284
    new-instance v3, Lorg/wikipedia/talk/TalkTopicActivity$onSaveClicked$1;

    invoke-direct {v3, p0, v0, v2}, Lorg/wikipedia/talk/TalkTopicActivity$onSaveClicked$1;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v1, v4, v3}, Lorg/wikipedia/csrf/CsrfTokenClient;->request(ZLorg/wikipedia/csrf/CsrfTokenClient$Callback;)V

    :cond_6
    return-void

    .line 259
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final onSaveError(Ljava/lang/Throwable;)V
    .locals 2

    .line 350
    sget v0, Lorg/wikipedia/R$id;->talkProgressBar:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v1, "talkProgressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 351
    invoke-static {p0, p1}, Lorg/wikipedia/util/FeedbackUtil;->showError(Landroid/app/Activity;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final onSaveSuccess()V
    .locals 2

    .line 339
    sget v0, Lorg/wikipedia/R$id;->talkProgressBar:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v1, "talkProgressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 341
    invoke-direct {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->isNewTopic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 342
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 343
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 345
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->onInitialLoad()V

    :goto_0
    return-void
.end method

.method private final showLinkPreviewOrNavigate(Lorg/wikipedia/page/PageTitle;)V
    .locals 4

    .line 187
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/page/Namespace;->USER_TALK:Lorg/wikipedia/page/Namespace;

    if-ne v0, v1, :cond_0

    .line 188
    sget-object v0, Lorg/wikipedia/talk/TalkTopicsActivity;->Companion:Lorg/wikipedia/talk/TalkTopicsActivity$Companion;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lorg/wikipedia/talk/TalkTopicsActivity$Companion;->newIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 191
    new-instance v2, Lorg/wikipedia/history/HistoryEntry;

    const/16 v3, 0x1f

    invoke-direct {v2, p1, v3}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    const/4 p1, 0x0

    invoke-static {v2, p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->newInstance(Lorg/wikipedia/history/HistoryEntry;Landroid/location/Location;)Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    move-result-object p1

    .line 190
    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    :goto_0
    return-void
.end method

.method private final updateOnError(Ljava/lang/Throwable;)V
    .locals 3

    .line 179
    sget v0, Lorg/wikipedia/R$id;->talkProgressBar:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v1, "talkProgressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 180
    sget v0, Lorg/wikipedia/R$id;->talkRefreshView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const-string v1, "talkRefreshView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 181
    sget v0, Lorg/wikipedia/R$id;->talkReplyButton:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hide()V

    .line 182
    sget v0, Lorg/wikipedia/R$id;->talkErrorView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    const-string v2, "talkErrorView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    sget v0, Lorg/wikipedia/R$id;->talkErrorView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final updateOnSuccess()V
    .locals 3

    .line 168
    sget v0, Lorg/wikipedia/R$id;->talkProgressBar:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v1, "talkProgressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 169
    sget v0, Lorg/wikipedia/R$id;->talkErrorView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    const-string v2, "talkErrorView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    sget v0, Lorg/wikipedia/R$id;->talkReplyButton:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->show()V

    .line 171
    sget v0, Lorg/wikipedia/R$id;->talkRefreshView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const-string v1, "talkRefreshView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 173
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->topic:Lorg/wikipedia/dataclient/page/TalkPage$Topic;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/TalkPage$Topic;->getHtml()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const v0, 0x7f100432

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 175
    sget v0, Lorg/wikipedia/R$id;->talkRecyclerView:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "talkRecyclerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    return-void

    .line 173
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final waitForUpdatedRevision(J)V
    .locals 5

    .line 316
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/talk/TalkTopicActivity;->userName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/wikipedia/dataclient/RestService;->getTalkPage(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 317
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-virtual {v1, v3, v4, v2}, Lio/reactivex/rxjava3/core/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 318
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 319
    new-instance v2, Lorg/wikipedia/talk/TalkTopicActivity$waitForUpdatedRevision$1;

    invoke-direct {v2, p1, p2}, Lorg/wikipedia/talk/TalkTopicActivity$waitForUpdatedRevision$1;-><init>(J)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 325
    new-instance p2, Lorg/wikipedia/talk/TalkTopicActivity$waitForUpdatedRevision$2;

    invoke-direct {p2, p0}, Lorg/wikipedia/talk/TalkTopicActivity$waitForUpdatedRevision$2;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;)V

    const-wide/16 v1, 0x14

    invoke-virtual {p1, v1, v2, p2}, Lio/reactivex/rxjava3/core/Observable;->retry(JLio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 329
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 330
    new-instance p2, Lorg/wikipedia/talk/TalkTopicActivity$waitForUpdatedRevision$3;

    invoke-direct {p2, p0}, Lorg/wikipedia/talk/TalkTopicActivity$waitForUpdatedRevision$3;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;)V

    .line 332
    new-instance v1, Lorg/wikipedia/talk/TalkTopicActivity$waitForUpdatedRevision$4;

    invoke-direct {v1, p0}, Lorg/wikipedia/talk/TalkTopicActivity$waitForUpdatedRevision$4;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;)V

    .line 330
    invoke-virtual {p1, p2, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 316
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 56
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002c

    .line 57
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 58
    sget p1, Lorg/wikipedia/R$id;->replyToolbar:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 59
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const-string p1, ""

    .line 60
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    new-instance v1, Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;

    invoke-direct {v1, p0, p0}, Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->linkHandler:Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-static {v1}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    const-string v2, "WikiSite.forLanguageCode\u2026XTRA_LANGUAGE).orEmpty())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 66
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "userName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object p1, v1

    :cond_3
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->userName:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "intent"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v1, -0x1

    const-string v2, "topicId"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->topicId:I

    .line 69
    sget p1, Lorg/wikipedia/R$id;->talkRefreshView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/wikipedia/util/L10nUtil;->setConditionalLayoutDirection(Landroid/view/View;Ljava/lang/String;)V

    .line 71
    sget p1, Lorg/wikipedia/R$id;->talkRecyclerView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "talkRecyclerView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 72
    sget p1, Lorg/wikipedia/R$id;->talkRecyclerView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lorg/wikipedia/views/DrawableItemDecoration;

    const v3, 0x7f040261

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4, v4}, Lorg/wikipedia/views/DrawableItemDecoration;-><init>(Landroid/content/Context;IZZ)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 73
    sget p1, Lorg/wikipedia/R$id;->talkRecyclerView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyItemAdapter;

    invoke-direct {v1, p0}, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyItemAdapter;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 75
    sget p1, Lorg/wikipedia/R$id;->talkRefreshView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/wikipedia/util/L10nUtil;->setConditionalLayoutDirection(Landroid/view/View;Ljava/lang/String;)V

    .line 77
    sget p1, Lorg/wikipedia/R$id;->talkErrorView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    new-instance v1, Lorg/wikipedia/talk/TalkTopicActivity$onCreate$1;

    invoke-direct {v1, p0}, Lorg/wikipedia/talk/TalkTopicActivity$onCreate$1;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;)V

    invoke-virtual {p1, v1}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    sget p1, Lorg/wikipedia/R$id;->talkErrorView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    new-instance v1, Lorg/wikipedia/talk/TalkTopicActivity$onCreate$2;

    invoke-direct {v1, p0}, Lorg/wikipedia/talk/TalkTopicActivity$onCreate$2;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;)V

    invoke-virtual {p1, v1}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    sget p1, Lorg/wikipedia/R$id;->talkReplyButton:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    new-instance v1, Lorg/wikipedia/talk/TalkTopicActivity$onCreate$3;

    invoke-direct {v1, p0}, Lorg/wikipedia/talk/TalkTopicActivity$onCreate$3;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    sget p1, Lorg/wikipedia/R$id;->replySubjectText:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/views/PlainPasteEditText;

    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->textWatcher:Lorg/wikipedia/talk/TalkTopicActivity$ReplyTextWatcher;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 96
    sget p1, Lorg/wikipedia/R$id;->replyEditText:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/views/PlainPasteEditText;

    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->textWatcher:Lorg/wikipedia/talk/TalkTopicActivity$ReplyTextWatcher;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 97
    sget p1, Lorg/wikipedia/R$id;->replySaveButton:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v1, Lorg/wikipedia/talk/TalkTopicActivity$onCreate$4;

    invoke-direct {v1, p0}, Lorg/wikipedia/talk/TalkTopicActivity$onCreate$4;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    sget p1, Lorg/wikipedia/R$id;->talkRefreshView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const-string v1, "talkRefreshView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->isNewTopic()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 102
    sget p1, Lorg/wikipedia/R$id;->talkRefreshView:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v0, Lorg/wikipedia/talk/TalkTopicActivity$onCreate$5;

    invoke-direct {v0, p0}, Lorg/wikipedia/talk/TalkTopicActivity$onCreate$5;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;)V

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 106
    sget p1, Lorg/wikipedia/R$id;->talkReplyButton:I

    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const-string v0, "talkReplyButton"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 108
    invoke-direct {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->onInitialLoad()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 112
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 113
    sget v0, Lorg/wikipedia/R$id;->replySubjectText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PlainPasteEditText;

    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->textWatcher:Lorg/wikipedia/talk/TalkTopicActivity$ReplyTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 114
    sget v0, Lorg/wikipedia/R$id;->replyEditText:I

    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PlainPasteEditText;

    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->textWatcher:Lorg/wikipedia/talk/TalkTopicActivity$ReplyTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 115
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onLinkPreviewAddToList(Lorg/wikipedia/page/PageTitle;)V
    .locals 3

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 381
    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->TALK_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    invoke-static {p1, v2}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->newInstance(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)Lorg/wikipedia/readinglist/AddToReadingListDialog;

    move-result-object p1

    .line 380
    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method public onLinkPreviewCopyLink(Lorg/wikipedia/page/PageTitle;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/wikipedia/util/ClipboardUtil;->setPlainText(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const p1, 0x7f100032

    .line 376
    invoke-static {p0, p1}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;I)V

    return-void
.end method

.method public onLinkPreviewLoadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Z)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 370
    invoke-static {p0, p2, p1}, Lorg/wikipedia/page/PageActivity;->newIntentForNewTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 371
    invoke-static {p0, p2, p1, p3}, Lorg/wikipedia/page/PageActivity;->newIntentForCurrentTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;Z)Landroid/content/Intent;

    move-result-object p1

    .line 370
    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onLinkPreviewShareLink(Lorg/wikipedia/page/PageTitle;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->shareText(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)V

    return-void
.end method
