.class public final Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;
.super Ljava/lang/Object;
.source "OkHttpConnectionFactory.kt"


# static fields
.field public static final CACHE_CONTROL_FORCE_NETWORK:Lokhttp3/CacheControl;

.field public static final CACHE_CONTROL_MAX_STALE:Lokhttp3/CacheControl;

.field public static final CACHE_CONTROL_NONE:Lokhttp3/CacheControl;

.field private static final CACHE_DIR_NAME:Ljava/lang/String; = "okhttp-cache"

.field public static final INSTANCE:Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;

.field private static final NET_CACHE:Lokhttp3/Cache;

.field private static final NET_CACHE_SIZE:J = 0x4000000L

.field private static final client:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;

    invoke-direct {v0}, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;-><init>()V

    sput-object v0, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->INSTANCE:Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;

    .line 14
    new-instance v1, Lokhttp3/CacheControl$Builder;

    invoke-direct {v1}, Lokhttp3/CacheControl$Builder;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lokhttp3/CacheControl$Builder;->maxAge(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;

    invoke-virtual {v1}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v1

    sput-object v1, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->CACHE_CONTROL_FORCE_NETWORK:Lokhttp3/CacheControl;

    .line 15
    new-instance v1, Lokhttp3/CacheControl$Builder;

    invoke-direct {v1}, Lokhttp3/CacheControl$Builder;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const v3, 0x7fffffff

    invoke-virtual {v1, v3, v2}, Lokhttp3/CacheControl$Builder;->maxStale(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;

    invoke-virtual {v1}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v1

    sput-object v1, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->CACHE_CONTROL_MAX_STALE:Lokhttp3/CacheControl;

    .line 16
    new-instance v1, Lokhttp3/CacheControl$Builder;

    invoke-direct {v1}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v1}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v1

    sput-object v1, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->CACHE_CONTROL_NONE:Lokhttp3/CacheControl;

    .line 20
    new-instance v1, Lokhttp3/Cache;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v3

    const-string v4, "WikipediaApp.getInstance()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "okhttp-cache"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/32 v3, 0x4000000

    invoke-direct {v1, v2, v3, v4}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    sput-object v1, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->NET_CACHE:Lokhttp3/Cache;

    .line 21
    invoke-direct {v0}, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->createClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createClient()Lokhttp3/OkHttpClient;
    .locals 4

    .line 24
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 25
    invoke-static {}, Lorg/wikipedia/dataclient/SharedPreferenceCookieManager;->getInstance()Lorg/wikipedia/dataclient/SharedPreferenceCookieManager;

    move-result-object v1

    const-string v2, "SharedPreferenceCookieManager.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    .line 26
    sget-object v1, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->NET_CACHE:Lokhttp3/Cache;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    .line 27
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 28
    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRetrofitLogLevel()Lokhttp3/logging/HttpLoggingInterceptor$Level;

    move-result-object v2

    const-string v3, "Prefs.getRetrofitLogLevel()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 29
    new-instance v1, Lorg/wikipedia/dataclient/okhttp/UnsuccessfulResponseInterceptor;

    invoke-direct {v1}, Lorg/wikipedia/dataclient/okhttp/UnsuccessfulResponseInterceptor;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 30
    new-instance v1, Lorg/wikipedia/dataclient/okhttp/CacheControlInterceptor;

    invoke-direct {v1}, Lorg/wikipedia/dataclient/okhttp/CacheControlInterceptor;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 31
    new-instance v1, Lorg/wikipedia/dataclient/okhttp/CommonHeaderRequestInterceptor;

    invoke-direct {v1}, Lorg/wikipedia/dataclient/okhttp/CommonHeaderRequestInterceptor;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 32
    new-instance v1, Lorg/wikipedia/dataclient/okhttp/DefaultMaxStaleRequestInterceptor;

    invoke-direct {v1}, Lorg/wikipedia/dataclient/okhttp/DefaultMaxStaleRequestInterceptor;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 33
    new-instance v1, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor;

    invoke-direct {v1}, Lorg/wikipedia/dataclient/okhttp/OfflineCacheInterceptor;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 34
    new-instance v1, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor;

    invoke-direct {v1}, Lorg/wikipedia/dataclient/okhttp/TestStubInterceptor;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 35
    new-instance v1, Lorg/wikipedia/dataclient/okhttp/TitleEncodeInterceptor;

    invoke-direct {v1}, Lorg/wikipedia/dataclient/okhttp/TitleEncodeInterceptor;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 36
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static final getClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 21
    sget-object v0, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->client:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static synthetic getClient$annotations()V
    .locals 0

    return-void
.end method
