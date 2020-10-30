.class final Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LangLinksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/language/LangLinksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LangLinksAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/wikipedia/language/LangLinksActivity$DefaultViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_HEADER:I = 0x0

.field private static final VIEW_TYPE_ITEM:I = 0x1


# instance fields
.field private final appLanguageEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/page/PageTitle;",
            ">;"
        }
    .end annotation
.end field

.field private isSearching:Z

.field private final languageEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/page/PageTitle;",
            ">;"
        }
    .end annotation
.end field

.field private final originalLanguageEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/page/PageTitle;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/wikipedia/language/LangLinksActivity;


# direct methods
.method private constructor <init>(Lorg/wikipedia/language/LangLinksActivity;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/PageTitle;",
            ">;",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/PageTitle;",
            ">;)V"
        }
    .end annotation

    .line 310
    iput-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 307
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->languageEntries:Ljava/util/List;

    .line 311
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->originalLanguageEntries:Ljava/util/List;

    .line 312
    iput-object p3, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->appLanguageEntries:Ljava/util/List;

    .line 313
    invoke-virtual {p0}, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->reset()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/language/LangLinksActivity;Ljava/util/List;Ljava/util/List;Lorg/wikipedia/language/LangLinksActivity$1;)V
    .locals 0

    .line 301
    invoke-direct {p0, p1, p2, p3}, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;-><init>(Lorg/wikipedia/language/LangLinksActivity;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private getNonDuplicateEntries()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/PageTitle;",
            ">;"
        }
    .end annotation

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->originalLanguageEntries:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 388
    iget-object v1, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->appLanguageEntries:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 323
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->languageEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 318
    invoke-virtual {p0, p1}, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->shouldShowSectionHeader(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 300
    check-cast p1, Lorg/wikipedia/language/LangLinksActivity$DefaultViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->onBindViewHolder(Lorg/wikipedia/language/LangLinksActivity$DefaultViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/wikipedia/language/LangLinksActivity$DefaultViewHolder;I)V
    .locals 0

    .line 343
    invoke-virtual {p1, p2}, Lorg/wikipedia/language/LangLinksActivity$DefaultViewHolder;->bindItem(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 300
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/language/LangLinksActivity$DefaultViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/language/LangLinksActivity$DefaultViewHolder;
    .locals 2

    .line 329
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 330
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const p2, 0x7f0c011e

    .line 333
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 334
    new-instance p2, Lorg/wikipedia/language/LangLinksActivity$DefaultViewHolder;

    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    iget-object v1, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->languageEntries:Ljava/util/List;

    invoke-direct {p2, v0, v1, p1}, Lorg/wikipedia/language/LangLinksActivity$DefaultViewHolder;-><init>(Lorg/wikipedia/language/LangLinksActivity;Ljava/util/List;Landroid/view/View;)V

    return-object p2

    :cond_0
    const p2, 0x7f0c007f

    .line 336
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 337
    new-instance p2, Lorg/wikipedia/language/LangLinksActivity$LangLinksItemViewHolder;

    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    iget-object v1, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->languageEntries:Ljava/util/List;

    invoke-direct {p2, v0, v1, p1}, Lorg/wikipedia/language/LangLinksActivity$LangLinksItemViewHolder;-><init>(Lorg/wikipedia/language/LangLinksActivity;Ljava/util/List;Landroid/view/View;)V

    return-object p2
.end method

.method reset()V
    .locals 5

    const/4 v0, 0x0

    .line 369
    iput-boolean v0, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->isSearching:Z

    .line 370
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->languageEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 371
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->appLanguageEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 372
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->languageEntries:Ljava/util/List;

    new-instance v1, Lorg/wikipedia/page/PageTitle;

    iget-object v2, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    const v3, 0x7f10015e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    invoke-static {v3}, Lorg/wikipedia/language/LangLinksActivity;->access$400(Lorg/wikipedia/language/LangLinksActivity;)Lorg/wikipedia/WikipediaApp;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->languageEntries:Ljava/util/List;

    iget-object v1, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->appLanguageEntries:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 376
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->getNonDuplicateEntries()Ljava/util/List;

    move-result-object v0

    .line 377
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 378
    iget-object v1, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->languageEntries:Ljava/util/List;

    new-instance v2, Lorg/wikipedia/page/PageTitle;

    iget-object v3, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    const v4, 0x7f100162

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    invoke-static {v4}, Lorg/wikipedia/language/LangLinksActivity;->access$400(Lorg/wikipedia/language/LangLinksActivity;)Lorg/wikipedia/WikipediaApp;

    move-result-object v4

    invoke-virtual {v4}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v1, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->languageEntries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 382
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method setFilterText(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    .line 353
    iput-boolean v0, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->isSearching:Z

    .line 354
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->languageEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 355
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 356
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->originalLanguageEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 357
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v2

    .line 358
    iget-object v3, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    invoke-static {v3}, Lorg/wikipedia/language/LangLinksActivity;->access$400(Lorg/wikipedia/language/LangLinksActivity;)Lorg/wikipedia/WikipediaApp;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 359
    iget-object v4, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    invoke-static {v4}, Lorg/wikipedia/language/LangLinksActivity;->access$400(Lorg/wikipedia/language/LangLinksActivity;)Lorg/wikipedia/WikipediaApp;

    move-result-object v4

    invoke-virtual {v4}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 360
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 361
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 362
    :cond_1
    iget-object v2, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->languageEntries:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 365
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method shouldShowSectionHeader(I)Z
    .locals 2

    .line 347
    iget-boolean v0, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->isSearching:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->appLanguageEntries:Ljava/util/List;

    .line 348
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity$LangLinksAdapter;->appLanguageEntries:Ljava/util/List;

    .line 349
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
