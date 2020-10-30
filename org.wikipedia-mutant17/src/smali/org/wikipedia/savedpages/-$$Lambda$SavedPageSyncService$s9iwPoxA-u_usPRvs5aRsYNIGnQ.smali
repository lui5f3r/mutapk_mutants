.class public final synthetic Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$s9iwPoxA-u_usPRvs5aRsYNIGnQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# static fields
.field public static final synthetic INSTANCE:Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$s9iwPoxA-u_usPRvs5aRsYNIGnQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$s9iwPoxA-u_usPRvs5aRsYNIGnQ;

    invoke-direct {v0}, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$s9iwPoxA-u_usPRvs5aRsYNIGnQ;-><init>()V

    sput-object v0, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$s9iwPoxA-u_usPRvs5aRsYNIGnQ;->INSTANCE:Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$s9iwPoxA-u_usPRvs5aRsYNIGnQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lorg/wikipedia/savedpages/SavedPageSyncService;->lambda$deletePageContents$2()V

    return-void
.end method
