.class final Lokhttp3/internal/platform/ConscryptPlatform$platformTrustManager$2;
.super Ljava/lang/Object;
.source "ConscryptPlatform.kt"

# interfaces
.implements Lorg/conscrypt/ConscryptHostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/platform/ConscryptPlatform;->platformTrustManager()Ljavax/net/ssl/X509TrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lokhttp3/internal/platform/ConscryptPlatform$platformTrustManager$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/internal/platform/ConscryptPlatform$platformTrustManager$2;

    invoke-direct {v0}, Lokhttp3/internal/platform/ConscryptPlatform$platformTrustManager$2;-><init>()V

    sput-object v0, Lokhttp3/internal/platform/ConscryptPlatform$platformTrustManager$2;->INSTANCE:Lokhttp3/internal/platform/ConscryptPlatform$platformTrustManager$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
