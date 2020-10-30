.class Lorg/wikipedia/savedpages/SavedPageSyncService$1;
.super Ljava/lang/Object;
.source "SavedPageSyncService.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/savedpages/SavedPageSyncService;->reqSaveUrl(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/savedpages/SavedPageSyncService;


# direct methods
.method constructor <init>(Lorg/wikipedia/savedpages/SavedPageSyncService;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$1;->this$0:Lorg/wikipedia/savedpages/SavedPageSyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 348
    new-instance v0, Lokio/Timeout;

    invoke-direct {v0}, Lokio/Timeout;-><init>()V

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 0

    return-void
.end method
