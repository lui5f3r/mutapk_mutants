.class public Lde/mrapp/android/tabswitcher/model/AddTabItem;
.super Lde/mrapp/android/tabswitcher/model/AbstractItem;
.source "AddTabItem.java"


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;-><init>(I)V

    return-void
.end method

.method public static create(Lde/mrapp/android/util/view/AttachedViewRecycler;)Lde/mrapp/android/tabswitcher/model/AddTabItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/util/view/AttachedViewRecycler<",
            "Lde/mrapp/android/tabswitcher/model/AbstractItem;",
            "*>;)",
            "Lde/mrapp/android/tabswitcher/model/AddTabItem;"
        }
    .end annotation

    .line 58
    new-instance v0, Lde/mrapp/android/tabswitcher/model/AddTabItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lde/mrapp/android/tabswitcher/model/AddTabItem;-><init>(I)V

    .line 59
    invoke-virtual {p0, v0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 62
    invoke-virtual {v0, p0}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->setView(Landroid/view/View;)V

    .line 63
    sget v1, Lde/mrapp/android/tabswitcher/R$id;->tag_properties:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lde/mrapp/android/tabswitcher/model/Tag;

    if-eqz p0, :cond_0

    .line 66
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

    .line 90
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lde/mrapp/android/tabswitcher/model/AddTabItem;

    if-eq v1, v2, :cond_1

    return v0

    .line 92
    :cond_1
    check-cast p1, Lde/mrapp/android/tabswitcher/model/AddTabItem;

    .line 93
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result p1

    if-ne v1, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 82
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddTabItem [index = "

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
