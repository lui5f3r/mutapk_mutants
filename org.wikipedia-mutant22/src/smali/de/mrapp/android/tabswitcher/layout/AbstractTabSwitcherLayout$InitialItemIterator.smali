.class public Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;
.super Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;
.source "AbstractTabSwitcherLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InitialItemIterator"
.end annotation


# instance fields
.field private final backingArray:[Lde/mrapp/android/tabswitcher/model/AbstractItem;

.field final synthetic this$0:Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;


# direct methods
.method private constructor <init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;[Lde/mrapp/android/tabswitcher/model/AbstractItem;ZI)V
    .locals 1

    .line 311
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;->this$0:Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;-><init>()V

    .line 312
    sget-object p1, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v0, "The backing array may not be null"

    invoke-virtual {p1, p2, v0}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;->backingArray:[Lde/mrapp/android/tabswitcher/model/AbstractItem;

    .line 314
    invoke-virtual {p0, p3, p4}, Lde/mrapp/android/tabswitcher/iterator/AbstractItemIterator;->initialize(ZI)V

    return-void
.end method

.method synthetic constructor <init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;[Lde/mrapp/android/tabswitcher/model/AbstractItem;ZILde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$1;)V
    .locals 0

    .line 250
    invoke-direct {p0, p1, p2, p3, p4}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;-><init>(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;[Lde/mrapp/android/tabswitcher/model/AbstractItem;ZI)V

    return-void
.end method

.method private calculateAndClipStartPosition(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/model/AbstractItem;)V
    .locals 3

    .line 270
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;->calculateStartPosition(Lde/mrapp/android/tabswitcher/model/AbstractItem;)F

    move-result v0

    .line 271
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;->this$0:Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2, v0, p2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->clipPosition(IFLde/mrapp/android/tabswitcher/model/AbstractItem;)Landroidx/core/util/Pair;

    move-result-object p2

    .line 272
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object v0

    iget-object v1, p2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/tabswitcher/model/Tag;->setPosition(F)V

    .line 273
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    move-result-object p1

    iget-object p2, p2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lde/mrapp/android/tabswitcher/model/State;

    invoke-virtual {p1, p2}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    return-void
.end method

.method private calculateStartPosition(Lde/mrapp/android/tabswitcher/model/AbstractItem;)F
    .locals 1

    .line 285
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/AbstractItem;->getIndex()I

    move-result p1

    if-nez p1, :cond_1

    .line 286
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;->getCount()I

    move-result p1

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;->this$0:Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getStackedTabCount()I

    move-result v0

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;->this$0:Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;

    .line 287
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getStackedTabCount()I

    move-result p1

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;->this$0:Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;

    invoke-static {v0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->access$300(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;)I

    move-result v0

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;->this$0:Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;

    invoke-static {v0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->access$300(Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;)I

    move-result v0

    :goto_0
    mul-int p1, p1, v0

    int-to-float p1, p1

    return p1

    :cond_1
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 319
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;->backingArray:[Lde/mrapp/android/tabswitcher/model/AbstractItem;

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Lde/mrapp/android/tabswitcher/model/AbstractItem;
    .locals 3

    .line 325
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;->backingArray:[Lde/mrapp/android/tabswitcher/model/AbstractItem;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    .line 328
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;->this$0:Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isAddTabButtonShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;->this$0:Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabViewRecycler()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v0

    invoke-static {v0}, Lde/mrapp/android/tabswitcher/model/AddTabItem;->create(Lde/mrapp/android/util/view/AttachedViewRecycler;)Lde/mrapp/android/tabswitcher/model/AddTabItem;

    move-result-object v0

    goto :goto_0

    .line 331
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;->this$0:Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;->this$0:Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getTabViewRecycler()Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v1

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;->this$0:Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;

    .line 332
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout;->getModel()Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isAddTabButtonShown()Z

    move-result v2

    sub-int v2, p1, v2

    .line 331
    invoke-static {v0, v1, v2}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v0

    :goto_0
    if-lez p1, :cond_1

    add-int/lit8 v1, p1, -0x1

    .line 335
    invoke-virtual {p0, v1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;->getItem(I)Lde/mrapp/android/tabswitcher/model/AbstractItem;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v0, v1}, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;->calculateAndClipStartPosition(Lde/mrapp/android/tabswitcher/model/AbstractItem;Lde/mrapp/android/tabswitcher/model/AbstractItem;)V

    .line 336
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/AbstractTabSwitcherLayout$InitialItemIterator;->backingArray:[Lde/mrapp/android/tabswitcher/model/AbstractItem;

    aput-object v0, v1, p1

    :cond_2
    return-object v0
.end method
