.class public Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;
.super Ljava/lang/Object;
.source "ReadingListSyncEvent.java"


# instance fields
.field private showMessage:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean p1, p0, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;->showMessage:Z

    return-void
.end method


# virtual methods
.method public showMessage()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;->showMessage:Z

    return v0
.end method
