.class public final Lorg/wikipedia/json/GsonUtil;
.super Ljava/lang/Object;
.source "GsonUtil.java"


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MMM dd, yyyy HH:mm:ss"

.field private static final DEFAULT_GSON:Lcom/google/gson/Gson;

.field private static final DEFAULT_GSON_BUILDER:Lcom/google/gson/GsonBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-string v1, "MMM dd, yyyy HH:mm:ss"

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setDateFormat(Ljava/lang/String;)Lcom/google/gson/GsonBuilder;

    const-class v1, Landroid/net/Uri;

    new-instance v2, Lorg/wikipedia/json/UriTypeAdapter;

    invoke-direct {v2}, Lorg/wikipedia/json/UriTypeAdapter;-><init>()V

    .line 19
    invoke-virtual {v2}, Lcom/google/gson/TypeAdapter;->nullSafe()Lcom/google/gson/TypeAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    const-class v1, Lorg/wikipedia/page/Namespace;

    new-instance v2, Lorg/wikipedia/json/NamespaceTypeAdapter;

    invoke-direct {v2}, Lorg/wikipedia/json/NamespaceTypeAdapter;-><init>()V

    .line 20
    invoke-virtual {v2}, Lcom/google/gson/TypeAdapter;->nullSafe()Lcom/google/gson/TypeAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    const-class v1, Lorg/wikipedia/dataclient/WikiSite;

    new-instance v2, Lorg/wikipedia/json/WikiSiteTypeAdapter;

    invoke-direct {v2}, Lorg/wikipedia/json/WikiSiteTypeAdapter;-><init>()V

    .line 21
    invoke-virtual {v2}, Lcom/google/gson/TypeAdapter;->nullSafe()Lcom/google/gson/TypeAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    const-class v1, Lorg/wikipedia/dataclient/SharedPreferenceCookieManager;

    new-instance v2, Lorg/wikipedia/json/CookieManagerTypeAdapter;

    invoke-direct {v2}, Lorg/wikipedia/json/CookieManagerTypeAdapter;-><init>()V

    .line 22
    invoke-virtual {v2}, Lcom/google/gson/TypeAdapter;->nullSafe()Lcom/google/gson/TypeAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    new-instance v1, Lorg/wikipedia/json/RequiredFieldsCheckOnReadTypeAdapterFactory;

    invoke-direct {v1}, Lorg/wikipedia/json/RequiredFieldsCheckOnReadTypeAdapterFactory;-><init>()V

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    new-instance v1, Lorg/wikipedia/json/PostProcessingTypeAdapter;

    invoke-direct {v1}, Lorg/wikipedia/json/PostProcessingTypeAdapter;-><init>()V

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    sput-object v0, Lorg/wikipedia/json/GsonUtil;->DEFAULT_GSON_BUILDER:Lcom/google/gson/GsonBuilder;

    .line 26
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lorg/wikipedia/json/GsonUtil;->DEFAULT_GSON:Lcom/google/gson/Gson;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultGson()Lcom/google/gson/Gson;
    .locals 1

    .line 29
    sget-object v0, Lorg/wikipedia/json/GsonUtil;->DEFAULT_GSON:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public static getDefaultGsonBuilder()Lcom/google/gson/GsonBuilder;
    .locals 1

    .line 34
    sget-object v0, Lorg/wikipedia/json/GsonUtil;->DEFAULT_GSON_BUILDER:Lcom/google/gson/GsonBuilder;

    return-object v0
.end method
