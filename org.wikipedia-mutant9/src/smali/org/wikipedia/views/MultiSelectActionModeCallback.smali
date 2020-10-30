.class public abstract Lorg/wikipedia/views/MultiSelectActionModeCallback;
.super Ljava/lang/Object;
.source "MultiSelectActionModeCallback.java"

# interfaces
.implements Landroidx/appcompat/view/ActionMode$Callback;


# static fields
.field private static final ACTION_MODE_TAG:Ljava/lang/String; = "multiSelectActionMode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static is(Landroidx/appcompat/view/ActionMode;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0}, Landroidx/appcompat/view/ActionMode;->getTag()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "multiSelectActionMode"

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
.method public onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    .line 29
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const p2, 0x7f090221

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 31
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/views/MultiSelectActionModeCallback;->onDeleteSelected()V

    const/4 p1, 0x1

    return p1
.end method

.method public onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const-string p2, "multiSelectActionMode"

    .line 20
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/ActionMode;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected abstract onDeleteSelected()V
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
