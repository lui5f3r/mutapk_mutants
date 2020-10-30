.class public final Lorg/wikipedia/database/contract/PageHistoryContract;
.super Ljava/lang/Object;
.source "PageHistoryContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/database/contract/PageHistoryContract$PageWithImage;,
        Lorg/wikipedia/database/contract/PageHistoryContract$Page;,
        Lorg/wikipedia/database/contract/PageHistoryContract$Col;
    }
.end annotation


# static fields
.field private static final PATH:Ljava/lang/String; = "history"

.field public static final TABLE:Ljava/lang/String; = "history"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
