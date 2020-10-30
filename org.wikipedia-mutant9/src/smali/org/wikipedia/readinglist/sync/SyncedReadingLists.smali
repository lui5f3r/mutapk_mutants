.class public Lorg/wikipedia/readinglist/sync/SyncedReadingLists;
.super Ljava/lang/Object;
.source "SyncedReadingLists.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponseBatch;,
        Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;,
        Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntryBatch;,
        Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;,
        Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;
    }
.end annotation


# instance fields
.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private lists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;",
            ">;"
        }
    .end annotation
.end field

.field private next:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;",
            ">;",
            "Ljava/util/List<",
            "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->lists:Ljava/util/List;

    .line 25
    iput-object p2, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getContinueStr()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->next:Ljava/lang/String;

    return-object v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->entries:Ljava/util/List;

    return-object v0
.end method

.method public getLists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->lists:Ljava/util/List;

    return-object v0
.end method
