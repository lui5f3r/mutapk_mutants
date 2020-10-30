.class Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingResponseBody;
.super Lokhttp3/ResponseBody;
.source "OfflineCacheInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheWritingResponseBody"
.end annotation


# instance fields
.field private contentLength:J

.field private contentType:Ljava/lang/String;

.field private source:Lokio/Source;

.field final synthetic this$0:Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor;


# direct methods
.method constructor <init>(Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor;Lokio/Source;Ljava/lang/String;J)V
    .locals 0

    .line 262
    iput-object p1, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingResponseBody;->this$0:Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor;

    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 263
    iput-object p2, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingResponseBody;->source:Lokio/Source;

    .line 264
    iput-object p3, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingResponseBody;->contentType:Ljava/lang/String;

    .line 265
    iput-wide p4, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingResponseBody;->contentLength:J

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 273
    iget-wide v0, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingResponseBody;->contentLength:J

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 269
    iget-object v0, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingResponseBody;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    .line 277
    iget-object v0, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CacheWritingResponseBody;->source:Lokio/Source;

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method
