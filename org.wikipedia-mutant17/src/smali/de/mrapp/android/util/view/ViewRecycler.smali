.class public Lde/mrapp/android/util/view/ViewRecycler;
.super Lde/mrapp/android/util/view/AbstractViewRecycler;
.source "ViewRecycler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ItemType:",
        "Ljava/lang/Object;",
        "ParamType:",
        "Ljava/lang/Object;",
        ">",
        "Lde/mrapp/android/util/view/AbstractViewRecycler<",
        "TItemType;TParamType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lde/mrapp/android/util/view/AbstractViewRecycler;-><init>(Landroid/view/LayoutInflater;)V

    return-void
.end method


# virtual methods
.method public final varargs inflate(Ljava/lang/Object;Landroid/view/ViewGroup;Z[Ljava/lang/Object;)Landroidx/core/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItemType;",
            "Landroid/view/ViewGroup;",
            "Z[TParamType;)",
            "Landroidx/core/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 117
    const-class v0, Lde/mrapp/android/util/view/ViewRecycler;

    sget-object v1, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v2, "The array may not be null"

    invoke-virtual {v1, p4, v2}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    sget-object v1, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v2

    const-class v3, Ljava/lang/IllegalStateException;

    const-string v4, "No adapter has been set"

    invoke-virtual {v1, v2, v4, v3}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 121
    invoke-virtual {p0, p1}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 125
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;->getViewType(Ljava/lang/Object;)I

    move-result v3

    if-eqz p3, :cond_0

    .line 128
    invoke-virtual {p0, v3}, Lde/mrapp/android/util/view/AbstractViewRecycler;->pollUnusedView(I)Landroid/view/View;

    move-result-object v1

    :cond_0
    const-string p3, " using view type "

    if-nez v1, :cond_1

    .line 132
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v4

    .line 133
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    move-object v6, p2

    move-object v7, p1

    move v8, v3

    move-object v9, p4

    invoke-virtual/range {v4 .. v9}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/Object;I[Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    const/4 v2, 0x1

    .line 135
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inflated view to visualize item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, v0, p3}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v1, p2

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reusing view to visualize item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 142
    :goto_0
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getActiveViews()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_2
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v3

    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    move-object v6, p1

    move v7, v2

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;->onShowView(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;Z[Ljava/lang/Object;)V

    .line 146
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Updated view of item "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lde/mrapp/android/util/logging/Logger;->logDebug(Ljava/lang/Class;Ljava/lang/String;)V

    .line 147
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final varargs inflate(Ljava/lang/Object;Landroid/view/ViewGroup;[Ljava/lang/Object;)Landroidx/core/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItemType;",
            "Landroid/view/ViewGroup;",
            "[TParamType;)",
            "Landroidx/core/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/4 v0, 0x1

    .line 88
    invoke-virtual {p0, p1, p2, v0, p3}, Lde/mrapp/android/util/view/ViewRecycler;->inflate(Ljava/lang/Object;Landroid/view/ViewGroup;Z[Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final varargs inflate(Ljava/lang/Object;Z[Ljava/lang/Object;)Landroidx/core/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItemType;Z[TParamType;)",
            "Landroidx/core/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0, p1, v0, p2, p3}, Lde/mrapp/android/util/view/ViewRecycler;->inflate(Ljava/lang/Object;Landroid/view/ViewGroup;Z[Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItemType;)V"
        }
    .end annotation

    .line 160
    const-class v0, Lde/mrapp/android/util/view/ViewRecycler;

    sget-object v1, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v2, "The item may not be null"

    invoke-virtual {v1, p1, v2}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    sget-object v1, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v2

    const-class v3, Ljava/lang/IllegalStateException;

    const-string v4, "No adapter has been set"

    invoke-virtual {v1, v2, v4, v3}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 163
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getActiveViews()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;->onRemoveView(Landroid/view/View;Ljava/lang/Object;)V

    .line 167
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;->getViewType(Ljava/lang/Object;)I

    move-result v2

    .line 168
    invoke-virtual {p0, v1, v2}, Lde/mrapp/android/util/view/AbstractViewRecycler;->addUnusedView(Landroid/view/View;I)V

    .line 169
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed view of item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Did not remove view of item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". View is not inflated"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lde/mrapp/android/util/logging/Logger;->logDebug(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final removeAll()V
    .locals 4

    .line 178
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v1

    const-class v2, Ljava/lang/IllegalStateException;

    const-string v3, "No adapter has been set"

    invoke-virtual {v0, v1, v3, v2}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 181
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getActiveViews()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 182
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 183
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 184
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;->onRemoveView(Landroid/view/View;Ljava/lang/Object;)V

    .line 185
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;->getViewType(Ljava/lang/Object;)I

    move-result v2

    .line 186
    invoke-virtual {p0, v1, v2}, Lde/mrapp/android/util/view/AbstractViewRecycler;->addUnusedView(Landroid/view/View;I)V

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getActiveViews()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 190
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    const-class v1, Lde/mrapp/android/util/view/ViewRecycler;

    const-string v2, "Removed all views"

    invoke-virtual {v0, v1, v2}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
