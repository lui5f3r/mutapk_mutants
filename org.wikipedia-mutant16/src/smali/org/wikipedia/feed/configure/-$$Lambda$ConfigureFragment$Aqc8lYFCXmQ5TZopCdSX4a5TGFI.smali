.class public final synthetic Lorg/wikipedia/feed/configure/-$$Lambda$ConfigureFragment$Aqc8lYFCXmQ5TZopCdSX4a5TGFI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lorg/wikipedia/feed/configure/-$$Lambda$ConfigureFragment$Aqc8lYFCXmQ5TZopCdSX4a5TGFI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/feed/configure/-$$Lambda$ConfigureFragment$Aqc8lYFCXmQ5TZopCdSX4a5TGFI;

    invoke-direct {v0}, Lorg/wikipedia/feed/configure/-$$Lambda$ConfigureFragment$Aqc8lYFCXmQ5TZopCdSX4a5TGFI;-><init>()V

    sput-object v0, Lorg/wikipedia/feed/configure/-$$Lambda$ConfigureFragment$Aqc8lYFCXmQ5TZopCdSX4a5TGFI;->INSTANCE:Lorg/wikipedia/feed/configure/-$$Lambda$ConfigureFragment$Aqc8lYFCXmQ5TZopCdSX4a5TGFI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/wikipedia/feed/FeedContentType;

    check-cast p2, Lorg/wikipedia/feed/FeedContentType;

    invoke-static {p1, p2}, Lorg/wikipedia/feed/configure/ConfigureFragment;->lambda$prepareContentTypeList$1(Lorg/wikipedia/feed/FeedContentType;Lorg/wikipedia/feed/FeedContentType;)I

    move-result p1

    return p1
.end method
