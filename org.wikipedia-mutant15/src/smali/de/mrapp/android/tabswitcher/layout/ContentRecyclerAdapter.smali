.class public Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;
.super Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;
.source "ContentRecyclerAdapter.java"

# interfaces
.implements Lde/mrapp/android/tabswitcher/TabSwitcherListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter<",
        "Lde/mrapp/android/tabswitcher/Tab;",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/lang/Object;",
        "Lde/mrapp/android/tabswitcher/TabSwitcherListener;"
    }
.end annotation


# static fields
.field private static final SAVED_INSTANCE_STATES_EXTRA:Ljava/lang/String;


# instance fields
.field private final decorator:Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;

.field private savedInstanceStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;

    .line 51
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::SavedInstanceStates"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->SAVED_INSTANCE_STATES_EXTRA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lde/mrapp/android/tabswitcher/TabSwitcher;Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;)V
    .locals 2

    .line 105
    invoke-direct {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;-><init>()V

    .line 106
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tab switcher may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The decorator may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 109
    invoke-virtual {p1, p0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->addListener(Lde/mrapp/android/tabswitcher/TabSwitcherListener;)V

    .line 110
    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->decorator:Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;

    .line 111
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->savedInstanceStates:Landroid/util/SparseArray;

    return-void
.end method

.method private setWasShownParameter(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    if-nez p1, :cond_0

    .line 85
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 88
    :cond_0
    sget-object v0, Lde/mrapp/android/tabswitcher/Tab;->WAS_SHOWN_PARAMETER:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1
.end method


# virtual methods
.method public clearAllSavedStates()V
    .locals 1

    .line 130
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->savedInstanceStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public clearSavedState(Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 2

    .line 122
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tab may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->savedInstanceStates:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final getViewType(Lde/mrapp/android/tabswitcher/Tab;)I
    .locals 2

    .line 176
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {v0, p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->indexOf(Lde/mrapp/android/tabswitcher/Tab;)I

    move-result v0

    .line 177
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->decorator:Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;

    invoke-virtual {v1, p1, v0}, Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;->getViewType(Lde/mrapp/android/tabswitcher/Tab;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getViewType(Ljava/lang/Object;)I
    .locals 0

    .line 43
    check-cast p1, Lde/mrapp/android/tabswitcher/Tab;

    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->getViewType(Lde/mrapp/android/tabswitcher/Tab;)I

    move-result p1

    return p1
.end method

.method public final getViewTypeCount()I
    .locals 1

    .line 171
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->decorator:Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public final onAllTabsRemoved(Lde/mrapp/android/tabswitcher/TabSwitcher;[Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 0

    .line 233
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->areSavedStatesClearedWhenRemovingTabs()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 234
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->clearAllSavedStates()V

    .line 236
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getDecorator()Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;

    move-result-object p1

    .line 238
    instance-of p2, p1, Lde/mrapp/android/tabswitcher/StatefulTabSwitcherDecorator;

    if-eqz p2, :cond_0

    .line 239
    check-cast p1, Lde/mrapp/android/tabswitcher/StatefulTabSwitcherDecorator;

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/StatefulTabSwitcherDecorator;->clearAllStates()V

    :cond_0
    return-void
.end method

.method public final varargs onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lde/mrapp/android/tabswitcher/Tab;I[Ljava/lang/Void;)Landroid/view/View;
    .locals 0

    .line 138
    iget-object p4, p0, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {p4, p3}, Lde/mrapp/android/tabswitcher/TabSwitcher;->indexOf(Lde/mrapp/android/tabswitcher/Tab;)I

    move-result p4

    .line 139
    iget-object p5, p0, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->decorator:Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;

    invoke-virtual {p5, p1, p2, p3, p4}, Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lde/mrapp/android/tabswitcher/Tab;I)Landroid/view/View;

    move-result-object p1

    .line 140
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method public bridge synthetic onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/Object;I[Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    .line 43
    check-cast p3, Lde/mrapp/android/tabswitcher/Tab;

    check-cast p5, [Ljava/lang/Void;

    invoke-virtual/range {p0 .. p5}, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lde/mrapp/android/tabswitcher/Tab;I[Ljava/lang/Void;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onRemoveView(Landroid/view/View;Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 2

    .line 164
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {v0, p2}, Lde/mrapp/android/tabswitcher/TabSwitcher;->indexOf(Lde/mrapp/android/tabswitcher/Tab;)I

    move-result v0

    .line 165
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->decorator:Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;

    invoke-virtual {v1, p1, p2, v0}, Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;->saveInstanceState(Landroid/view/View;Lde/mrapp/android/tabswitcher/Tab;I)Landroid/os/Bundle;

    move-result-object p1

    .line 166
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->savedInstanceStates:Landroid/util/SparseArray;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onRemoveView(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p2, Lde/mrapp/android/tabswitcher/Tab;

    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->onRemoveView(Landroid/view/View;Lde/mrapp/android/tabswitcher/Tab;)V

    return-void
.end method

.method public final onSelectionChanged(Lde/mrapp/android/tabswitcher/TabSwitcher;ILde/mrapp/android/tabswitcher/Tab;)V
    .locals 0

    return-void
.end method

.method public final varargs onShowView(Landroid/content/Context;Landroid/view/View;Lde/mrapp/android/tabswitcher/Tab;Z[Ljava/lang/Void;)V
    .locals 8

    .line 149
    iget-object p5, p0, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {p5, p3}, Lde/mrapp/android/tabswitcher/TabSwitcher;->indexOf(Lde/mrapp/android/tabswitcher/Tab;)I

    move-result v5

    .line 151
    invoke-virtual {p3}, Lde/mrapp/android/tabswitcher/Tab;->getParameters()Landroid/os/Bundle;

    move-result-object p5

    if-eqz p5, :cond_0

    .line 153
    sget-object v0, Lde/mrapp/android/tabswitcher/Tab;->WAS_SHOWN_PARAMETER:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p5, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->savedInstanceStates:Landroid/util/SparseArray;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 157
    invoke-direct {p0, p5}, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->setWasShownParameter(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p5

    invoke-virtual {p3, p5}, Lde/mrapp/android/tabswitcher/Tab;->setParameters(Landroid/os/Bundle;)V

    .line 158
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->decorator:Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;->applyDecorator(Landroid/content/Context;Lde/mrapp/android/tabswitcher/TabSwitcher;Landroid/view/View;Lde/mrapp/android/tabswitcher/Tab;ILandroid/os/Bundle;Z)V

    return-void
.end method

.method public bridge synthetic onShowView(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;Z[Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p3, Lde/mrapp/android/tabswitcher/Tab;

    check-cast p5, [Ljava/lang/Void;

    invoke-virtual/range {p0 .. p5}, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->onShowView(Landroid/content/Context;Landroid/view/View;Lde/mrapp/android/tabswitcher/Tab;Z[Ljava/lang/Void;)V

    return-void
.end method

.method public final onSwitcherHidden(Lde/mrapp/android/tabswitcher/TabSwitcher;)V
    .locals 0

    return-void
.end method

.method public final onSwitcherShown(Lde/mrapp/android/tabswitcher/TabSwitcher;)V
    .locals 0

    return-void
.end method

.method public final onTabAdded(Lde/mrapp/android/tabswitcher/TabSwitcher;ILde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 0

    return-void
.end method

.method public final onTabRemoved(Lde/mrapp/android/tabswitcher/TabSwitcher;ILde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 0

    .line 219
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->areSavedStatesClearedWhenRemovingTabs()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 220
    invoke-virtual {p0, p3}, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->clearSavedState(Lde/mrapp/android/tabswitcher/Tab;)V

    .line 221
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getDecorator()Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;

    move-result-object p1

    .line 223
    instance-of p2, p1, Lde/mrapp/android/tabswitcher/StatefulTabSwitcherDecorator;

    if-eqz p2, :cond_0

    .line 224
    check-cast p1, Lde/mrapp/android/tabswitcher/StatefulTabSwitcherDecorator;

    invoke-virtual {p1, p3}, Lde/mrapp/android/tabswitcher/StatefulTabSwitcherDecorator;->clearState(Lde/mrapp/android/tabswitcher/Tab;)V

    :cond_0
    return-void
.end method

.method public final restoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 188
    sget-object v0, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->SAVED_INSTANCE_STATES_EXTRA:Ljava/lang/String;

    .line 189
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->savedInstanceStates:Landroid/util/SparseArray;

    :cond_0
    return-void
.end method

.method public final saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 182
    sget-object v0, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->SAVED_INSTANCE_STATES_EXTRA:Ljava/lang/String;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->savedInstanceStates:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method
