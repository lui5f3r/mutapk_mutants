.class Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CachedResponseBody;
.super Lokhttp3/ResponseBody;
.source "OfflineCacheInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CachedResponseBody"
.end annotation


# instance fields
.field private contentType:Ljava/lang/String;

.field private file:Ljava/io/File;

.field final synthetic this$0:Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor;


# direct methods
.method constructor <init>(Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CachedResponseBody;->this$0:Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor;

    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 286
    iput-object p2, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CachedResponseBody;->file:Ljava/io/File;

    .line 287
    iput-object p3, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CachedResponseBody;->contentType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CachedResponseBody;->contentType:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    .line 303
    :try_start_0
    iget-object v0, p0, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor$CachedResponseBody;->file:Ljava/io/File;

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
