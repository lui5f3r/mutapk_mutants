.class public Lorg/wikipedia/wiktionary/WiktionaryDialog;
.super Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;
.source "WiktionaryDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/wiktionary/WiktionaryDialog$Callback;
    }
.end annotation


# static fields
.field private static ENABLED_LANGUAGES:[Ljava/lang/String; = null

.field private static GLOSSARY_OF_TERMS:Ljava/lang/String; = ":Glossary"

.field private static final PATH_CURRENT:Ljava/lang/String; = "./"

.field private static final PATH_WIKI:Ljava/lang/String; = "/wiki/"

.field private static final SELECTED_TEXT:Ljava/lang/String; = "selected_text"

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final WIKTIONARY_DOMAIN:Ljava/lang/String; = ".wiktionary.org"


# instance fields
.field private currentDefinition:Lorg/wikipedia/dataclient/restbase/RbDefinition;

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private funnel:Lorg/wikipedia/analytics/WiktionaryDialogFunnel;

.field private linkMovementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

.field private pageTitle:Lorg/wikipedia/page/PageTitle;

.field private progressBar:Landroid/widget/ProgressBar;

.field private rootView:Landroid/view/View;

.field private selectedText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "en"

    .line 53
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->ENABLED_LANGUAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;-><init>()V

    .line 63
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 194
    new-instance v0, Lorg/wikipedia/page/LinkMovementMethodExt;

    new-instance v1, Lorg/wikipedia/wiktionary/-$$Lambda$WiktionaryDialog$jwQ8se_Yz6MdIdj3ZlfqFgyczzw;

    invoke-direct {v1, p0}, Lorg/wikipedia/wiktionary/-$$Lambda$WiktionaryDialog$jwQ8se_Yz6MdIdj3ZlfqFgyczzw;-><init>(Lorg/wikipedia/wiktionary/WiktionaryDialog;)V

    invoke-direct {v0, v1}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    iput-object v0, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->linkMovementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    return-void
.end method

.method private callback()Lorg/wikipedia/wiktionary/WiktionaryDialog$Callback;
    .locals 1

    .line 229
    const-class v0, Lorg/wikipedia/wiktionary/WiktionaryDialog$Callback;

    invoke-static {p0, v0}, Lorg/wikipedia/activity/FragmentUtil;->getCallback(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/wiktionary/WiktionaryDialog$Callback;

    return-object v0
.end method

.method private displayNoDefinitionsFound()V
    .locals 2

    .line 136
    iget-object v0, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->rootView:Landroid/view/View;

    const v1, 0x7f0904d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 137
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private getCounterString(I)Ljava/lang/String;
    .locals 1

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getEnabledLanguages()[Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->ENABLED_LANGUAGES:[Ljava/lang/String;

    return-object v0
.end method

.method private getTermFromWikiLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/"

    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/wikipedia/wiktionary/WiktionaryDialog;->removeLinkFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private layOutDefinitionWithExamples(Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition;Landroid/view/View;Landroid/view/LayoutInflater;I)V
    .locals 2

    const v0, 0x7f0904cd

    .line 170
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/AppTextView;

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p4}, Lorg/wikipedia/wiktionary/WiktionaryDialog;->getCounterString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition;->getDefinition()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 172
    invoke-static {p4}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object p4, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->linkMovementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const p4, 0x7f0904d0

    .line 175
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 176
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition;->getExamples()[Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 177
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition;->getExamples()[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/wikipedia/wiktionary/WiktionaryDialog;->layoutExamples([Ljava/lang/String;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;)V

    :cond_0
    return-void
.end method

.method private layOutDefinitionsByUsage()V
    .locals 9

    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->rootView:Landroid/view/View;

    const v2, 0x7f0904cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 145
    iget-object v2, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->currentDefinition:Lorg/wikipedia/dataclient/restbase/RbDefinition;

    const-string v3, "en"

    invoke-virtual {v2, v3}, Lorg/wikipedia/dataclient/restbase/RbDefinition;->getUsagesForLang(Ljava/lang/String;)[Lorg/wikipedia/dataclient/restbase/RbDefinition$Usage;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 146
    array-length v3, v2

    if-nez v3, :cond_0

    goto :goto_1

    .line 150
    :cond_0
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    const v7, 0x7f0c0094

    .line 151
    iget-object v8, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->rootView:Landroid/view/View;

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v0, v7, v8, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 152
    invoke-direct {p0, v6, v7, v0}, Lorg/wikipedia/wiktionary/WiktionaryDialog;->layOutUsage(Lorg/wikipedia/dataclient/restbase/RbDefinition$Usage;Landroid/view/View;Landroid/view/LayoutInflater;)V

    .line 153
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 147
    :cond_2
    :goto_1
    invoke-direct {p0}, Lorg/wikipedia/wiktionary/WiktionaryDialog;->displayNoDefinitionsFound()V

    return-void
.end method

.method private layOutUsage(Lorg/wikipedia/dataclient/restbase/RbDefinition$Usage;Landroid/view/View;Landroid/view/LayoutInflater;)V
    .locals 4

    const v0, 0x7f0904d2

    .line 158
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 159
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/restbase/RbDefinition$Usage;->getPartOfSpeech()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090208

    .line 160
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 162
    :goto_0
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/restbase/RbDefinition$Usage;->getDefinitions()[Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const v2, 0x7f0c0093

    .line 163
    iget-object v3, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->rootView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p3, v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 164
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/restbase/RbDefinition$Usage;->getDefinitions()[Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition;

    move-result-object v3

    aget-object v3, v3, v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v3, v2, p3, v1}, Lorg/wikipedia/wiktionary/WiktionaryDialog;->layOutDefinitionWithExamples(Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition;Landroid/view/View;Landroid/view/LayoutInflater;I)V

    .line 165
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private layoutExamples([Ljava/lang/String;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;)V
    .locals 6

    .line 186
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    const v4, 0x7f0c0095

    .line 187
    iget-object v5, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->rootView:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {p3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/wikipedia/views/AppTextView;

    .line 188
    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v3, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->linkMovementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 190
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadDefinitions()V
    .locals 4

    .line 115
    iget-object v0, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->selectedText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, Lorg/wikipedia/wiktionary/WiktionaryDialog;->displayNoDefinitionsFound()V

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v1, Lorg/wikipedia/dataclient/WikiSite;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/dataclient/WikiSite;->subdomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".wiktionary.org"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->selectedText:Ljava/lang/String;

    invoke-static {v2}, Lorg/wikipedia/util/StringUtil;->addUnderscores(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/wikipedia/dataclient/RestService;->getDefinition(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 122
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 123
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/wiktionary/-$$Lambda$KsBycr6m83PJBHIPLxBDiK8nv_o;->INSTANCE:Lorg/wikipedia/wiktionary/-$$Lambda$KsBycr6m83PJBHIPLxBDiK8nv_o;

    .line 124
    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/wiktionary/-$$Lambda$WiktionaryDialog$qilQ0PTOWP8wkTBRozP-qJ2woo0;

    invoke-direct {v2, p0}, Lorg/wikipedia/wiktionary/-$$Lambda$WiktionaryDialog$qilQ0PTOWP8wkTBRozP-qJ2woo0;-><init>(Lorg/wikipedia/wiktionary/WiktionaryDialog;)V

    new-instance v3, Lorg/wikipedia/wiktionary/-$$Lambda$WiktionaryDialog$LBTCHRIQv2G9yjJH3AF0i5SB0bw;

    invoke-direct {v3, p0}, Lorg/wikipedia/wiktionary/-$$Lambda$WiktionaryDialog$LBTCHRIQv2G9yjJH3AF0i5SB0bw;-><init>(Lorg/wikipedia/wiktionary/WiktionaryDialog;)V

    .line 125
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public static newInstance(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)Lorg/wikipedia/wiktionary/WiktionaryDialog;
    .locals 3

    .line 66
    new-instance v0, Lorg/wikipedia/wiktionary/WiktionaryDialog;

    invoke-direct {v0}, Lorg/wikipedia/wiktionary/WiktionaryDialog;-><init>()V

    .line 67
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    .line 68
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "selected_text"

    .line 69
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private removeLinkFragment(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "#"

    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 210
    aget-object v1, p1, v0

    sget-object v2, Lorg/wikipedia/wiktionary/WiktionaryDialog;->GLOSSARY_OF_TERMS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    aget-object p1, p1, v2

    goto :goto_0

    :cond_0
    aget-object p1, p1, v0

    :goto_0
    return-object p1
.end method

.method private sanitizeForDialogTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 221
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->hasSectionAnchor(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->removeSectionAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 224
    :cond_0
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->removeUnderscores(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private showNewDialogForLink(Ljava/lang/String;)V
    .locals 1

    .line 214
    invoke-direct {p0}, Lorg/wikipedia/wiktionary/WiktionaryDialog;->callback()Lorg/wikipedia/wiktionary/WiktionaryDialog$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0, p1}, Lorg/wikipedia/wiktionary/WiktionaryDialog;->getTermFromWikiLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/wikipedia/wiktionary/WiktionaryDialog$Callback;->wiktionaryShowDialogForTerm(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$loadDefinitions$0$WiktionaryDialog(Lorg/wikipedia/dataclient/restbase/RbDefinition;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 127
    iput-object p1, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->currentDefinition:Lorg/wikipedia/dataclient/restbase/RbDefinition;

    .line 128
    invoke-direct {p0}, Lorg/wikipedia/wiktionary/WiktionaryDialog;->layOutDefinitionsByUsage()V

    return-void
.end method

.method public synthetic lambda$loadDefinitions$1$WiktionaryDialog(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Lorg/wikipedia/wiktionary/WiktionaryDialog;->displayNoDefinitionsFound()V

    .line 131
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic lambda$new$2$WiktionaryDialog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "/wiki/"

    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "./"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 198
    invoke-direct {p0, p1}, Lorg/wikipedia/wiktionary/WiktionaryDialog;->showNewDialogForLink(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/page/PageTitle;

    iput-object p1, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "selected_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->selectedText:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p3, 0x7f0c0047

    .line 94
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->rootView:Landroid/view/View;

    const p2, 0x7f090106

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->progressBar:Landroid/widget/ProgressBar;

    .line 97
    iget-object p1, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->rootView:Landroid/view/View;

    const p2, 0x7f0904ce

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 98
    iget-object p2, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->selectedText:Ljava/lang/String;

    invoke-direct {p0, p2}, Lorg/wikipedia/wiktionary/WiktionaryDialog;->sanitizeForDialogTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->rootView:Landroid/view/View;

    iget-object p2, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/wikipedia/util/L10nUtil;->setConditionalLayoutDirection(Landroid/view/View;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lorg/wikipedia/wiktionary/WiktionaryDialog;->loadDefinitions()V

    .line 103
    new-instance p1, Lorg/wikipedia/analytics/WiktionaryDialogFunnel;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p2

    iget-object p3, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->selectedText:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lorg/wikipedia/analytics/WiktionaryDialogFunnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->funnel:Lorg/wikipedia/analytics/WiktionaryDialogFunnel;

    .line 105
    iget-object p1, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 88
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 111
    iget-object p1, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->funnel:Lorg/wikipedia/analytics/WiktionaryDialogFunnel;

    invoke-virtual {p1}, Lorg/wikipedia/analytics/WiktionaryDialogFunnel;->logClose()V

    return-void
.end method
