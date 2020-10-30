.class public final Lshark/SharkLog;
.super Ljava/lang/Object;
.source "SharkLog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/SharkLog$Logger;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lshark/SharkLog;

.field private static volatile logger:Lshark/SharkLog$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lshark/SharkLog;

    invoke-direct {v0}, Lshark/SharkLog;-><init>()V

    sput-object v0, Lshark/SharkLog;->INSTANCE:Lshark/SharkLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLogger()Lshark/SharkLog$Logger;
    .locals 1

    .line 24
    sget-object v0, Lshark/SharkLog;->logger:Lshark/SharkLog$Logger;

    return-object v0
.end method
