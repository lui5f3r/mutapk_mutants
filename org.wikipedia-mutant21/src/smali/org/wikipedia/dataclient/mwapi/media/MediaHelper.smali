.class public final Lorg/wikipedia/dataclient/mwapi/media/MediaHelper;
.super Ljava/lang/Object;
.source "MediaHelper.kt"


# static fields
.field private static final COMMONS_DB_NAME:Ljava/lang/String; = "commonswiki"

.field public static final INSTANCE:Lorg/wikipedia/dataclient/mwapi/media/MediaHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/media/MediaHelper;

    invoke-direct {v0}, Lorg/wikipedia/dataclient/mwapi/media/MediaHelper;-><init>()V

    sput-object v0, Lorg/wikipedia/dataclient/mwapi/media/MediaHelper;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/media/MediaHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getImageCaptions(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lorg/wikipedia/dataclient/WikiSite;

    const-string v1, "https://commons.wikimedia.org/"

    invoke-direct {v0, v1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    move-result-object v0

    const-string v1, "commonswiki"

    invoke-interface {v0, p1, v1}, Lorg/wikipedia/dataclient/Service;->getEntitiesByTitle(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 18
    sget-object v0, Lorg/wikipedia/dataclient/mwapi/media/MediaHelper$getImageCaptions$1;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/media/MediaHelper$getImageCaptions$1;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "ServiceFactory.get(WikiS\u2026aptions\n                }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
