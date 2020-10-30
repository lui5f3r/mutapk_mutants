.class public abstract Lde/mrapp/android/tabswitcher/gesture/AbstractDragGestureEventHandler;
.super Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;
.source "AbstractDragGestureEventHandler.java"


# instance fields
.field private final touchableArea:Landroid/graphics/RectF;


# virtual methods
.method public final getTouchableArea()Landroid/graphics/RectF;
    .locals 1

    .line 61
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/AbstractDragGestureEventHandler;->touchableArea:Landroid/graphics/RectF;

    return-object v0
.end method
