.class final Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LanguagesListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/language/LanguagesListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LanguagesListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/wikipedia/language/LanguagesListActivity$DefaultViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_HEADER:I = 0x0

.field private static final VIEW_TYPE_ITEM:I = 0x1


# instance fields
.field private isSearching:Z

.field private final languageCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final originalLanguageCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final suggestedLanguageCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/wikipedia/language/LanguagesListActivity;


# direct methods
.method private constructor <init>(Lorg/wikipedia/language/LanguagesListActivity;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 171
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->languageCodes:Ljava/util/List;

    .line 175
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->originalLanguageCodes:Ljava/util/List;

    .line 176
    iput-object p3, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->suggestedLanguageCodes:Ljava/util/List;

    .line 177
    invoke-virtual {p0}, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->reset()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/language/LanguagesListActivity;Ljava/util/List;Ljava/util/List;Lorg/wikipedia/language/LanguagesListActivity$1;)V
    .locals 0

    .line 164
    invoke-direct {p0, p1, p2, p3}, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;-><init>(Lorg/wikipedia/language/LanguagesListActivity;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private getNonDuplicateLanguageCodesList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->originalLanguageCodes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 265
    iget-object v1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    invoke-static {v1}, Lorg/wikipedia/language/LanguagesListActivity;->access$500(Lorg/wikipedia/language/LanguagesListActivity;)Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 266
    iget-object v1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->suggestedLanguageCodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->languageCodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 182
    invoke-virtual {p0, p1}, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->shouldShowSectionHeader(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public synthetic lambda$onBindViewHolder$0$LanguagesListActivity$LanguagesListAdapter(ILandroid/view/View;)V
    .locals 2

    .line 210
    iget-object p2, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->languageCodes:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 211
    iget-object p2, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    invoke-static {p2}, Lorg/wikipedia/language/LanguagesListActivity;->access$500(Lorg/wikipedia/language/LanguagesListActivity;)Lorg/wikipedia/WikipediaApp;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 212
    iget-object p2, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    invoke-static {p2}, Lorg/wikipedia/language/LanguagesListActivity;->access$500(Lorg/wikipedia/language/LanguagesListActivity;)Lorg/wikipedia/WikipediaApp;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/wikipedia/language/AppLanguageState;->addAppLanguageCode(Ljava/lang/String;)V

    .line 214
    :cond_0
    iget-object p2, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    invoke-static {p2}, Lorg/wikipedia/language/LanguagesListActivity;->access$708(Lorg/wikipedia/language/LanguagesListActivity;)I

    .line 215
    iget-object p2, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    invoke-static {p2}, Lorg/wikipedia/language/LanguagesListActivity;->access$800(Lorg/wikipedia/language/LanguagesListActivity;)Lorg/wikipedia/analytics/AppLanguageSearchingFunnel;

    move-result-object p2

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    invoke-static {v1}, Lorg/wikipedia/language/LanguagesListActivity;->access$200(Lorg/wikipedia/language/LanguagesListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lorg/wikipedia/analytics/AppLanguageSearchingFunnel;->logLanguageAdded(ZLjava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object p1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    invoke-static {p1}, Lorg/wikipedia/util/DeviceUtil;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 217
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 218
    iget-object p2, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    invoke-static {p2}, Lorg/wikipedia/language/LanguagesListActivity;->access$700(Lorg/wikipedia/language/LanguagesListActivity;)I

    move-result p2

    const-string v0, "add_language_interactions"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    iget-object p2, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    invoke-static {p2}, Lorg/wikipedia/language/LanguagesListActivity;->access$300(Lorg/wikipedia/language/LanguagesListActivity;)Z

    move-result p2

    const-string v0, "language_searched"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 220
    iget-object p2, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 221
    iget-object p1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 163
    check-cast p1, Lorg/wikipedia/language/LanguagesListActivity$DefaultViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->onBindViewHolder(Lorg/wikipedia/language/LanguagesListActivity$DefaultViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/wikipedia/language/LanguagesListActivity$DefaultViewHolder;I)V
    .locals 1

    .line 207
    invoke-virtual {p1, p2}, Lorg/wikipedia/language/LanguagesListActivity$DefaultViewHolder;->bindItem(I)V

    .line 208
    instance-of v0, p1, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListItemHolder;

    if-eqz v0, :cond_0

    .line 209
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lorg/wikipedia/language/-$$Lambda$LanguagesListActivity$LanguagesListAdapter$_t8E3lnHjZuqG5PBdocd-RJmGGg;

    invoke-direct {v0, p0, p2}, Lorg/wikipedia/language/-$$Lambda$LanguagesListActivity$LanguagesListAdapter$_t8E3lnHjZuqG5PBdocd-RJmGGg;-><init>(Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 163
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/language/LanguagesListActivity$DefaultViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/language/LanguagesListActivity$DefaultViewHolder;
    .locals 2

    .line 193
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 194
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const p2, 0x7f0c011e

    .line 197
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 198
    new-instance p2, Lorg/wikipedia/language/LanguagesListActivity$DefaultViewHolder;

    iget-object v0, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    iget-object v1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->languageCodes:Ljava/util/List;

    invoke-direct {p2, v0, v1, p1}, Lorg/wikipedia/language/LanguagesListActivity$DefaultViewHolder;-><init>(Lorg/wikipedia/language/LanguagesListActivity;Ljava/util/List;Landroid/view/View;)V

    return-object p2

    :cond_0
    const p2, 0x7f0c0080

    .line 200
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 201
    new-instance p2, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListItemHolder;

    iget-object v0, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    iget-object v1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->languageCodes:Ljava/util/List;

    invoke-direct {p2, v0, v1, p1}, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListItemHolder;-><init>(Lorg/wikipedia/language/LanguagesListActivity;Ljava/util/List;Landroid/view/View;)V

    return-object p2
.end method

.method reset()V
    .locals 3

    const/4 v0, 0x0

    .line 249
    iput-boolean v0, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->isSearching:Z

    .line 250
    iget-object v0, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->languageCodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 251
    iget-object v0, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->suggestedLanguageCodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 252
    iget-object v0, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->languageCodes:Ljava/util/List;

    iget-object v1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    const v2, 0x7f100163

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v0, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->languageCodes:Ljava/util/List;

    iget-object v1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->suggestedLanguageCodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 255
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->languageCodes:Ljava/util/List;

    iget-object v1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    const v2, 0x7f100162

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v0, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->languageCodes:Ljava/util/List;

    invoke-direct {p0}, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->getNonDuplicateLanguageCodesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 258
    iget-object v0, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->originalLanguageCodes:Ljava/util/List;

    iget-object v1, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    invoke-static {v1}, Lorg/wikipedia/language/LanguagesListActivity;->access$500(Lorg/wikipedia/language/LanguagesListActivity;)Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 259
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method setFilterText(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    .line 233
    iput-boolean v0, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->isSearching:Z

    .line 234
    iget-object v0, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->languageCodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 235
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->stripAccents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 236
    iget-object v0, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->originalLanguageCodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 237
    iget-object v2, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    invoke-static {v2}, Lorg/wikipedia/language/LanguagesListActivity;->access$500(Lorg/wikipedia/language/LanguagesListActivity;)Lorg/wikipedia/WikipediaApp;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->stripAccents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    iget-object v3, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    invoke-static {v3, v1}, Lorg/wikipedia/language/LanguagesListActivity;->access$600(Lorg/wikipedia/language/LanguagesListActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->stripAccents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 239
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 240
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 241
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    :cond_1
    iget-object v2, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->languageCodes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method shouldShowSectionHeader(I)Z
    .locals 2

    .line 227
    iget-boolean v0, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->isSearching:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->suggestedLanguageCodes:Ljava/util/List;

    .line 228
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/language/LanguagesListActivity$LanguagesListAdapter;->suggestedLanguageCodes:Ljava/util/List;

    .line 229
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
