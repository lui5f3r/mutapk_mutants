.class public Lde/mrapp/android/tabswitcher/model/TabItem;
.super Lde/mrapp/android/tabswitcher/model/AbstractItem;
.source "TabItem.java"


# instance fields
.field private final tab:Lde/mrapp/android/tabswitcher/Tab;

.field private viewHolder:Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;


# direct methods
.method private constructor <init>(ILde/mrapp/android/tabswitcher/Tab;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;-><init>(I)V

    .line 56
    sget-object p1, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v0, "The tab may not be null"

    invoke-virtual {p1, p2, v0}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p2, p0, Lde/mrapp/android/tabswitcher/model/TabItem;->tab:Lde/mrapp/android/tabswitcher/Tab;

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabItem;->viewHolder:Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;

    return-void
.end method

.method public static create(Lde/mrapp/android/tabswitcher/model/Model;ILde/mrapp/android/tabswitcher/Tab;)Lde/mrapp/android/tabswitcher/model/TabItem;
    .locals 1

    .line 77
    new-instance v0, Lde/mrapp/android/tabswitcher/model/TabItem;

    invoke-interface {p0}, Lde/mrapp/android/tabswitcher/model/Model;->isAddTabButtonShown()Z

    move-result p0

    add-int/2addr p1, p0

    invoke-direct {v0, p1, p2}, Lde/mrapp/android/tabswitcher/model/TabItem;-><init>(ILde/mrapp/android/tabswitcher/Tab;)V

    return-object v0
.end method

.method public static create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/tabswitcher/model/Model;",
            "Lde/mrapp/android/util/view/AttachedViewRecycler<",
            "Lde/mrapp/android/tabswitcher/model/AbstractItem;",
            "*>;I)",
            "Lde/mrapp/android/tabswitcher/model/TabItem;"
        }
    .end annotation

    .line 99
    invoke-interface {p0, p2}, Lde/mrapp/android/tabswitcher/model/Model;->getTab(I)Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    .line 100
    invoke-static {p0, p1, p2, v0}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;ILde/mrapp/android/tabswitcher/Tab;)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;ILde/mrapp/android/tabswitcher/Tab;)Lde/mrapp/android/tabswitcher/model/TabItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/tabswitcher/model/Model;",
            "Lde/mrapp/android/util/view/AttachedViewRecycler<",
            "Lde/mrapp/android/tabswitcher/model/AbstractItem;",
            "*>;I",
            "Lde/mrapp/android/tabswitcher/Tab;",
            ")",
            "Lde/mrapp/android/tabswitcher/model/TabItem;"
        }
    .end annotation

    .line 124
    new-instance v0, Lde/mrapp/android/tabswitcher/model/TabItem;

    invoke-interface {p0}, Lde/mrapp/android/tabswitcher/model/Model;->isAddTabButtonShown()Z

    move-result p0

    add-int/2addr p2, p0

    invoke-direct {v0, p2, p3}, Lde/mrapp/android/tabswitcher/model/TabItem;-><init>(ILde/mrapp/android/tabswitcher/Tab;)V

    .line 125
    invoke-virtual {p1, v0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 128
    invoke-virtual {v0, p0}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->setView(Landroid/view/View;)V

    .line 129
    sget p1, Lde/mrapp/android/tabswitcher/R$id;->tag_view_holder:I

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;

    invoke-virtual {v0, p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->setViewHolder(Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;)V

    .line 130
    sget p1, Lde/mrapp/android/tabswitcher/R$id;->tag_properties:I

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lde/mrapp/android/tabswitcher/model/Tag;

    if-eqz p0, :cond_0

    .line 133
    invoke-virtual {v0, p0}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->setTag(Lde/mrapp/android/tabswitcher/model/Tag;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 193
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lde/mrapp/android/tabswitcher/model/TabItem;

    if-eq v1, v2, :cond_1

    return v0

    .line 195
    :cond_1
    check-cast p1, Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 196
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabItem;->tab:Lde/mrapp/android/tabswitcher/Tab;

    iget-object p1, p1, Lde/mrapp/android/tabswitcher/model/TabItem;->tab:Lde/mrapp/android/tabswitcher/Tab;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getTab()Lde/mrapp/android/tabswitcher/Tab;
    .locals 1

    .line 147
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabItem;->tab:Lde/mrapp/android/tabswitcher/Tab;

    return-object v0
.end method

.method public final getViewHolder()Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;
    .locals 1

    .line 157
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabItem;->viewHolder:Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 185
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabItem;->tab:Lde/mrapp/android/tabswitcher/Tab;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final isInflated()Z
    .locals 1

    .line 173
    invoke-super {p0}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->isInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabItem;->viewHolder:Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setViewHolder(Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabItem;->viewHolder:Lde/mrapp/android/tabswitcher/layout/AbstractTabViewHolder;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TabItem [index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
