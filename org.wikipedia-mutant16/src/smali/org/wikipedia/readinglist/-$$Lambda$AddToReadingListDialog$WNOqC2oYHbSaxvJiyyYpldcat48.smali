.class public final synthetic Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$WNOqC2oYHbSaxvJiyyYpldcat48;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic INSTANCE:Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$WNOqC2oYHbSaxvJiyyYpldcat48;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$WNOqC2oYHbSaxvJiyyYpldcat48;

    invoke-direct {v0}, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$WNOqC2oYHbSaxvJiyyYpldcat48;-><init>()V

    sput-object v0, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$WNOqC2oYHbSaxvJiyyYpldcat48;->INSTANCE:Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$WNOqC2oYHbSaxvJiyyYpldcat48;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->lambda$updateLists$1()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
