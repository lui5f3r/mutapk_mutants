.class public abstract Lorg/wikipedia/history/SearchActionModeCallback;
.super Ljava/lang/Object;
.source "SearchActionModeCallback.java"

# interfaces
.implements Landroidx/appcompat/view/ActionMode$Callback;


# static fields
.field public static final ACTION_MODE_TAG:Ljava/lang/String; = "searchActionMode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static is(Landroidx/appcompat/view/ActionMode;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 17
    invoke-virtual {p0}, Landroidx/appcompat/view/ActionMode;->getTag()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "searchActionMode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected abstract getParentContext()Landroid/content/Context;
.end method

.method protected abstract getSearchHintString()Ljava/lang/String;
.end method

.method public onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    const-string v0, "searchActionMode"

    .line 22
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/ActionMode;->setTag(Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p0}, Lorg/wikipedia/history/SearchActionModeCallback;->getSearchHintString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 25
    new-instance p2, Lorg/wikipedia/views/SearchActionProvider;

    invoke-virtual {p0}, Lorg/wikipedia/history/SearchActionModeCallback;->getParentContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/wikipedia/history/SearchActionModeCallback;->getSearchHintString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/history/SearchActionModeCallback$1;

    invoke-direct {v2, p0}, Lorg/wikipedia/history/SearchActionModeCallback$1;-><init>(Lorg/wikipedia/history/SearchActionModeCallback;)V

    invoke-direct {p2, v0, v1, v2}, Lorg/wikipedia/views/SearchActionProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/wikipedia/views/SearchActionProvider$Callback;)V

    invoke-static {p1, p2}, Landroidx/core/view/MenuItemCompat;->setActionProvider(Landroid/view/MenuItem;Landroidx/core/view/ActionProvider;)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onPrepareActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected abstract onQueryChange(Ljava/lang/String;)V
.end method
