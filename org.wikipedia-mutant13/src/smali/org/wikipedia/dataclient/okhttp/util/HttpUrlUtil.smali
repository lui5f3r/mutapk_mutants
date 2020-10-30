.class public final Lorg/wikipedia/dataclient/okhttp/util/HttpUrlUtil;
.super Ljava/lang/Object;
.source "HttpUrlUtil.java"


# static fields
.field private static final RESTBASE_SEGMENT_IDENTIFIERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "rest_v1"

    const-string v1, "v1"

    .line 12
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/wikipedia/dataclient/okhttp/util/HttpUrlUtil;->RESTBASE_SEGMENT_IDENTIFIERS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMobileView(Lokhttp3/HttpUrl;)Z
    .locals 1

    const-string v0, "action"

    .line 19
    invoke-virtual {p0, v0}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "mobileview"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isRestBase(Lokhttp3/HttpUrl;)Z
    .locals 1

    .line 15
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lorg/wikipedia/dataclient/okhttp/util/HttpUrlUtil;->RESTBASE_SEGMENT_IDENTIFIERS:Ljava/util/List;

    invoke-static {p0, v0}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
