.class public interface abstract Lorg/wikipedia/feed/view/ListCardItemView$Callback;
.super Ljava/lang/Object;
.source "ListCardItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/view/ListCardItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onAddPageToList(Lorg/wikipedia/history/HistoryEntry;Z)V
.end method

.method public abstract onMovePageToList(JLorg/wikipedia/history/HistoryEntry;)V
.end method

.method public abstract onRemovePageFromList(Lorg/wikipedia/history/HistoryEntry;)V
.end method

.method public abstract onSelectPage(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V
.end method

.method public abstract onSharePage(Lorg/wikipedia/history/HistoryEntry;)V
.end method
