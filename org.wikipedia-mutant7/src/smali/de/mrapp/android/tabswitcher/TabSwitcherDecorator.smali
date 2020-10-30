.class public abstract Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;
.super Lde/mrapp/android/util/view/AbstractViewHolderAdapter;
.source "TabSwitcherDecorator.java"


# static fields
.field private static final VIEW_HIERARCHY_STATE_EXTRA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;

    .line 41
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::ViewHierarchyState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;->VIEW_HIERARCHY_STATE_EXTRA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lde/mrapp/android/util/view/AbstractViewHolderAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyDecorator(Landroid/content/Context;Lde/mrapp/android/tabswitcher/TabSwitcher;Landroid/view/View;Lde/mrapp/android/tabswitcher/Tab;ILandroid/os/Bundle;Z)V
    .locals 14

    move-object v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p6

    .line 234
    invoke-virtual {p0, v9}, Lde/mrapp/android/util/view/AbstractViewHolderAdapter;->setCurrentParentView(Landroid/view/View;)V

    move-object/from16 v11, p4

    move/from16 v12, p5

    .line 235
    invoke-virtual {p0, v11, v12}, Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;->getViewType(Lde/mrapp/android/tabswitcher/Tab;I)I

    move-result v13

    if-eqz v10, :cond_0

    .line 238
    sget-object v0, Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;->VIEW_HIERARCHY_STATE_EXTRA:Ljava/lang/String;

    .line 239
    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v9, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    if-nez p7, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move v6, v13

    move-object/from16 v7, p6

    .line 247
    invoke-virtual/range {v0 .. v7}, Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;->onRecycleView(Landroid/content/Context;Lde/mrapp/android/tabswitcher/TabSwitcher;Landroid/view/View;Lde/mrapp/android/tabswitcher/Tab;IILandroid/os/Bundle;)V

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move v6, v13

    move-object/from16 v7, p6

    .line 250
    invoke-virtual/range {v0 .. v7}, Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;->onShowTab(Landroid/content/Context;Lde/mrapp/android/tabswitcher/TabSwitcher;Landroid/view/View;Lde/mrapp/android/tabswitcher/Tab;IILandroid/os/Bundle;)V

    return-void
.end method

.method public getViewType(Lde/mrapp/android/tabswitcher/Tab;I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lde/mrapp/android/tabswitcher/Tab;I)Landroid/view/View;
    .locals 0

    .line 200
    invoke-virtual {p0, p3, p4}, Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;->getViewType(Lde/mrapp/android/tabswitcher/Tab;I)I

    move-result p3

    .line 201
    invoke-virtual {p0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public abstract onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;
.end method

.method public onRecycleView(Landroid/content/Context;Lde/mrapp/android/tabswitcher/TabSwitcher;Landroid/view/View;Lde/mrapp/android/tabswitcher/Tab;IILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/view/View;Lde/mrapp/android/tabswitcher/Tab;IILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public abstract onShowTab(Landroid/content/Context;Lde/mrapp/android/tabswitcher/TabSwitcher;Landroid/view/View;Lde/mrapp/android/tabswitcher/Tab;IILandroid/os/Bundle;)V
.end method

.method public final saveInstanceState(Landroid/view/View;Lde/mrapp/android/tabswitcher/Tab;I)Landroid/os/Bundle;
    .locals 7

    .line 273
    invoke-virtual {p0, p1}, Lde/mrapp/android/util/view/AbstractViewHolderAdapter;->setCurrentParentView(Landroid/view/View;)V

    .line 274
    invoke-virtual {p0, p2, p3}, Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;->getViewType(Lde/mrapp/android/tabswitcher/Tab;I)I

    move-result v4

    .line 275
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 276
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 277
    invoke-virtual {p1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 278
    sget-object v1, Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;->VIEW_HIERARCHY_STATE_EXTRA:Ljava/lang/String;

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v6

    .line 279
    invoke-virtual/range {v0 .. v5}, Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;->onSaveInstanceState(Landroid/view/View;Lde/mrapp/android/tabswitcher/Tab;IILandroid/os/Bundle;)V

    return-object v6
.end method
