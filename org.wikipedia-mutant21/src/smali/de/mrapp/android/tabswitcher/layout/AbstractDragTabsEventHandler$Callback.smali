.class public interface abstract Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$Callback;
.super Ljava/lang/Object;
.source "AbstractDragTabsEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCancelFling()V
.end method

.method public abstract onClick(Lde/mrapp/android/tabswitcher/model/AbstractItem;)V
.end method

.method public abstract onDrag(Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;F)Lde/mrapp/android/tabswitcher/layout/AbstractDragTabsEventHandler$DragState;
.end method

.method public abstract onFling(FJ)V
.end method

.method public abstract onPressEnded(Lde/mrapp/android/tabswitcher/model/AbstractItem;)V
.end method

.method public abstract onPressStarted(Lde/mrapp/android/tabswitcher/model/AbstractItem;)V
.end method

.method public abstract onRevertEndOvershoot()V
.end method

.method public abstract onRevertStartOvershoot()V
.end method

.method public abstract onSwipe(Lde/mrapp/android/tabswitcher/model/TabItem;F)V
.end method

.method public abstract onSwipeEnded(Lde/mrapp/android/tabswitcher/model/TabItem;ZF)V
.end method
