.class public Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;
.super Landroidx/fragment/app/Fragment;
.source "WikipediaLanguagesFragment.java"

# interfaces
.implements Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$MultiSelectCallback;,
        Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$FooterViewHolder;,
        Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemHolder;,
        Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$HeaderViewHolder;,
        Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$RearrangeableItemTouchHelperCallback;,
        Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;
    }
.end annotation


# static fields
.field public static final ACTIVITY_RESULT_LANG_POSITION_DATA:Ljava/lang/String; = "activity_result_lang_position_data"

.field public static final ADD_LANGUAGE_INTERACTIONS:Ljava/lang/String; = "add_language_interactions"

.field private static final NUM_FOOTERS:I = 0x1

.field private static final NUM_HEADERS:I = 0x1

.field public static final SESSION_TOKEN:Ljava/lang/String; = "session_token"


# instance fields
.field private actionMode:Landroidx/appcompat/view/ActionMode;

.field private adapter:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

.field private app:Lorg/wikipedia/WikipediaApp;

.field private funnel:Lorg/wikipedia/analytics/AppLanguageSettingsFunnel;

.field private initialLanguageList:Ljava/lang/String;

.field private interactionsCount:I

.field private invokeSource:Ljava/lang/String;

.field private isLanguageSearched:Z

.field private itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private multiSelectCallback:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$MultiSelectCallback;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private selectedCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unbinder:Lbutterknife/Unbinder;

.field private wikipediaLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->wikipediaLanguages:Ljava/util/List;

    .line 60
    new-instance v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$MultiSelectCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$MultiSelectCallback;-><init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$1;)V

    iput-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->multiSelectCallback:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$MultiSelectCallback;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->selectedCodes:Ljava/util/List;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->isLanguageSearched:Z

    return-void
.end method

.method static synthetic access$1000(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->adapter:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->wantResultFromItemClick()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->updateWikipediaLanguages()V

    return-void
.end method

.method static synthetic access$1300(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)Lorg/wikipedia/WikipediaApp;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->app:Lorg/wikipedia/WikipediaApp;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->unselectAllLanguages()V

    return-void
.end method

.method static synthetic access$1500(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->setMultiSelectEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->wikipediaLanguages:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->selectedCodes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)Lorg/wikipedia/analytics/AppLanguageSettingsFunnel;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->funnel:Lorg/wikipedia/analytics/AppLanguageSettingsFunnel;

    return-object p0
.end method

.method static synthetic access$500(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->finishActionMode()V

    return-void
.end method

.method static synthetic access$608(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)I
    .locals 2

    .line 48
    iget v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->interactionsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->interactionsCount:I

    return v0
.end method

.method static synthetic access$700(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method static synthetic access$800(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)Landroidx/appcompat/view/ActionMode;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    return-object p0
.end method

.method static synthetic access$802(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/ActionMode;
    .locals 0

    .line 48
    iput-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$900(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->toggleSelectedLanguage(Ljava/lang/String;)V

    return-void
.end method

.method private beginRemoveLanguageMode()V
    .locals 2

    .line 376
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    iget-object v1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->multiSelectCallback:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$MultiSelectCallback;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    const/4 v0, 0x1

    .line 377
    invoke-direct {p0, v0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->setMultiSelectEnabled(Z)V

    return-void
.end method

.method private deleteSelectedLanguages()V
    .locals 2

    .line 394
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->selectedCodes:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/wikipedia/language/AppLanguageState;->removeAppLanguageCodes(Ljava/util/List;)V

    .line 395
    iget v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->interactionsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->interactionsCount:I

    .line 396
    invoke-direct {p0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->prepareWikipediaLanguagesList()V

    .line 397
    invoke-direct {p0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->unselectAllLanguages()V

    return-void
.end method

.method private finishActionMode()V
    .locals 1

    .line 370
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;
    .locals 3

    .line 71
    new-instance v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-direct {v0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;-><init>()V

    .line 72
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "invokeSource"

    .line 73
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private prepareWikipediaLanguagesList()V
    .locals 2

    .line 141
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->wikipediaLanguages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 142
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->wikipediaLanguages:Ljava/util/List;

    iget-object v1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private setMultiSelectEnabled(Z)V
    .locals 1

    .line 364
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->adapter:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    invoke-virtual {v0, p1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->onCheckboxEnabled(Z)V

    .line 365
    iget-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->adapter:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 366
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method private setupRecyclerView()V
    .locals 3

    .line 146
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 147
    new-instance v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;-><init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$1;)V

    iput-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->adapter:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    .line 148
    iget-object v1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 149
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 151
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$RearrangeableItemTouchHelperCallback;

    iget-object v2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->adapter:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    invoke-direct {v1, p0, v2}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$RearrangeableItemTouchHelperCallback;-><init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 152
    iget-object v1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private toggleSelectedLanguage(Ljava/lang/String;)V
    .locals 1

    .line 381
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->selectedCodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->selectedCodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 384
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->selectedCodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private unselectAllLanguages()V
    .locals 1

    .line 389
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->selectedCodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 390
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->adapter:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateWikipediaLanguages()V
    .locals 2

    .line 170
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->wikipediaLanguages:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/wikipedia/language/AppLanguageState;->setAppLanguageCodes(Ljava/util/List;)V

    .line 171
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->adapter:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method private wantResultFromItemClick()Z
    .locals 2

    .line 358
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "invokeSource"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 359
    :goto_0
    sget-object v1, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->SEARCH:Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    invoke-virtual {v1}, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->TALK_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 360
    invoke-virtual {v1}, Lorg/wikipedia/Constants$InvokeSource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method


# virtual methods
.method public synthetic lambda$showRemoveLanguagesDialog$0$WikipediaLanguagesFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 435
    invoke-direct {p0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->deleteSelectedLanguages()V

    .line 436
    invoke-direct {p0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->finishActionMode()V

    .line 437
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 95
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 100
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3b

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 103
    iget p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->interactionsCount:I

    const-string p2, "add_language_interactions"

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->interactionsCount:I

    .line 104
    iget-boolean p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->isLanguageSearched:Z

    if-nez p1, :cond_0

    const-string p1, "language_searched"

    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->isLanguageSearched:Z

    .line 105
    invoke-direct {p0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->prepareWikipediaLanguagesList()V

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 107
    iget-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->adapter:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public onCheckedChanged(I)V
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->wikipediaLanguages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->toggleSelectedLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0d0018

    .line 122
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 123
    iget-object p2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    const/4 p2, 0x0

    .line 124
    invoke-interface {p1, p2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 125
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c006a

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 81
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p3, "invokeSource"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->invokeSource:Ljava/lang/String;

    .line 83
    iget-object p2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lorg/wikipedia/util/StringUtil;->listToJsonArrayString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->initialLanguageList:Ljava/lang/String;

    .line 84
    new-instance p2, Lorg/wikipedia/analytics/AppLanguageSettingsFunnel;

    invoke-direct {p2}, Lorg/wikipedia/analytics/AppLanguageSettingsFunnel;-><init>()V

    iput-object p2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->funnel:Lorg/wikipedia/analytics/AppLanguageSettingsFunnel;

    .line 85
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->unbinder:Lbutterknife/Unbinder;

    .line 87
    invoke-direct {p0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->prepareWikipediaLanguagesList()V

    .line 88
    invoke-direct {p0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->setupRecyclerView()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 6

    .line 113
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->funnel:Lorg/wikipedia/analytics/AppLanguageSettingsFunnel;

    iget-object v1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->invokeSource:Ljava/lang/String;

    iget-object v2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->initialLanguageList:Ljava/lang/String;

    iget-object v3, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->listToJsonArrayString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->interactionsCount:I

    iget-boolean v5, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->isLanguageSearched:Z

    invoke-virtual/range {v0 .. v5}, Lorg/wikipedia/analytics/AppLanguageSettingsFunnel;->logLanguageSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 114
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 115
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 116
    iput-object v1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->unbinder:Lbutterknife/Unbinder;

    .line 117
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onLongPress(I)V
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    if-nez v0, :cond_0

    .line 163
    invoke-direct {p0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->beginRemoveLanguageMode()V

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->wikipediaLanguages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->toggleSelectedLanguage(Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->adapter:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 131
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090259

    if-eq v0, v1, :cond_0

    .line 136
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 133
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->beginRemoveLanguageMode()V

    const/4 p1, 0x1

    return p1
.end method

.method public showRemoveLanguagesDialog()V
    .locals 5

    .line 428
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->selectedCodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 429
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 430
    iget-object v1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->selectedCodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->wikipediaLanguages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 432
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f001d

    iget-object v4, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->selectedCodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f10047c

    .line 433
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f100375

    new-instance v2, Lorg/wikipedia/settings/languages/-$$Lambda$WikipediaLanguagesFragment$Yqcey_Veh140wadeUnkd-Ok-FhU;

    invoke-direct {v2, p0}, Lorg/wikipedia/settings/languages/-$$Lambda$WikipediaLanguagesFragment$Yqcey_Veh140wadeUnkd-Ok-FhU;-><init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)V

    .line 434
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f100374

    .line 439
    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    :cond_0
    const v1, 0x7f100480

    .line 442
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f10047f

    .line 443
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f100373

    .line 444
    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 446
    :goto_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_1
    return-void
.end method
