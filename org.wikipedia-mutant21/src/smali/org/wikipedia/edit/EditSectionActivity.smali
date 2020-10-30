.class public Lorg/wikipedia/edit/EditSectionActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "EditSectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/edit/EditSectionActivity$SectionTextWatcher;
    }
.end annotation


# static fields
.field public static final ACTION_EDIT_SECTION:Ljava/lang/String; = "org.wikipedia.edit_section"

.field public static final EXTRA_HIGHLIGHT_TEXT:Ljava/lang/String; = "org.wikipedia.edit_section.highlight"

.field public static final EXTRA_PAGE_PROPS:Ljava/lang/String; = "org.wikipedia.edit_section.pageprops"

.field public static final EXTRA_SECTION_HEADING:Ljava/lang/String; = "org.wikipedia.edit_section.sectionheading"

.field public static final EXTRA_SECTION_ID:Ljava/lang/String; = "org.wikipedia.edit_section.sectionid"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "org.wikipedia.edit_section.title"


# instance fields
.field abuseFilterImage:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field abusefilterContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private abusefilterEditResult:Lorg/wikipedia/edit/EditAbuseFilterResult;

.field abusefilterText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field abusefilterTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private actionMode:Landroid/view/ActionMode;

.field private bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

.field captchaContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

.field private csrfClient:Lorg/wikipedia/csrf/CsrfTokenClient;

.field private currentRevision:J

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private editPreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

.field private editSummaryFragment:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

.field errorView:Lorg/wikipedia/views/WikiErrorView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private funnel:Lorg/wikipedia/analytics/EditFunnel;

.field private pageProps:Lorg/wikipedia/page/PageProperties;

.field progressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field sectionContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private sectionHeading:Ljava/lang/String;

.field private sectionID:I

.field sectionScrollView:Landroid/widget/ScrollView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field sectionText:Lorg/wikipedia/views/PlainPasteEditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private sectionTextFirstLoad:Z

.field private sectionTextModified:Z

.field private sectionWikitext:Ljava/lang/String;

.field private successRunnable:Ljava/lang/Runnable;

.field private syntaxHighlighter:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

.field private textToHighlight:Ljava/lang/String;

.field private textWatcher:Lorg/wikipedia/edit/EditSectionActivity$SectionTextWatcher;

.field private title:Lorg/wikipedia/page/PageTitle;

.field wikiTextKeyboardView:Lorg/wikipedia/views/WikiTextKeyboardView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 105
    new-instance v0, Lorg/wikipedia/edit/EditSectionActivity$SectionTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/edit/EditSectionActivity$SectionTextWatcher;-><init>(Lorg/wikipedia/edit/EditSectionActivity;Lorg/wikipedia/edit/EditSectionActivity$1;)V

    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->textWatcher:Lorg/wikipedia/edit/EditSectionActivity$SectionTextWatcher;

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionTextModified:Z

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionTextFirstLoad:Z

    .line 121
    new-instance v0, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-direct {v0}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    .line 123
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 125
    new-instance v0, Lorg/wikipedia/edit/EditSectionActivity$1;

    invoke-direct {v0, p0}, Lorg/wikipedia/edit/EditSectionActivity$1;-><init>(Lorg/wikipedia/edit/EditSectionActivity;)V

    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->successRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lorg/wikipedia/edit/EditSectionActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionID:I

    return p0
.end method

.method static synthetic access$200(Lorg/wikipedia/edit/EditSectionActivity;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lorg/wikipedia/edit/EditSectionActivity;->doSave(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lorg/wikipedia/edit/EditSectionActivity;)Landroid/view/ActionMode;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/wikipedia/edit/EditSectionActivity;->actionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static synthetic access$302(Lorg/wikipedia/edit/EditSectionActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    .line 75
    iput-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->actionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$400(Lorg/wikipedia/edit/EditSectionActivity;)Lorg/wikipedia/edit/richtext/SyntaxHighlighter;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/wikipedia/edit/EditSectionActivity;->syntaxHighlighter:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    return-object p0
.end method

.method static synthetic access$500(Lorg/wikipedia/edit/EditSectionActivity;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionTextFirstLoad:Z

    return p0
.end method

.method static synthetic access$502(Lorg/wikipedia/edit/EditSectionActivity;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionTextFirstLoad:Z

    return p1
.end method

.method static synthetic access$600(Lorg/wikipedia/edit/EditSectionActivity;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionTextModified:Z

    return p0
.end method

.method static synthetic access$602(Lorg/wikipedia/edit/EditSectionActivity;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionTextModified:Z

    return p1
.end method

.method private cancelAbuseFilter()V
    .locals 2

    const/4 v0, 0x0

    .line 470
    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->abusefilterEditResult:Lorg/wikipedia/edit/EditAbuseFilterResult;

    .line 471
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->abusefilterContainer:Landroid/view/View;

    new-instance v1, Lorg/wikipedia/edit/-$$Lambda$qqthS79SONWckbwItKQhXZ3Cmyc;

    invoke-direct {v1, p0}, Lorg/wikipedia/edit/-$$Lambda$qqthS79SONWckbwItKQhXZ3Cmyc;-><init>(Lorg/wikipedia/edit/EditSectionActivity;)V

    invoke-static {v0, v1}, Lorg/wikipedia/views/ViewAnimations;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private cancelCalls()V
    .locals 1

    .line 269
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->csrfClient:Lorg/wikipedia/csrf/CsrfTokenClient;

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0}, Lorg/wikipedia/csrf/CsrfTokenClient;->cancel()V

    const/4 v0, 0x0

    .line 271
    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->csrfClient:Lorg/wikipedia/csrf/CsrfTokenClient;

    .line 273
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method private displaySectionText()V
    .locals 2

    .line 656
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionText:Lorg/wikipedia/views/PlainPasteEditText;

    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionWikitext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 657
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->progressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionContainer:Landroid/view/View;

    invoke-static {v0, v1}, Lorg/wikipedia/views/ViewAnimations;->crossFade(Landroid/view/View;Landroid/view/View;)V

    .line 658
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->textToHighlight:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/wikipedia/edit/EditSectionActivity;->scrollToHighlight(Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->pageProps:Lorg/wikipedia/page/PageProperties;

    if-eqz v0, :cond_0

    .line 661
    invoke-virtual {v0}, Lorg/wikipedia/page/PageProperties;->getEditProtectionStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/wikipedia/util/FeedbackUtil;->showProtectionStatusMessage(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private doSave(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    .line 303
    iget-object v1, v0, Lorg/wikipedia/edit/EditSectionActivity;->sectionHeading:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/* "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/wikipedia/edit/EditSectionActivity;->sectionHeading:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " */ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lorg/wikipedia/edit/EditSectionActivity;->editPreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    invoke-virtual {v1}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 308
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 309
    invoke-virtual {v0, v1}, Lorg/wikipedia/edit/EditSectionActivity;->showProgressBar(Z)V

    .line 312
    :cond_1
    iget-object v1, v0, Lorg/wikipedia/edit/EditSectionActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v2, v0, Lorg/wikipedia/edit/EditSectionActivity;->title:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-static {v2}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v2

    iget-object v3, v0, Lorg/wikipedia/edit/EditSectionActivity;->title:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lorg/wikipedia/edit/EditSectionActivity;->sectionID:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "user"

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    iget-object v8, v0, Lorg/wikipedia/edit/EditSectionActivity;->sectionText:Lorg/wikipedia/views/PlainPasteEditText;

    .line 313
    invoke-virtual {v8}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    iget-wide v10, v0, Lorg/wikipedia/edit/EditSectionActivity;->currentRevision:J

    iget-object v12, v0, Lorg/wikipedia/edit/EditSectionActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    invoke-virtual {v12}, Lorg/wikipedia/captcha/CaptchaHandler;->isActive()Z

    move-result v12

    const-string v13, "null"

    if-eqz v12, :cond_3

    iget-object v12, v0, Lorg/wikipedia/edit/EditSectionActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    invoke-virtual {v12}, Lorg/wikipedia/captcha/CaptchaHandler;->captchaId()Ljava/lang/String;

    move-result-object v12

    move-object v14, v12

    goto :goto_2

    :cond_3
    move-object v14, v13

    :goto_2
    iget-object v12, v0, Lorg/wikipedia/edit/EditSectionActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 314
    invoke-virtual {v12}, Lorg/wikipedia/captcha/CaptchaHandler;->isActive()Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, v0, Lorg/wikipedia/edit/EditSectionActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    invoke-virtual {v12}, Lorg/wikipedia/captcha/CaptchaHandler;->captchaWord()Ljava/lang/String;

    move-result-object v12

    move-object v15, v12

    goto :goto_3

    :cond_4
    move-object v15, v13

    :goto_3
    move-object/from16 v12, p1

    move-object v13, v14

    move-object v14, v15

    .line 312
    invoke-interface/range {v2 .. v14}, Lorg/wikipedia/dataclient/Service;->postEditSubmit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 315
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 316
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$DccftCMzKkuaW0aDg98T9lO0Oys;

    invoke-direct {v3, v0}, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$DccftCMzKkuaW0aDg98T9lO0Oys;-><init>(Lorg/wikipedia/edit/EditSectionActivity;)V

    new-instance v4, Lorg/wikipedia/edit/-$$Lambda$zmlODBbwph7afe7-yZWIlIlxXrM;

    invoke-direct {v4, v0}, Lorg/wikipedia/edit/-$$Lambda$zmlODBbwph7afe7-yZWIlIlxXrM;-><init>(Lorg/wikipedia/edit/EditSectionActivity;)V

    .line 317
    invoke-virtual {v2, v3, v4}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v2

    .line 312
    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private fetchSectionText()V
    .locals 4

    .line 635
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionWikitext:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 636
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->title:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/edit/EditSectionActivity;->title:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionID:I

    invoke-interface {v1, v2, v3}, Lorg/wikipedia/dataclient/Service;->getWikiTextForSection(Ljava/lang/String;I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 637
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 638
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$NrXRna_S8bHMk5JIWPHa1Lnh8ZE;

    invoke-direct {v2, p0}, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$NrXRna_S8bHMk5JIWPHa1Lnh8ZE;-><init>(Lorg/wikipedia/edit/EditSectionActivity;)V

    new-instance v3, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$75-iKS0t0rzVsr5VURSKKHFKiF8;

    invoke-direct {v3, p0}, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$75-iKS0t0rzVsr5VURSKKHFKiF8;-><init>(Lorg/wikipedia/edit/EditSectionActivity;)V

    .line 639
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 636
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    goto :goto_0

    .line 651
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/edit/EditSectionActivity;->displaySectionText()V

    :goto_0
    return-void
.end method

.method private getEditTokenThenSave(Z)V
    .locals 3

    .line 277
    invoke-direct {p0}, Lorg/wikipedia/edit/EditSectionActivity;->cancelCalls()V

    .line 278
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->captchaContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    invoke-virtual {v0}, Lorg/wikipedia/captcha/CaptchaHandler;->hideCaptcha()V

    .line 280
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->editSummaryFragment:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    invoke-virtual {v0}, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->saveSummary()V

    .line 282
    new-instance v0, Lorg/wikipedia/csrf/CsrfTokenClient;

    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->title:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/edit/EditSectionActivity;->title:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/wikipedia/csrf/CsrfTokenClient;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/dataclient/WikiSite;)V

    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->csrfClient:Lorg/wikipedia/csrf/CsrfTokenClient;

    .line 283
    new-instance v1, Lorg/wikipedia/edit/EditSectionActivity$2;

    invoke-direct {v1, p0}, Lorg/wikipedia/edit/EditSectionActivity$2;-><init>(Lorg/wikipedia/edit/EditSectionActivity;)V

    invoke-virtual {v0, p1, v1}, Lorg/wikipedia/csrf/CsrfTokenClient;->request(ZLorg/wikipedia/csrf/CsrfTokenClient$Callback;)V

    return-void
.end method

.method private handleAbuseFilter()V
    .locals 2

    .line 449
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->abusefilterEditResult:Lorg/wikipedia/edit/EditAbuseFilterResult;

    if-nez v0, :cond_0

    return-void

    .line 452
    :cond_0
    invoke-virtual {v0}, Lorg/wikipedia/edit/EditAbuseFilterResult;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 453
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->funnel:Lorg/wikipedia/analytics/EditFunnel;

    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->abusefilterEditResult:Lorg/wikipedia/edit/EditAbuseFilterResult;

    invoke-virtual {v1}, Lorg/wikipedia/edit/EditAbuseFilterResult;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/analytics/EditFunnel;->logAbuseFilterError(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->abuseFilterImage:Landroid/widget/ImageView;

    const v1, 0x7f08008a

    invoke-static {p0, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 455
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->abusefilterTitle:Landroid/widget/TextView;

    const v1, 0x7f100029

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->abusefilterText:Landroid/widget/TextView;

    const v1, 0x7f100027

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 458
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->funnel:Lorg/wikipedia/analytics/EditFunnel;

    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->abusefilterEditResult:Lorg/wikipedia/edit/EditAbuseFilterResult;

    invoke-virtual {v1}, Lorg/wikipedia/edit/EditAbuseFilterResult;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/analytics/EditFunnel;->logAbuseFilterWarning(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->abuseFilterImage:Landroid/widget/ImageView;

    const v1, 0x7f08008b

    invoke-static {p0, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 460
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->abusefilterTitle:Landroid/widget/TextView;

    const v1, 0x7f10002a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->abusefilterText:Landroid/widget/TextView;

    const v1, 0x7f100028

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    :goto_0
    invoke-static {p0}, Lorg/wikipedia/util/DeviceUtil;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 465
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->abusefilterContainer:Landroid/view/View;

    new-instance v1, Lorg/wikipedia/edit/-$$Lambda$qqthS79SONWckbwItKQhXZ3Cmyc;

    invoke-direct {v1, p0}, Lorg/wikipedia/edit/-$$Lambda$qqthS79SONWckbwItKQhXZ3Cmyc;-><init>(Lorg/wikipedia/edit/EditSectionActivity;)V

    invoke-static {v0, v1}, Lorg/wikipedia/views/ViewAnimations;->fadeIn(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleEditingException(Lorg/wikipedia/dataclient/mwapi/MwException;)V
    .locals 3

    .line 403
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwException;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "badtoken"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "assertuserfailed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 405
    invoke-direct {p0, p1}, Lorg/wikipedia/edit/EditSectionActivity;->getEditTokenThenSave(Z)V

    return-void

    .line 409
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "abusefilter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 410
    new-instance v1, Lorg/wikipedia/edit/EditAbuseFilterResult;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, v2, p1}, Lorg/wikipedia/edit/EditAbuseFilterResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->abusefilterEditResult:Lorg/wikipedia/edit/EditAbuseFilterResult;

    .line 411
    invoke-direct {p0}, Lorg/wikipedia/edit/EditSectionActivity;->handleAbuseFilter()V

    .line 412
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->abusefilterEditResult:Lorg/wikipedia/edit/EditAbuseFilterResult;

    invoke-virtual {p1}, Lorg/wikipedia/edit/EditAbuseFilterResult;->getType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 413
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->editPreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    invoke-virtual {p1}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->hide()V

    goto/16 :goto_2

    :cond_2
    const-string v1, "blocked"

    .line 415
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "wikimedia-globalblocking-ipblocked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "editconflict"

    .line 436
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 437
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1000e1

    .line 438
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f1000e0

    .line 439
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f1000df

    const/4 v1, 0x0

    .line 440
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 441
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 442
    invoke-direct {p0}, Lorg/wikipedia/edit/EditSectionActivity;->resetToStart()V

    goto :goto_2

    .line 444
    :cond_4
    invoke-virtual {p0, p1}, Lorg/wikipedia/edit/EditSectionActivity;->showError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 420
    :cond_5
    :goto_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f100457

    .line 421
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 422
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f100458

    .line 423
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f10002d

    .line 424
    sget-object v1, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$SJ92gRNIZOB6mIWyHk5t5ZAo9II;->INSTANCE:Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$SJ92gRNIZOB6mIWyHk5t5ZAo9II;

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    :cond_6
    const v0, 0x7f100456

    .line 426
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f1001d4

    .line 427
    new-instance v1, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$PHjEqpxMvdAg3t80u0nM6ZVQ19c;

    invoke-direct {v1, p0}, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$PHjEqpxMvdAg3t80u0nM6ZVQ19c;-><init>(Lorg/wikipedia/edit/EditSectionActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f10002c

    .line 433
    sget-object v1, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$bPLa4w_uq_XU_HJJQRxR4EqT1NM;->INSTANCE:Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$bPLa4w_uq_XU_HJJQRxR4EqT1NM;

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 435
    :goto_1
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_7
    :goto_2
    return-void
.end method

.method static synthetic lambda$handleEditingException$10(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 433
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$handleEditingException$8(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 424
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onBackPressed$17(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 726
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showRetryDialog$7(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 393
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private resetToStart()V
    .locals 2

    .line 622
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    invoke-virtual {v0}, Lorg/wikipedia/captcha/CaptchaHandler;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    invoke-virtual {v0}, Lorg/wikipedia/captcha/CaptchaHandler;->cancelCaptcha()V

    .line 624
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->captchaContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 626
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->editSummaryFragment:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    invoke-virtual {v0}, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->editSummaryFragment:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    invoke-virtual {v0}, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->hide()V

    .line 629
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->editPreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    invoke-virtual {v0}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 630
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->editPreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    invoke-virtual {v0}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->hide()V

    :cond_2
    return-void
.end method

.method private scrollToHighlight(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 666
    invoke-static {p1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 669
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionText:Lorg/wikipedia/views/PlainPasteEditText;

    new-instance v1, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$jFERlIwG85v6fuXesO7ox0W7bYg;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$jFERlIwG85v6fuXesO7ox0W7bYg;-><init>(Lorg/wikipedia/edit/EditSectionActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private showRetryDialog(Ljava/lang/Throwable;)V
    .locals 2

    .line 385
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1000cb

    .line 386
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 387
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p1, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$SMTUR8rT3p8AjsV5rDpoc6iy4bs;

    invoke-direct {p1, p0}, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$SMTUR8rT3p8AjsV5rDpoc6iy4bs;-><init>(Lorg/wikipedia/edit/EditSectionActivity;)V

    const v1, 0x7f1000cd

    .line 388
    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget-object p1, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$oTt6NcW0kBuhUPgTKFvjEEU4JLA;->INSTANCE:Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$oTt6NcW0kBuhUPgTKFvjEEU4JLA;

    const v1, 0x7f1000cc

    .line 392
    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 394
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 395
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateEditLicenseText()V
    .locals 5

    const v0, 0x7f09012a

    .line 235
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 236
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f1000ea

    goto :goto_0

    :cond_0
    const v1, 0x7f1000e9

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f10043b

    .line 239
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f10005b

    .line 240
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 236
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    new-instance v1, Lorg/wikipedia/page/LinkMovementMethodExt;

    new-instance v2, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$YG-PlRO42i5dj-2kWV2u5kC89aM;

    invoke-direct {v2, p0}, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$YG-PlRO42i5dj-2kWV2u5kC89aM;-><init>(Lorg/wikipedia/edit/EditSectionActivity;)V

    invoke-direct {v1, v2}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private updateTextSize()V
    .locals 4

    .line 617
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getEditingTextSizeExtra()I

    move-result v0

    .line 618
    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/wikipedia/WikipediaApp;->getFontSize(Landroid/view/Window;)F

    move-result v2

    int-to-float v0, v0

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public clickNextButton()V
    .locals 3

    .line 479
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->editSummaryFragment:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    invoke-virtual {v0}, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->editSummaryFragment:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    invoke-virtual {v0}, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->hide()V

    .line 483
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->editPreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->editSummaryFragment:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    invoke-virtual {v1}, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->setCustomSummary(Ljava/lang/String;)V

    goto :goto_0

    .line 484
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->editPreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    invoke-virtual {v0}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 486
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->abusefilterEditResult:Lorg/wikipedia/edit/EditAbuseFilterResult;

    if-eqz v0, :cond_1

    .line 488
    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->funnel:Lorg/wikipedia/analytics/EditFunnel;

    invoke-virtual {v0}, Lorg/wikipedia/edit/EditAbuseFilterResult;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/wikipedia/analytics/EditFunnel;->logAbuseFilterWarningIgnore(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 490
    invoke-direct {p0, v0}, Lorg/wikipedia/edit/EditSectionActivity;->getEditTokenThenSave(Z)V

    .line 491
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->funnel:Lorg/wikipedia/analytics/EditFunnel;

    invoke-virtual {v0}, Lorg/wikipedia/analytics/EditFunnel;->logSaveAttempt()V

    goto :goto_0

    .line 494
    :cond_2
    invoke-static {p0}, Lorg/wikipedia/util/DeviceUtil;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 495
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->editPreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->title:Lorg/wikipedia/page/PageTitle;

    iget-object v2, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->showPreview(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->funnel:Lorg/wikipedia/analytics/EditFunnel;

    invoke-virtual {v0}, Lorg/wikipedia/analytics/EditFunnel;->logPreview()V

    :goto_0
    return-void
.end method

.method public finishActionMode()V
    .locals 1

    .line 600
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->actionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    .line 602
    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->actionMode:Landroid/view/ActionMode;

    :cond_0
    return-void
.end method

.method public getPageTitle()Lorg/wikipedia/page/PageTitle;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->title:Lorg/wikipedia/page/PageTitle;

    return-object v0
.end method

.method public synthetic lambda$doSave$5$EditSectionActivity(Lorg/wikipedia/edit/Edit;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 318
    invoke-virtual {p1}, Lorg/wikipedia/edit/Edit;->hasEditResult()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/wikipedia/edit/Edit;->edit()Lorg/wikipedia/edit/Edit$Result;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 319
    invoke-virtual {p1}, Lorg/wikipedia/edit/Edit;->edit()Lorg/wikipedia/edit/Edit$Result;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/edit/Edit$Result;->editSucceeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Lorg/wikipedia/edit/EditSuccessResult;

    invoke-virtual {p1}, Lorg/wikipedia/edit/Edit;->edit()Lorg/wikipedia/edit/Edit$Result;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/edit/Edit$Result;->newRevId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/wikipedia/edit/EditSuccessResult;-><init>(J)V

    invoke-virtual {p0, v0}, Lorg/wikipedia/edit/EditSectionActivity;->onEditSuccess(Lorg/wikipedia/edit/EditResult;)V

    goto/16 :goto_0

    .line 321
    :cond_0
    invoke-virtual {p1}, Lorg/wikipedia/edit/Edit;->edit()Lorg/wikipedia/edit/Edit$Result;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/edit/Edit$Result;->hasEditErrorCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    new-instance v0, Lorg/wikipedia/edit/EditAbuseFilterResult;

    invoke-virtual {p1}, Lorg/wikipedia/edit/Edit;->edit()Lorg/wikipedia/edit/Edit$Result;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/edit/Edit$Result;->code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/edit/Edit;->edit()Lorg/wikipedia/edit/Edit$Result;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/edit/Edit$Result;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/wikipedia/edit/Edit;->edit()Lorg/wikipedia/edit/Edit$Result;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/edit/Edit$Result;->warning()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lorg/wikipedia/edit/EditAbuseFilterResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/wikipedia/edit/EditSectionActivity;->onEditSuccess(Lorg/wikipedia/edit/EditResult;)V

    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {p1}, Lorg/wikipedia/edit/Edit;->edit()Lorg/wikipedia/edit/Edit$Result;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/edit/Edit$Result;->hasSpamBlacklistResponse()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    new-instance v0, Lorg/wikipedia/edit/EditSpamBlacklistResult;

    invoke-virtual {p1}, Lorg/wikipedia/edit/Edit;->edit()Lorg/wikipedia/edit/Edit$Result;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/edit/Edit$Result;->spamblacklist()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/wikipedia/edit/EditSpamBlacklistResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/wikipedia/edit/EditSectionActivity;->onEditSuccess(Lorg/wikipedia/edit/EditResult;)V

    goto :goto_0

    .line 325
    :cond_2
    invoke-virtual {p1}, Lorg/wikipedia/edit/Edit;->edit()Lorg/wikipedia/edit/Edit$Result;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/edit/Edit$Result;->hasCaptchaResponse()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 326
    new-instance v0, Lorg/wikipedia/captcha/CaptchaResult;

    invoke-virtual {p1}, Lorg/wikipedia/edit/Edit;->edit()Lorg/wikipedia/edit/Edit$Result;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/edit/Edit$Result;->captchaId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/wikipedia/captcha/CaptchaResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/wikipedia/edit/EditSectionActivity;->onEditSuccess(Lorg/wikipedia/edit/EditResult;)V

    goto :goto_0

    .line 328
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Received unrecognized edit response"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/wikipedia/edit/EditSectionActivity;->onEditFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 331
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "An unknown error occurred."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/wikipedia/edit/EditSectionActivity;->onEditFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$fetchSectionText$12$EditSectionActivity(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 640
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->revisions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 641
    new-instance v1, Lorg/wikipedia/page/PageTitle;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query()Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lorg/wikipedia/edit/EditSectionActivity;->title:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    iput-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->title:Lorg/wikipedia/page/PageTitle;

    .line 642
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->content()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionWikitext:Ljava/lang/String;

    .line 643
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->getRevId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->currentRevision:J

    .line 644
    invoke-direct {p0}, Lorg/wikipedia/edit/EditSectionActivity;->displaySectionText()V

    return-void
.end method

.method public synthetic lambda$fetchSectionText$13$EditSectionActivity(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 646
    invoke-virtual {p0, v0}, Lorg/wikipedia/edit/EditSectionActivity;->showProgressBar(Z)V

    .line 647
    invoke-virtual {p0, p1}, Lorg/wikipedia/edit/EditSectionActivity;->showError(Ljava/lang/Throwable;)V

    .line 648
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic lambda$handleEditingException$9$EditSectionActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 428
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const-string p1, "blocked"

    .line 429
    invoke-static {p0, p1}, Lorg/wikipedia/login/LoginActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 431
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$null$14$EditSectionActivity(Ljava/lang/String;)V
    .locals 2

    .line 672
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionText:Lorg/wikipedia/views/PlainPasteEditText;

    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionWikitext:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/wikipedia/util/StringUtil;->highlightEditText(Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onBackPressed$16$EditSectionActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 723
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 724
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public synthetic lambda$onCreate$0$EditSectionActivity(Landroid/view/View;)V
    .locals 1

    .line 192
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    invoke-direct {p0}, Lorg/wikipedia/edit/EditSectionActivity;->fetchSectionText()V

    return-void
.end method

.method public synthetic lambda$onCreate$1$EditSectionActivity(Landroid/view/View;)V
    .locals 0

    .line 196
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic lambda$onCreate$2$EditSectionActivity(Ljava/lang/String;)V
    .locals 5

    .line 208
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->bottomSheetPresenter:Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/history/HistoryEntry;

    new-instance v3, Lorg/wikipedia/page/PageTitle;

    iget-object v4, p0, Lorg/wikipedia/edit/EditSectionActivity;->title:Lorg/wikipedia/page/PageTitle;

    .line 209
    invoke-virtual {v4}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    const/4 p1, 0x2

    invoke-direct {v2, v3, p1}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    const/4 p1, 0x0

    invoke-static {v2, p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->newInstance(Lorg/wikipedia/history/HistoryEntry;Landroid/location/Location;)Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    move-result-object p1

    .line 208
    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method public synthetic lambda$onCreate$3$EditSectionActivity(Landroid/view/View;)V
    .locals 0

    .line 210
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->finishActionMode()V

    return-void
.end method

.method public synthetic lambda$onCreateOptionsMenu$11$EditSectionActivity(Landroid/view/View;)V
    .locals 0

    .line 549
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    invoke-virtual {p0, p1}, Lorg/wikipedia/edit/EditSectionActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    return-void
.end method

.method public synthetic lambda$scrollToHighlight$15$EditSectionActivity(Ljava/lang/String;)V
    .locals 4

    .line 670
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionScrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 672
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionText:Lorg/wikipedia/views/PlainPasteEditText;

    new-instance v1, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$faK6ep4ImC4unZUsCOb8S3nIPP4;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$faK6ep4ImC4unZUsCOb8S3nIPP4;-><init>(Lorg/wikipedia/edit/EditSectionActivity;Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$showRetryDialog$6$EditSectionActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x0

    .line 389
    invoke-direct {p0, p2}, Lorg/wikipedia/edit/EditSectionActivity;->getEditTokenThenSave(Z)V

    .line 390
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public synthetic lambda$updateEditLicenseText$4$EditSectionActivity(Ljava/lang/String;)V
    .locals 1

    const-string v0, "https://#login"

    .line 243
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->funnel:Lorg/wikipedia/analytics/EditFunnel;

    invoke-virtual {p1}, Lorg/wikipedia/analytics/EditFunnel;->logLoginAttempt()V

    .line 245
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->funnel:Lorg/wikipedia/analytics/EditFunnel;

    .line 246
    invoke-virtual {p1}, Lorg/wikipedia/analytics/EditFunnel;->getSessionToken()Ljava/lang/String;

    move-result-object p1

    const-string v0, "edit"

    .line 245
    invoke-static {p0, v0, p1}, Lorg/wikipedia/login/LoginActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x35

    .line 247
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 249
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/wikipedia/util/UriUtil;->handleExternalLink(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    .line 555
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 556
    invoke-virtual {p1}, Landroid/view/ActionMode;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 558
    invoke-static {p0, p1}, Lorg/wikipedia/views/ViewUtil;->setCloseButtonInActionMode(Landroid/content/Context;Landroid/view/ActionMode;)V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 256
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x35

    if-ne p1, p3, :cond_1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 259
    invoke-direct {p0}, Lorg/wikipedia/edit/EditSectionActivity;->updateEditLicenseText()V

    .line 260
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->funnel:Lorg/wikipedia/analytics/EditFunnel;

    invoke-virtual {p1}, Lorg/wikipedia/analytics/EditFunnel;->logLoginSuccess()V

    const p1, 0x7f100177

    .line 261
    invoke-static {p0, p1}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;I)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->funnel:Lorg/wikipedia/analytics/EditFunnel;

    invoke-virtual {p1}, Lorg/wikipedia/analytics/EditFunnel;->logLoginFailure()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 691
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 695
    invoke-virtual {p0, v0}, Lorg/wikipedia/edit/EditSectionActivity;->showProgressBar(Z)V

    .line 696
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    invoke-virtual {v0}, Lorg/wikipedia/captcha/CaptchaHandler;->isActive()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 697
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    invoke-virtual {v0}, Lorg/wikipedia/captcha/CaptchaHandler;->cancelCaptcha()V

    .line 698
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->captchaContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 700
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->abusefilterEditResult:Lorg/wikipedia/edit/EditAbuseFilterResult;

    if-eqz v0, :cond_3

    .line 701
    invoke-virtual {v0}, Lorg/wikipedia/edit/EditAbuseFilterResult;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 702
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->funnel:Lorg/wikipedia/analytics/EditFunnel;

    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->abusefilterEditResult:Lorg/wikipedia/edit/EditAbuseFilterResult;

    invoke-virtual {v1}, Lorg/wikipedia/edit/EditAbuseFilterResult;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/analytics/EditFunnel;->logAbuseFilterWarningBack(Ljava/lang/String;)V

    .line 704
    :cond_2
    invoke-direct {p0}, Lorg/wikipedia/edit/EditSectionActivity;->cancelAbuseFilter()V

    return-void

    .line 707
    :cond_3
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 708
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 710
    :cond_4
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->editSummaryFragment:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    invoke-virtual {v0}, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->handleBackPressed()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 713
    :cond_5
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->editPreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    invoke-virtual {v0}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->handleBackPressed()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 717
    :cond_6
    invoke-static {p0}, Lorg/wikipedia/util/DeviceUtil;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 719
    iget-boolean v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionTextModified:Z

    if-eqz v0, :cond_7

    .line 720
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1000dc

    .line 721
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f1000de

    .line 722
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$qldxw7UGfT4qG__Kq3R94eH1iPY;

    invoke-direct {v2, p0}, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$qldxw7UGfT4qG__Kq3R94eH1iPY;-><init>(Lorg/wikipedia/edit/EditSectionActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f1000dd

    .line 726
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$UARGIQFF2h6pKLNNd9Ng-oCVins;->INSTANCE:Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$UARGIQFF2h6pKLNNd9Ng-oCVins;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 727
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 729
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 144
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c001e

    .line 145
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 146
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    const v0, 0x1010031

    .line 147
    invoke-static {p0, v0}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/wikipedia/activity/BaseActivity;->setNavigationBarColor(I)V

    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.wikipedia.edit_section"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 153
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "org.wikipedia.edit_section.title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/PageTitle;

    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->title:Lorg/wikipedia/page/PageTitle;

    .line 154
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "org.wikipedia.edit_section.sectionid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionID:I

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "org.wikipedia.edit_section.sectionheading"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionHeading:Ljava/lang/String;

    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "org.wikipedia.edit_section.pageprops"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/PageProperties;

    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->pageProps:Lorg/wikipedia/page/PageProperties;

    .line 157
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "org.wikipedia.edit_section.highlight"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->textToHighlight:Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 161
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    :cond_0
    new-instance v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;-><init>(Landroid/content/Context;Landroid/widget/EditText;)V

    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->syntaxHighlighter:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    .line 165
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setSmoothScrollingEnabled(Z)V

    .line 167
    new-instance v0, Lorg/wikipedia/captcha/CaptchaHandler;

    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->title:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v5

    iget-object v6, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionText:Lorg/wikipedia/views/PlainPasteEditText;

    const/4 v8, 0x0

    const-string v7, ""

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/captcha/CaptchaHandler;-><init>(Landroid/app/Activity;Lorg/wikipedia/dataclient/WikiSite;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 169
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f09012b

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/edit/preview/EditPreviewFragment;

    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->editPreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 170
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f09012d

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->editSummaryFragment:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    .line 171
    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->title:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0, v1}, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->setTitle(Lorg/wikipedia/page/PageTitle;)V

    .line 173
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getFunnelManager()Lorg/wikipedia/analytics/FunnelManager;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->title:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0, v1}, Lorg/wikipedia/analytics/FunnelManager;->getEditFunnel(Lorg/wikipedia/page/PageTitle;)Lorg/wikipedia/analytics/EditFunnel;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->funnel:Lorg/wikipedia/analytics/EditFunnel;

    if-nez p1, :cond_1

    .line 177
    invoke-virtual {v0}, Lorg/wikipedia/analytics/EditFunnel;->logStart()V

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "hasTemporaryWikitextStored"

    .line 180
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getTemporaryWikitext()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionWikitext:Ljava/lang/String;

    .line 184
    :cond_2
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    invoke-virtual {v0, p1}, Lorg/wikipedia/captcha/CaptchaHandler;->restoreState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_3

    const-string v0, "abusefilter"

    .line 186
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 187
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/edit/EditAbuseFilterResult;

    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->abusefilterEditResult:Lorg/wikipedia/edit/EditAbuseFilterResult;

    .line 188
    invoke-direct {p0}, Lorg/wikipedia/edit/EditSectionActivity;->handleAbuseFilter()V

    .line 191
    :cond_3
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    new-instance v1, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$Tx6YwFcnmUDREfzXm0-ilPS9VaI;

    invoke-direct {v1, p0}, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$Tx6YwFcnmUDREfzXm0-ilPS9VaI;-><init>(Lorg/wikipedia/edit/EditSectionActivity;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    new-instance v1, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$dZZYjPdDLJ--7J3zePW8tOLlMvQ;

    invoke-direct {v1, p0}, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$dZZYjPdDLJ--7J3zePW8tOLlMvQ;-><init>(Lorg/wikipedia/edit/EditSectionActivity;)V

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionText:Lorg/wikipedia/views/PlainPasteEditText;

    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->title:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wikipedia/util/L10nUtil;->setConditionalTextDirection(Landroid/view/View;Ljava/lang/String;)V

    .line 200
    invoke-direct {p0}, Lorg/wikipedia/edit/EditSectionActivity;->fetchSectionText()V

    if-eqz p1, :cond_4

    const-string v0, "sectionTextModified"

    .line 202
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 203
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionTextModified:Z

    .line 206
    :cond_4
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionText:Lorg/wikipedia/views/PlainPasteEditText;

    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->textWatcher:Lorg/wikipedia/edit/EditSectionActivity$SectionTextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 207
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->wikiTextKeyboardView:Lorg/wikipedia/views/WikiTextKeyboardView;

    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {p1, v0}, Lorg/wikipedia/views/WikiTextKeyboardView;->setEditText(Lorg/wikipedia/views/PlainPasteEditText;)V

    .line 208
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->wikiTextKeyboardView:Lorg/wikipedia/views/WikiTextKeyboardView;

    new-instance v0, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$nSTUeAmem8fU_eBbwDBPxkRjyGs;

    invoke-direct {v0, p0}, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$nSTUeAmem8fU_eBbwDBPxkRjyGs;-><init>(Lorg/wikipedia/edit/EditSectionActivity;)V

    invoke-virtual {p1, v0}, Lorg/wikipedia/views/WikiTextKeyboardView;->setCallback(Lorg/wikipedia/views/WikiTextKeyboardView$Callback;)V

    .line 210
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionText:Lorg/wikipedia/views/PlainPasteEditText;

    new-instance v0, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$_lF6X0N45ptn7dVM1Fo3wk8_bBg;

    invoke-direct {v0, p0}, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$_lF6X0N45ptn7dVM1Fo3wk8_bBg;-><init>(Lorg/wikipedia/edit/EditSectionActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    invoke-direct {p0}, Lorg/wikipedia/edit/EditSectionActivity;->updateTextSize()V

    .line 215
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 216
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void

    .line 150
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Much wrong action. Such exception. Wow"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 524
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09024e

    .line 525
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f090222

    .line 526
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/edit/EditSectionActivity;->editPreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    invoke-virtual {v2}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->isActive()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f090223

    .line 527
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/edit/EditSectionActivity;->editPreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    invoke-virtual {v2}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->isActive()Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f09022d

    .line 528
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->editPreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    invoke-virtual {v1}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->isActive()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 530
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->editPreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    invoke-virtual {p1}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f1000e2

    goto :goto_0

    :cond_0
    const p1, 0x7f1000e5

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 531
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v1, :cond_3

    .line 532
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->abusefilterEditResult:Lorg/wikipedia/edit/EditAbuseFilterResult;

    if-eqz p1, :cond_2

    .line 533
    invoke-virtual {p1}, Lorg/wikipedia/edit/EditAbuseFilterResult;->getType()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 535
    :cond_2
    iget-boolean p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionTextModified:Z

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 538
    :cond_3
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 541
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0c0079

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 542
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const v1, 0x7f09011e

    .line 543
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 544
    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0400c5

    goto :goto_2

    :cond_4
    const v2, 0x7f04027b

    .line 545
    :goto_2
    invoke-static {p0, v2}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 547
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 548
    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 549
    new-instance v0, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$9f3BlKxR2x7oBQqKtZFqo1Qja_w;

    invoke-direct {v0, p0}, Lorg/wikipedia/edit/-$$Lambda$EditSectionActivity$9f3BlKxR2x7oBQqKtZFqo1Qja_w;-><init>(Lorg/wikipedia/edit/EditSectionActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return v3
.end method

.method public onDestroy()V
    .locals 2

    .line 227
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    invoke-virtual {v0}, Lorg/wikipedia/captcha/CaptchaHandler;->dispose()V

    .line 228
    invoke-direct {p0}, Lorg/wikipedia/edit/EditSectionActivity;->cancelCalls()V

    .line 229
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionText:Lorg/wikipedia/views/PlainPasteEditText;

    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->textWatcher:Lorg/wikipedia/edit/EditSectionActivity$SectionTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 230
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->syntaxHighlighter:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-virtual {v0}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->cleanup()V

    .line 231
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onEditFailure(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 375
    invoke-virtual {p0, v0}, Lorg/wikipedia/edit/EditSectionActivity;->showProgressBar(Z)V

    .line 376
    instance-of v0, p1, Lorg/wikipedia/dataclient/mwapi/MwException;

    if-eqz v0, :cond_0

    .line 377
    move-object v0, p1

    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwException;

    invoke-direct {p0, v0}, Lorg/wikipedia/edit/EditSectionActivity;->handleEditingException(Lorg/wikipedia/dataclient/mwapi/MwException;)V

    goto :goto_0

    .line 379
    :cond_0
    invoke-direct {p0, p1}, Lorg/wikipedia/edit/EditSectionActivity;->showRetryDialog(Ljava/lang/Throwable;)V

    .line 381
    :goto_0
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onEditSuccess(Lorg/wikipedia/edit/EditResult;)V
    .locals 4

    .line 338
    instance-of v0, p1, Lorg/wikipedia/edit/EditSuccessResult;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->funnel:Lorg/wikipedia/analytics/EditFunnel;

    check-cast p1, Lorg/wikipedia/edit/EditSuccessResult;

    invoke-virtual {p1}, Lorg/wikipedia/edit/EditSuccessResult;->getRevID()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/analytics/EditFunnel;->logSaved(J)V

    .line 344
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->successRunnable:Ljava/lang/Runnable;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 347
    invoke-virtual {p0, v0}, Lorg/wikipedia/edit/EditSectionActivity;->showProgressBar(Z)V

    .line 349
    instance-of v1, p1, Lorg/wikipedia/captcha/CaptchaResult;

    if-eqz v1, :cond_2

    .line 350
    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    invoke-virtual {v1}, Lorg/wikipedia/captcha/CaptchaHandler;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->funnel:Lorg/wikipedia/analytics/EditFunnel;

    invoke-virtual {v1}, Lorg/wikipedia/analytics/EditFunnel;->logCaptchaFailure()V

    .line 354
    :cond_1
    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity;->captchaContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    const/4 v1, 0x0

    check-cast p1, Lorg/wikipedia/captcha/CaptchaResult;

    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/captcha/CaptchaHandler;->handleCaptcha(Ljava/lang/String;Lorg/wikipedia/captcha/CaptchaResult;)V

    .line 356
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->funnel:Lorg/wikipedia/analytics/EditFunnel;

    invoke-virtual {p1}, Lorg/wikipedia/analytics/EditFunnel;->logCaptchaShown()V

    goto :goto_0

    .line 357
    :cond_2
    instance-of v0, p1, Lorg/wikipedia/edit/EditAbuseFilterResult;

    if-eqz v0, :cond_3

    .line 358
    check-cast p1, Lorg/wikipedia/edit/EditAbuseFilterResult;

    iput-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->abusefilterEditResult:Lorg/wikipedia/edit/EditAbuseFilterResult;

    .line 359
    invoke-direct {p0}, Lorg/wikipedia/edit/EditSectionActivity;->handleAbuseFilter()V

    .line 360
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->abusefilterEditResult:Lorg/wikipedia/edit/EditAbuseFilterResult;

    invoke-virtual {p1}, Lorg/wikipedia/edit/EditAbuseFilterResult;->getType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 361
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->editPreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    invoke-virtual {p1}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->hide()V

    goto :goto_0

    .line 363
    :cond_3
    instance-of v0, p1, Lorg/wikipedia/edit/EditSpamBlacklistResult;

    if-eqz v0, :cond_4

    const p1, 0x7f1000fa

    .line 364
    invoke-static {p0, p1}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;I)V

    .line 366
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->editPreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    invoke-virtual {p1}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->hide()V

    goto :goto_0

    .line 368
    :cond_4
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->funnel:Lorg/wikipedia/analytics/EditFunnel;

    invoke-virtual {p1}, Lorg/wikipedia/edit/EditResult;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/wikipedia/analytics/EditFunnel;->logError(Ljava/lang/String;)V

    .line 370
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p0, p1}, Lorg/wikipedia/edit/EditSectionActivity;->onEditFailure(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 502
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 518
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 504
    :sswitch_0
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->clickNextButton()V

    return v1

    .line 515
    :sswitch_1
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->showFindInEditor()V

    return v1

    .line 511
    :sswitch_2
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getEditingTextSizeExtra()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setEditingTextSizeExtra(I)V

    .line 512
    invoke-direct {p0}, Lorg/wikipedia/edit/EditSectionActivity;->updateTextSize()V

    return v1

    .line 507
    :sswitch_3
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getEditingTextSizeExtra()I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setEditingTextSizeExtra(I)V

    .line 508
    invoke-direct {p0}, Lorg/wikipedia/edit/EditSectionActivity;->updateTextSize()V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090222 -> :sswitch_3
        0x7f090223 -> :sswitch_2
        0x7f09022d -> :sswitch_1
        0x7f09024e -> :sswitch_0
    .end sparse-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 608
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "hasTemporaryWikitextStored"

    const/4 v1, 0x1

    .line 609
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 610
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->abusefilterEditResult:Lorg/wikipedia/edit/EditAbuseFilterResult;

    const-string v1, "abusefilter"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 611
    iget-boolean v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionTextModified:Z

    const-string v1, "sectionTextModified"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 612
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    invoke-virtual {v0, p1}, Lorg/wikipedia/captcha/CaptchaHandler;->saveState(Landroid/os/Bundle;)V

    .line 613
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->sectionWikitext:Ljava/lang/String;

    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->storeTemporaryWikitext(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 221
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 222
    invoke-direct {p0}, Lorg/wikipedia/edit/EditSectionActivity;->updateEditLicenseText()V

    return-void
.end method

.method public showCustomSummary()V
    .locals 1

    .line 686
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->editSummaryFragment:Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    invoke-virtual {v0}, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->show()V

    return-void
.end method

.method public showError(Ljava/lang/Throwable;)V
    .locals 1

    .line 563
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;)V

    .line 564
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showFindInEditor()V
    .locals 1

    .line 568
    new-instance v0, Lorg/wikipedia/edit/EditSectionActivity$3;

    invoke-direct {v0, p0}, Lorg/wikipedia/edit/EditSectionActivity$3;-><init>(Lorg/wikipedia/edit/EditSectionActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    return-void
.end method

.method public showProgressBar(Z)V
    .locals 1

    .line 677
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->progressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 678
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method
