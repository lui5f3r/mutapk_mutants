.class public interface abstract Lorg/wikipedia/readinglist/ReadingListItemView$Callback;
.super Ljava/lang/Object;
.source "ReadingListItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/ReadingListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onClick(Lorg/wikipedia/readinglist/database/ReadingList;)V
.end method

.method public abstract onDelete(Lorg/wikipedia/readinglist/database/ReadingList;)V
.end method

.method public abstract onRemoveAllOffline(Lorg/wikipedia/readinglist/database/ReadingList;)V
.end method

.method public abstract onRename(Lorg/wikipedia/readinglist/database/ReadingList;)V
.end method

.method public abstract onSaveAllOffline(Lorg/wikipedia/readinglist/database/ReadingList;)V
.end method
