.class public Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;
.super Ljava/lang/Object;
.source "SyncedReadingLists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/sync/SyncedReadingLists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoteIdResponse"
.end annotation


# instance fields
.field private id:J
    .annotation runtime Lorg/wikipedia/json/annotations/Required;
    .end annotation
.end field

.field final synthetic this$0:Lorg/wikipedia/readinglist/sync/SyncedReadingLists;


# direct methods
.method public constructor <init>(Lorg/wikipedia/readinglist/sync/SyncedReadingLists;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;->this$0:Lorg/wikipedia/readinglist/sync/SyncedReadingLists;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public id()J
    .locals 2

    .line 141
    iget-wide v0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;->id:J

    return-wide v0
.end method
