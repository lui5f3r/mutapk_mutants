.class public abstract Lde/mrapp/android/tabswitcher/StatefulTabSwitcherDecorator;
.super Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;
.source "StatefulTabSwitcherDecorator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateType:",
        "Ljava/lang/Object;",
        ">",
        "Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;"
    }
.end annotation


# instance fields
.field private states:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/SoftReference<",
            "TStateType;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearAllStates()V
    .locals 2

    .line 247
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/StatefulTabSwitcherDecorator;->states:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 248
    :goto_0
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/StatefulTabSwitcherDecorator;->states:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 249
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/StatefulTabSwitcherDecorator;->states:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 250
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {p0, v1}, Lde/mrapp/android/tabswitcher/StatefulTabSwitcherDecorator;->onClearState(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_1
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/StatefulTabSwitcherDecorator;->states:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 258
    iput-object v0, p0, Lde/mrapp/android/tabswitcher/StatefulTabSwitcherDecorator;->states:Landroid/util/SparseArray;

    :cond_2
    return-void
.end method

.method public final clearState(Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 2

    .line 222
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tab may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/StatefulTabSwitcherDecorator;->states:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0, v0}, Lde/mrapp/android/tabswitcher/StatefulTabSwitcherDecorator;->onClearState(Ljava/lang/Object;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/StatefulTabSwitcherDecorator;->states:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 236
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/StatefulTabSwitcherDecorator;->states:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 237
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/StatefulTabSwitcherDecorator;->states:Landroid/util/SparseArray;

    :cond_1
    return-void
.end method

.method public final getState(Lde/mrapp/android/tabswitcher/Tab;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/tabswitcher/Tab;",
            ")TStateType;"
        }
    .end annotation

    .line 201
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tab may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/StatefulTabSwitcherDecorator;->states:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_0

    .line 207
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onClearState(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TStateType;)V"
        }
    .end annotation

    return-void
.end method

.method protected abstract onCreateState(Landroid/content/Context;Lde/mrapp/android/tabswitcher/TabSwitcher;Landroid/view/View;Lde/mrapp/android/tabswitcher/Tab;IILandroid/os/Bundle;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lde/mrapp/android/tabswitcher/TabSwitcher;",
            "Landroid/view/View;",
            "Lde/mrapp/android/tabswitcher/Tab;",
            "II",
            "Landroid/os/Bundle;",
            ")TStateType;"
        }
    .end annotation
.end method

.method public final onSaveInstanceState(Landroid/view/View;Lde/mrapp/android/tabswitcher/Tab;IILandroid/os/Bundle;)V
    .locals 7

    .line 289
    invoke-virtual {p0, p2}, Lde/mrapp/android/tabswitcher/StatefulTabSwitcherDecorator;->getState(Lde/mrapp/android/tabswitcher/Tab;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 290
    invoke-virtual/range {v0 .. v6}, Lde/mrapp/android/tabswitcher/StatefulTabSwitcherDecorator;->onSaveInstanceState(Landroid/view/View;Lde/mrapp/android/tabswitcher/Tab;IILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/view/View;Lde/mrapp/android/tabswitcher/Tab;IILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lde/mrapp/android/tabswitcher/Tab;",
            "IITStateType;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public final onShowTab(Landroid/content/Context;Lde/mrapp/android/tabswitcher/TabSwitcher;Landroid/view/View;Lde/mrapp/android/tabswitcher/Tab;IILandroid/os/Bundle;)V
    .locals 10

    move-object v9, p0

    .line 267
    iget-object v0, v9, Lde/mrapp/android/tabswitcher/StatefulTabSwitcherDecorator;->states:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v9, Lde/mrapp/android/tabswitcher/StatefulTabSwitcherDecorator;->states:Landroid/util/SparseArray;

    :cond_0
    move-object v4, p4

    .line 271
    invoke-virtual {p0, p4}, Lde/mrapp/android/tabswitcher/StatefulTabSwitcherDecorator;->getState(Lde/mrapp/android/tabswitcher/Tab;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 274
    invoke-virtual/range {p0 .. p7}, Lde/mrapp/android/tabswitcher/StatefulTabSwitcherDecorator;->onCreateState(Landroid/content/Context;Lde/mrapp/android/tabswitcher/TabSwitcher;Landroid/view/View;Lde/mrapp/android/tabswitcher/Tab;IILandroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v1, v9, Lde/mrapp/android/tabswitcher/StatefulTabSwitcherDecorator;->states:Landroid/util/SparseArray;

    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v2

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    move-object v7, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    .line 282
    invoke-virtual/range {v0 .. v8}, Lde/mrapp/android/tabswitcher/StatefulTabSwitcherDecorator;->onShowTab(Landroid/content/Context;Lde/mrapp/android/tabswitcher/TabSwitcher;Landroid/view/View;Lde/mrapp/android/tabswitcher/Tab;IILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected abstract onShowTab(Landroid/content/Context;Lde/mrapp/android/tabswitcher/TabSwitcher;Landroid/view/View;Lde/mrapp/android/tabswitcher/Tab;IILjava/lang/Object;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lde/mrapp/android/tabswitcher/TabSwitcher;",
            "Landroid/view/View;",
            "Lde/mrapp/android/tabswitcher/Tab;",
            "IITStateType;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method
