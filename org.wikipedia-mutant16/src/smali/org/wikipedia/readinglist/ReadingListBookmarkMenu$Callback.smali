.class public interface abstract Lorg/wikipedia/readinglist/ReadingListBookmarkMenu$Callback;
.super Ljava/lang/Object;
.source "ReadingListBookmarkMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onAddRequest(Z)V
.end method

.method public abstract onDeleted(Lorg/wikipedia/readinglist/database/ReadingListPage;)V
.end method

.method public abstract onMoveRequest(Lorg/wikipedia/readinglist/database/ReadingListPage;)V
.end method

.method public abstract onShare()V
.end method
