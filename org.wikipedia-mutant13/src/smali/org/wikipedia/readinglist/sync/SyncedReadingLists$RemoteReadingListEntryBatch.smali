.class public Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntryBatch;
.super Ljava/lang/Object;
.source "SyncedReadingLists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/sync/SyncedReadingLists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteReadingListEntryBatch"
.end annotation


# instance fields
.field private batch:[Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;",
            ">;)V"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;

    .line 133
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;

    iput-object p1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntryBatch;->batch:[Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;

    return-void
.end method
