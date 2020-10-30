.class public Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponseBatch;
.super Ljava/lang/Object;
.source "SyncedReadingLists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/sync/SyncedReadingLists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoteIdResponseBatch"
.end annotation


# instance fields
.field private batch:[Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;
    .annotation runtime Lorg/wikipedia/json/annotations/Required;
    .end annotation
.end field

.field final synthetic this$0:Lorg/wikipedia/readinglist/sync/SyncedReadingLists;


# direct methods
.method public constructor <init>(Lorg/wikipedia/readinglist/sync/SyncedReadingLists;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponseBatch;->this$0:Lorg/wikipedia/readinglist/sync/SyncedReadingLists;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public batch()[Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponseBatch;->batch:[Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;

    return-object v0
.end method
