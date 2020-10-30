.class Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;
.super Ljava/lang/Object;
.source "OfflineCacheInterceptor.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheWritingSource"
.end annotation


# instance fields
.field private cacheRequestClosed:Z

.field private cacheSink:Lokio/BufferedSink;

.field private failed:Z

.field private obj:Lorg/wikipedia/offline/OfflineObject;

.field private source:Lokio/BufferedSource;

.field final synthetic this$0:Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor;

.field private title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor;Lokio/BufferedSource;Lokio/BufferedSink;Lorg/wikipedia/offline/OfflineObject;Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->this$0:Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p2, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->source:Lokio/BufferedSource;

    .line 202
    iput-object p3, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->cacheSink:Lokio/BufferedSink;

    .line 203
    iput-object p4, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->obj:Lorg/wikipedia/offline/OfflineObject;

    .line 204
    iput-object p5, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    iget-boolean v0, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->cacheRequestClosed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->cacheRequestClosed:Z

    .line 250
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/Source;->close()V

    .line 251
    iget-boolean v0, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->failed:Z

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->obj:Lorg/wikipedia/offline/OfflineObject;

    invoke-static {v0}, Lorg/wikipedia/offline/OfflineObjectDbHelper;->deleteFilesForObject(Lorg/wikipedia/offline/OfflineObject;)V

    :cond_1
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 211
    :try_start_0
    iget-object v1, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->source:Lokio/BufferedSource;

    invoke-interface {v1, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_1

    .line 222
    iget-boolean p1, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->cacheRequestClosed:Z

    if-nez p1, :cond_0

    .line 223
    iput-boolean v0, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->cacheRequestClosed:Z

    .line 225
    iget-object p1, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->cacheSink:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/Sink;->close()V

    .line 227
    iget-boolean p1, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->failed:Z

    if-nez p1, :cond_0

    .line 229
    invoke-static {}, Lorg/wikipedia/offline/OfflineObjectDbHelper;->instance()Lorg/wikipedia/offline/OfflineObjectDbHelper;

    move-result-object p1

    iget-object p2, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->obj:Lorg/wikipedia/offline/OfflineObject;

    invoke-virtual {p2}, Lorg/wikipedia/offline/OfflineObject;->getUrl()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->obj:Lorg/wikipedia/offline/OfflineObject;

    invoke-virtual {p3}, Lorg/wikipedia/offline/OfflineObject;->getLang()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->obj:Lorg/wikipedia/offline/OfflineObject;

    invoke-virtual {v0}, Lorg/wikipedia/offline/OfflineObject;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->title:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0, v3}, Lorg/wikipedia/offline/OfflineObjectDbHelper;->addObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-wide v1

    .line 235
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->cacheSink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->getBuffer()Lokio/Buffer;

    move-result-object v3

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 236
    iget-object p1, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->cacheSink:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    return-wide p2

    :catch_0
    move-exception p1

    .line 213
    iput-boolean v0, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->failed:Z

    .line 214
    iget-boolean p2, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->cacheRequestClosed:Z

    if-nez p2, :cond_2

    .line 215
    iput-boolean v0, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->cacheRequestClosed:Z

    .line 218
    :cond_2
    throw p1
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    const/4 v0, 0x1

    .line 241
    iput-boolean v0, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->failed:Z

    .line 242
    iget-object v0, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
