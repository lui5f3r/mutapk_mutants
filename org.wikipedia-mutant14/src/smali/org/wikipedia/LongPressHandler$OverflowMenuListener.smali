.class public interface abstract Lorg/wikipedia/LongPressHandler$OverflowMenuListener;
.super Ljava/lang/Object;
.source "LongPressHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/LongPressHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OverflowMenuListener"
.end annotation


# virtual methods
.method public abstract onAddToList(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)V
.end method

.method public abstract onCopyLink(Lorg/wikipedia/page/PageTitle;)V
.end method

.method public abstract onOpenInNewTab(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V
.end method

.method public abstract onOpenLink(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V
.end method

.method public abstract onShareLink(Lorg/wikipedia/page/PageTitle;)V
.end method
