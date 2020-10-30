.class public Lorg/wikipedia/feed/configure/LanguageItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LanguageItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/wikipedia/feed/configure/LanguageItemHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private contentType:Lorg/wikipedia/feed/FeedContentType;

.field private context:Landroid/content/Context;

.field private langList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/wikipedia/feed/FeedContentType;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/feed/configure/LanguageItemAdapter;->langList:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lorg/wikipedia/feed/configure/LanguageItemAdapter;->context:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lorg/wikipedia/feed/configure/LanguageItemAdapter;->contentType:Lorg/wikipedia/feed/FeedContentType;

    .line 28
    invoke-virtual {p2}, Lorg/wikipedia/feed/FeedContentType;->getLangCodesSupported()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 30
    iget-object p1, p0, Lorg/wikipedia/feed/configure/LanguageItemAdapter;->langList:Ljava/util/List;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 33
    :cond_0
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 34
    invoke-virtual {p2}, Lorg/wikipedia/feed/FeedContentType;->getLangCodesSupported()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    iget-object v1, p0, Lorg/wikipedia/feed/configure/LanguageItemAdapter;->langList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/wikipedia/feed/configure/LanguageItemAdapter;->langList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLangList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/wikipedia/feed/configure/LanguageItemAdapter;->langList:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Lorg/wikipedia/feed/configure/LanguageItemHolder;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/configure/LanguageItemAdapter;->onBindViewHolder(Lorg/wikipedia/feed/configure/LanguageItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/wikipedia/feed/configure/LanguageItemHolder;I)V
    .locals 3

    .line 63
    iget-object v0, p0, Lorg/wikipedia/feed/configure/LanguageItemAdapter;->langList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/wikipedia/feed/configure/LanguageItemAdapter;->contentType:Lorg/wikipedia/feed/FeedContentType;

    invoke-virtual {v1}, Lorg/wikipedia/feed/FeedContentType;->getLangCodesDisabled()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/feed/configure/LanguageItemAdapter;->langList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, v0, p2}, Lorg/wikipedia/feed/configure/LanguageItemHolder;->bindItem(Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/configure/LanguageItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/feed/configure/LanguageItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/feed/configure/LanguageItemHolder;
    .locals 1

    .line 53
    iget-object p1, p0, Lorg/wikipedia/feed/configure/LanguageItemAdapter;->context:Landroid/content/Context;

    const p2, 0x7f0c007b

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 54
    new-instance p2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 55
    invoke-static {v0}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 56
    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    new-instance p2, Lorg/wikipedia/feed/configure/LanguageItemHolder;

    iget-object v0, p0, Lorg/wikipedia/feed/configure/LanguageItemAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lorg/wikipedia/feed/configure/LanguageItemHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object p2
.end method
