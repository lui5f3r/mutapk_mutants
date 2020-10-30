.class public Lde/mrapp/android/tabswitcher/model/ItemComparator;
.super Ljava/lang/Object;
.source "ItemComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lde/mrapp/android/tabswitcher/model/AbstractItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;


# direct methods
.method public constructor <init>(Lde/mrapp/android/tabswitcher/TabSwitcher;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tab switcher may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/ItemComparator;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    return-void
.end method


# virtual methods
.method public compare(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/model/AbstractItem;)I
    .locals 10

    .line 62
    instance-of v0, p1, Lde/mrapp/android/tabswitcher/model/AddTabItem;

    if-eqz v0, :cond_0

    instance-of v1, p2, Lde/mrapp/android/tabswitcher/model/AddTabItem;

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, -0x1

    if-eqz v0, :cond_1

    return v1

    .line 66
    :cond_1
    instance-of v0, p2, Lde/mrapp/android/tabswitcher/model/AddTabItem;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    return v2

    .line 68
    :cond_2
    instance-of v0, p1, Lde/mrapp/android/tabswitcher/model/TabItem;

    if-eqz v0, :cond_6

    instance-of v0, p2, Lde/mrapp/android/tabswitcher/model/TabItem;

    if-eqz v0, :cond_6

    .line 69
    check-cast p1, Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 70
    check-cast p2, Lde/mrapp/android/tabswitcher/model/TabItem;

    .line 71
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    .line 72
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v3

    .line 73
    iget-object v4, p0, Lde/mrapp/android/tabswitcher/model/ItemComparator;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {v4, v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->indexOf(Lde/mrapp/android/tabswitcher/Tab;)I

    move-result v4

    if-ne v4, v1, :cond_3

    .line 74
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v4

    .line 75
    :cond_3
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/model/ItemComparator;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {p1, v3}, Lde/mrapp/android/tabswitcher/TabSwitcher;->indexOf(Lde/mrapp/android/tabswitcher/Tab;)I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 76
    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result p1

    .line 77
    :cond_4
    sget-object p2, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    .line 78
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Tab "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not contained by tab switcher"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-class v9, Ljava/lang/RuntimeException;

    invoke-virtual {p2, v5, v6, v7, v9}, Lde/mrapp/util/Condition;->ensureNotEqual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 80
    sget-object p2, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v3, Ljava/lang/RuntimeException;

    invoke-virtual {p2, v5, v6, v0, v3}, Lde/mrapp/util/Condition;->ensureNotEqual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    if-ge v4, p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 85
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unknown item types"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lde/mrapp/android/tabswitcher/model/AbstractItem;

    check-cast p2, Lde/mrapp/android/tabswitcher/model/AbstractItem;

    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/tabswitcher/model/ItemComparator;->compare(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/model/AbstractItem;)I

    move-result p1

    return p1
.end method
